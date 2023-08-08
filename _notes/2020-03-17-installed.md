---
layout: note
title: "Installed ROS Lunar on macOS Mojave! But..."
date: 2020-03-17 00:00:00 -0800
tags: ["#devnote"]
---

### Motivation

I've been playing with [Comzo](http://cozmosdk.anki.com/docs/) lately and tried to [integrate its sdk with ROS](https://github.com/mjyc/ros_cozmo). Initially, I used a Ubuntu desktop for running ROS but I wanted to use my Macbook Pro laptop instead so I tried installing ROS on macOS. I found the following instructions:

- http://wiki.ros.org/melodic/Installation/macOS/Homebrew/Source
- https://github.com/mikepurvis/ros-install-osx

and the first one seems like an official one, so I tried it. There was a big yellow warning

> This is a work in progress! At present, the instructions cover only the > installation of ROS-Comm (Bare Bones) variant and tested on the following > configuration:
>
>     - macOS Mojave + native (Apple) Python 2.7.10 + XCode 11.2.1

but my setup met the described requirement and I only needed ROS-Comm (Bare Bones) packages so just went ahead with it.

### Initial Installation

First, I ran all commands in [Setup](http://wiki.ros.org/melodic/Installation/macOS/Homebrew/Source#Setup) section they went through smoothly. I felt great, so additionally ran ominous `brew upgrade` since it's been a while I have done that.

In [Installation](http://wiki.ros.org/melodic/Installation/macOS/Homebrew/Source#melodic.2FInstallation.2FSource.Installation) section, I chose ROS-Comm option in [2.1](http://wiki.ros.org/melodic/Installation/macOS/Homebrew/Source#melodic.2FInstallation.2FSource.Create_a_catkin_Workspace) as I planned earlier. Everything went through until running `catkin_make_isolated` in 2.5.2 Building the catkin Workspace subsubsection. It outputted:
```
CMake Error at test/CMakeLists.txt:108 (set_target_properties):
  set_target_properties Can not find target to add properties to: test_socket
```
Pfft! who needs test? I added `-DCATKIN_ENABLE_TESTING=0` flag and ran the below install command again:
```
./src/catkin/bin/catkin_make_isolated --install -DCMAKE_BUILD_TYPE=Release -DCMAKE_MACOSX_RPATH=ON -DCMAKE_INSTALL_RPATH=$HOME/ros_catkin_ws/install_isolated/lib -DCATKIN_ENABLE_TESTING=0
```
then it outputted:
```
...
[ 81%] Building CXX object CMakeFiles/roscpp.dir/src/libros/transport_subscriber_link.cp
p.o
/Users/mjyc/ros_catkin_ws/src/ros_comm/roscpp/src/libros/transport/transport_udp.cpp:68:
18: error:
      expected '('
, server_address_{}
                 ^
...
/Users/mjyc/ros_catkin_ws/src/ros_comm/roscpp/src/libros/transport/transport_udp.cpp:69:
1: error:
      expected unqualified-id
, local_address_{}
^
3 warnings and 2 errors generated.
make[2]: *** [CMakeFiles/roscpp.dir/src/libros/transport/transport_udp.cpp.o] Error 1
make[2]: *** Waiting for unfinished jobs....
...
```
This output didn't look too good. I google searched the error messages and it sounded like I was trying to compile src code that is not compatible the C++ compiler I have on my mac. Arr... I didn't want to up/downgrading my system/brew libraries, so I searched for a different solution on internet but didn't like them at all. Then I thought about giving a shot at installing an older version of ROS and see if that works so I decided to [install ROS Lunar](http://wiki.ros.org/lunar/Installation). I ran this command to download ROS lunar packages
```
rosinstall_generator ros_comm --rosdistro lunar --deps --tar > lunar-ros_comm.rosinstall
```
and ran the same `catkin_make_isolated` command above to start building. It now complained about missing `boost_signals`:
```
CMake Error at /usr/local/lib/cmake/Boost-1.72.0/BoostConfig.cmake:119 (find_package):
  Could not find a package configuration file provided by "boost_signals"
  (requested version 1.72.0) with any of the following names:

    boost_signalsConfig.cmake
    boost_signals-config.cmake

  Add the installation prefix of "boost_signals" to CMAKE_PREFIX_PATH or set
  "boost_signals_DIR" to a directory containing one of the above files.  If
  "boost_signals" provides a separate development package or SDK, be sure it
  has been installed.
Call Stack (most recent call first):
  /usr/local/lib/cmake/Boost-1.72.0/BoostConfig.cmake:184 (boost_find_component)
  /usr/local/Cellar/cmake/3.17.2/share/cmake/Modules/FindBoost.cmake:444 (find_package)
  CMakeLists.txt:25 (find_package)
```
It turned out [the solution was mentioned in ROS melodic installations instructions](http://wiki.ros.org/melodic/Installation/macOS/Homebrew/Source#Modify_Some_CMake_Config_Files). After modifying some CMake config files as suggested, the built everything successfully!

### Testing and More Installation

After sourcing the `setup.bash` file, i.e., ran `source ~/ros_catkin_ws/install_isolated/setup.bash`, and I ran `roscore` and it worked!!
```
$ roscore
... logging to /Users/mjyc/.ros/log/a15e85b8-98a1-11ea-8b7b-f45c898e9ff7/roslaunch-mjmbp
r.local-92159.log
Checking log directory for disk usage. This may take awhile.
Press Ctrl-C to interrupt

started roslaunch server http://mjmbpr.local:63709/
ros_comm version 1.13.7


SUMMARY
========

PARAMETERS
 * /rosdistro: lunar
 * /rosversion: 1.13.7

NODES

auto-starting new master
process[master]: started with pid [92166]
ROS_MASTER_URI=http://mjmbpr.local:11311/

setting /run_id to a15e85b8-98a1-11ea-8b7b-f45c898e9ff7
process[rosout-1]: started with pid [92169]
started core service [/rosout]
[ERROR] [1589763055.896770000]: [registerService] Failed to contact master at [mjmbpr.lo
cal:11311].  Retrying...
[ERROR] [1589763055.960174000]: [registerPublisher] Failed to contact master at [mjmbpr.
local:11311].  Retrying...
[ERROR] [1589763056.025336000]: [registerSubscriber] Failed to contact master at [mjmbpr
.local:11311].  Retrying...
```
There were some error messages but that didn't matter. I tried `rostopic list` and I got:
```
Fatal Python error: PyThreadState_Get: no current thread
Abort trap: 6
```
It seemed like [I used the brew installed python when I should have used the system installed one](https://answers.ros.org/question/198432/python-segfaults-on-os-x10-with-indigo-and-brew/). For example, the command below worked.
```
/usr/bin/python /Users/mjyc/ros_catkin_ws/install_isolated/bin/rostopic list
```
Urgh, I didn't change my python settings because doing so could mess up my other python projects (I don't use virtualenv, conda, pyenv, etc). I also noticed adding `source ~/ros_catkin_ws/devel/setup.bash` to `~/.bash_profile` slowed down opening every new terminal window, which was super annoying. To make these problems go away, I added the following bash script to `~/.bash_profile`, which makes the sourcing `setup.bash` on-demand and creates aliases for basic ROS commands:
```bash
if [ ! "$(type -t __init_ros)" = function ]; then
  declare -a __ros_commands=('roscd' 'roscore' 'rosrun' 'catkin_make')
  declare -a __ros_commandspy=('rostopic' 'rosmsg')
  function __init_ros() {
    for i in "${__ros_commands[@]}"; do unalias $i; done
    for i in "${__ros_commandspy[@]}"; do alias $i='/usr/bin/python /Users/mjyc/ros_catkin_ws/install_isolated/bin/'$i; done
    source $HOME/ros_catkin_ws/install_isolated/setup.bash
    [ -f $HOME/catkin_ws/devel/setup.bash ] && source $HOME/catkin_ws/devel/setup.bash
    unset __ros_commands
    unset __ros_commandspy
    unset -f __init_ros
  }
  for i in "${__ros_commands[@]}"; do alias $i='__init_ros && '$i; done
  for i in "${__ros_commandspy[@]}"; do alias $i='__init_ros && /usr/bin/python /Users/mjyc/ros_catkin_ws/install_isolated/bin/'$i; done
fi
```

Now the commands below runs without errors and there were no more delay in opening up a new terminal!
```
rostopic pub -r 1 /chatter std_msgs/String hello
rostopic echo /chatter
rostopic type /chatter | rosmsg show
```

### Adding More ROS Packages

My goal of installing ROS on macOS was to use `ros_cozmo` which is dependent on `actionlib` and dependent packages. So I added them by running
```
mv lunar-ros_comm_plus.rosinstall lunar-ros_comm_plus.rosinstall.old
rosinstall_generator ros_comm actionlib --rosdistro lunar --deps --tar > lunar-ros_comm_plus.rosinstall
rm src/.rosinstall
wstool merge -t src melodic-desktop-full.rosinstall
wstool update -t src
```
and rebuilt the workspace. It built without any errors.

Then I became interested in teleoperating Cozmo via a web app with [roslib](http://wiki.ros.org/roslibjs/Tutorials/BasicRosFunctionality). I updated `.rosinstall` file via
```
rosinstall_generator ros_comm actionlib --rosdistro lunar --deps --tar > lunar-ros_comm_plus.rosinstall
```
and tried rebuilding the workspace. This time I faced error messages like
```
...
/Users/mjyc/ros_catkin_ws/src/rosauth/src/ros_mac_authentication.cpp:15:10: fatal error:

      'openssl/sha.h' file not found
#include <openssl/sha.h>
         ^~~~~~~~~~~~~~~
1 error generated.
make[2]: *** [CMakeFiles/ros_mac_authentication.dir/src/ros_mac_authentication.cpp.o] Er
ror 1
make[1]: *** [CMakeFiles/ros_mac_authentication.dir/all] Error 2
make: *** [all] Error 2
<== Failed to process package 'rosauth':
  Command '['/Users/mjyc/ros_catkin_ws/install_isolated/env.sh', 'make', '-j8', '-l8']'
returned non-zero exit status 2

...
```
There were some suggestions on internet to solve this problem but at this point, I felt like installing packages like this is not a scalable approach.

### Afterthoughts

I felt like what I tried wasn't the right approach for using ROS on mac in 2020. I guess there are

- [ROS docker](http://wiki.ros.org/docker)
- [ROS development studio](https://rds.theconstructsim.com/)
- ROS on cloud like [AWS robomaker](https://aws.amazon.com/robomaker), [Rapyuta Robotics](https://www.rapyuta-robotics.com/),
and [ROS development studio](https://rds.theconstructsim.com/)

and I think ROS docker and ROS development studio are reasonable but they weren't amazing. Maybe I just need to wait for [ROS2](https://index.ros.org/doc/ros2/).
