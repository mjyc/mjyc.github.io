---
layout: post
title: "Understanding Challenges with Large Robotics System Development"
date: 2020-03-07 00:00:00 -0800
tags: ["#rant"]
---

_Originally posted on [GitLab](https://gitlab.com/mjyc/robosysdev-notes/-/blob/master/post.md)_

Robotics system development is hard. To understand causes for the robotics system development challenges, I interviewed a few robotics engineers who have been involved in large robotics projects and identified the following themes.

## There aren't many performant off-the-shelve tools

As the field of robotics is not matured, it is not easy to find performance libraries for perception, manipulation, human-robot interaction that fits your needs. Many existing off-the-shelve code is research code and hence requires expert knowledge, e.g., a user needs to see through undocumented assumptions and limitations. Essentially, identifying whether they will be useful for your problem is an art of itself.

## There aren't many generalist robotics systems engineers

Although more robotics educational materials are becoming available, there are not many engineers who can design and implement large robotics systems. Many robotics engineers often focuses on one subfield of robotics engineering such as computer vision or control but does not have much experience with working with the whole system. On the other hands, good systems engineers are often lacks the robotics knowledge and treats robotics libraries as black boxes.

## Gathering system requirements or software specifications is not trivial

A robotic system that interact with physical world is complicated and consequences of using such system in real world is hard to predict. This makes the gathering of system requirements or software specifications challenging. Therefore the system specifications are often underspecified which yields brittle or over-prepared systems.

## Maintenance and testing are challenging

Often existing dev-ops tools are unfit for the robotics system development purposes. For example, robotics data collection, analysis, and visualization are different from those of web services. Testing is especially challenging since setting up a real-world testing environment is not trivial, e.g., a clean "reset" of the real robot testing environment is near impossible or time-consuming. Also, the simulators that are supposed to help with testing do not serve their purpose because of the gap between simulation and reality.

Although the list above is based on a small number of interviews and my personal experience, I hope it to be used as a starting point for brainstorming for solutions. Please let me know if you see missing themes or any comments!


<br>

#### Miscellaneous

- _Sep, 2021. ["How to Build Good Software"](https://www.csc.gov.sg/articles/how-to-build-good-software) - "Why Bad Software Happens to Good People" section felt relevant._
- _Apr, 2021. Found more related papers!_
    - _["State of the Practice and Guidelines for ROS-based System"](https://arxiv.org/ftp/arxiv/papers/2010/2010.14537.pdf)_
    - _["A Study on the Challenges of Using Robotics Simulators for Testing"](https://arxiv.org/pdf/2004.07368.pdf)_
- _While I was writing this post, I learned about this excellent paper ["State of the Practice and Guidelines for ROS-based System"](https://github.com/S2-group/icse-seip-2020-replication-package/blob/master/ICSE_SEIP_2020.pdf) and discussions about the paper in [the ROS Discourse](https://discourse.ros.org/t/guidelines-on-how-to-architect-ros-based-systems/12641). The paper is focused on [ROS](https://www.ros.org/) yet the high-level goals of it seem similar._
- _The study notes this article is based on are available in [github](https://github.com/mjyc/robosysdev-notes) and [gitlab](https://gitlab.com/mjyc/robosysdev-notes) repos_
- _Thank you! to all those who participated in my interview studies_
