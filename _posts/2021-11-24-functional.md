---
layout: post
title: "Functional Listening and its Generalization: Towards Having Control Over Your Productivity"
date: 2021-11-24 00:00:00 -0800
tags: ["#productivity"]
---

<figure>
  <img src="https://live.staticflickr.com/7008/6571012801_aaf5cf54f5_k.jpg">
  <figcaption>84.,   Photo by <a href="https://www.flickr.com/anacarla93/">Ana Carla Machnicki</a> on <a href="https://www.flickr.com/">flickr</a></figcaption>
</figure>

At some point in my life, I realized that I wasn't listening to music ~~to join the revolution and change the world!~~to enjoy myself but to put my kids to sleep or to focus while I'm working.
This sad realization made me write this post.


## Sounds

Like many other new parents, I was introduced to [white noise](https://open.spotify.com/playlist/37i9dQZF1DWUZ5bk6qqDSy?si=3494c78a527640a0) sounds when I was struggling to put my son to bed.
One day after a sleepless night, I found myself listening to the white noise sounds even when I was working.
I felt good and focused.

I started exploring more noise sounds to see if any of them can boost my productivity because, at some point, I felt white noise was too harsh for my ears.
Then I found [brown noise](https://open.spotify.com/playlist/37i9dQZF1DX4hpot8sYudB?si=60a31bdb113441e1), which was much warmer and easier on my ears than white noise, and I enjoyed listening to it for awhile.
However, after many days of listening to it for a longer period of time, it became too soothing to the point where it made me feel sleepy, especially on Winter days with long nights.
So I moved on to listening to [pink noise](https://open.spotify.com/playlist/37i9dQZF1DX5NgkFTxJ4Wv?si=7029f4a7ead24b4a), which felt like a great compromise between white noise and brown noise.

Around the same time, my friend, who is also a dad, suggested I check out [fan noise](https://open.spotify.com/playlist/37i9dQZF1DWUm4vT7WQxcD?si=e76c28f0c6574460).
I didn't initially like it, but it grew on me over time.
There was something about listening to slightly more familiar sounds that kept me listening to it despite the initial dislike.
This observation led me to explore non-synthetic noise sounds like [nature sounds](https://open.spotify.com/playlist/37i9dQZF1DX4PP3DA4J0N8?si=27f759d1d5064e9d), more specifically, [ocean sounds](https://open.spotify.com/playlist/37i9dQZF1DWV90ZWj21ygB?si=2db0493068e7492f) and [rain sounds](https://open.spotify.com/playlist/37i9dQZF1DX8ymr6UES7vc?si=f00d14203b384061).
What I really liked about listening to the nature sounds was that not only were they more comfortable to listen to than synthetic noise sounds like white noise, but they also put me into a certain mental state that had a specific effect on me.
For example, listening to the wave noise tricked my brain into putting me into vacation mode, helping me relax, and the heavy rain sounds took me back to the hot and humid monsoon season in South Korea I weirdly enjoyed when I was a kid.

Understanding that listening to certain sounds (or music) can have certain effects on me made me want to leverage such effects.
For example, I intentionally listened to my favorite finals week music from my college years, like [Nujabes](https://open.spotify.com/artist/3Rq3YOF9YG9YfCWD4D56RZ?si=BDrveOO-SRigUDmRDtaeDg)-like lo-fi hip-hop music, [Bon Iver](https://open.spotify.com/artist/4LEiUm1SRbFMgfqnQTwUbQ?si=mDOsZUMbTQWJe_3lD0DDvw)-like indie folk music, and [Sigur Ros](https://open.spotify.com/artist/6UUrUCIZtQeOf8tC0WuzRy?si=nm0FY61iTNiNWB3im-vgQA)-like post-rock music, when I needed to learn new techniques or tools.
When I needed to pump out code, I listened to my favorite coding music from my bachelor years, like [Daft Punk](https://open.spotify.com/artist/4tZwfgrHOc3mvqYlEYSvVi?si=AnprvdiGRRKh7DL3-Na_MA)-like French house music or [Chemical Brothers](https://open.spotify.com/artist/1GhPHrq36VKCY3ucVaZCfo?si=HhSfDdriSBKYXEYT5e9zNg)-like big beats music.
I turned to nature sounds like ocean sounds to help me calm down and detach from problems, especially when I'm responding to an incident under time pressure.


## Lights

During the pandemic—specifically in the winter of 2020—I learned how sensitive I was to the lighting conditions in my room.
At the time, I was using a single not-so-bright yellow light bulb in my room, and I felt like I couldn't focus because my room wasn't bright enough.
So I ordered a [3-in-1 light socket splitter](https://a.co/d/8wQJqPb) and three [smart light bulbs](https://www.wyze.com/products/wyze-bulb-white) to get my focus back by making my room brighter.

After trying out my new smart light bulbs without any customizations for a few days, I realized that while I really enjoyed having their default bright white lights during the daytime--especially on cloudy days, I didn't like the same bright white lights in the evening hours.
They didn't mix well with the other yellow light bulbs we already had.
I felt like the new white lights were taking away the cozy warm feeling created by the existing yellow lights.
I also felt too awake if I worked under bright white lights in the evening and night hours, it was useful if I needed to work long hours, and it made me tired and difficult to concentrate during the day after.

So I used the [IFTTT](https://ifttt.com/)-like [feature](https://support.wyze.com/hc/en-us/articles/360032409032-Using-Rules-in-the-Wyze-app) in the smart light app to adjust the light bulbs' brightness and color temperature throughout the day.
Here is a set of rules I created[^1]:

- **6 am: set brightness to 80%, set color temperature to 50%**
- 7 am: set brightness to 80%, set color temperature to 50%
- **10 am: set brightness to 100%, set color temperature to 100%**
- 11 am: set brightness to 100%, set color temperature to 100%
- 1 pm: set brightness to 100%, set color temperature to 100%
- 2 pm: set brightness to 100%, set color temperature to 100%
- **4 pm: set brightness to 100%, set color temperature to 75%**
- 5 pm: set brightness to 100%, set color temperature to 75%
- **8 pm: set brightness to 100%, set color temperature to 50%**
- 9 pm: set brightness to 100%, set color temperature to 50%
- **12 am: set brightness to 10%, set color temperature to 1%**

My smart light bulbs' brightness ranges from 0 (0%) to 800 lumens (100%), and the color temperature ranges from 2700k (0%) to 6500k (100%)[^2].
There are redundant rules (in the non-bold font) because there was no easy way to _keep_ a certain condition (e.g., set brightness to 100%) _throughout_ a certain time period (e.g., between 10 am and 4 pm) and handle _possible failures_ due to _unreliable connections_[^3] using the IFTTT-like feature that came with the bulb[^4].
For example, if I power off my lights at 10 pm and power them back on at 9am the next day, the brightness and color temperature will stay at what they were at 10 pm last night and they won't change until the next rule kicks in, e.g., at 10 am.
One of the ways to get around this issue was using the "[sun match](https://www.digitaltrends.com/home/wyze-bulb-white-sun-match-mode-changes-based-on-sun/)" feature that continuously adjusts the brightness and color temperatures to match that of the sun throughout the day.
However, I liked having a set of rules that changes brightness and color temperature in a bit more discrete manner.

A funny thing about having these rules was that they had a reminder-like effect on me.
For example, adjusting the color temperature slightly at 4 pm was like a reminder that I should wrap up and get ready for picking up my son at 5:30 pm, whereas the 5 pm change was like a "final warning." 
The dramatic reduction of brightness at 12 am was like a reminder that I should go to bed even though there is this one thing I really want to finish.
It was really effective, especially because I like to hide the menubar, where the clock is located, to maximize screen space and minimize distractions when I'm working.

### Screen Color Temperature, Dynamic Wallpaper

Once I understood my room lights' reminder-like effect on me, I looked for other things that I can control, e.g., to better control myself.
The first one was the screen display color temperature.

I'm not a fan of dark mode for my workstation desktop.
I know I'm a minority among fellow developers, but I just find using a white background (e.g., on IDE and terminal) easier to read.
However, one problem with using the white background is it hurts my eyes towards the end of the day, i.e., in the evening hours.
I became a big fan of the "night [shift](https://support.apple.com/en-us/HT207513)/[light](https://help.ubuntu.com/stable/ubuntu-help/display-night-light.html.en)" feature that adjusts the screen display color to a warmer color after sunset because it made using a white background in the evening much more comfortable.

To go beyond the default "start night shift at sunset and stop it at sunrise", I set up the following cron jobs on my work desktop running Ubuntu:
```bash
# Run `sudo crontab -e` to open this file

0 0 * * * /usr/bin/gsettings set org.gnome.settings-daemon.plugins.color night-light-temperature 1000
0 6 * * * /usr/bin/gsettings set org.gnome.settings-daemon.plugins.color night-light-temperature 5000
0 10 * * * /usr/bin/gsettings set org.gnome.settings-daemon.plugins.color night-light-temperature 6000
0 4 * * * /usr/bin/gsettings set org.gnome.settings-daemon.plugins.color night-light-temperature 5000
0 5 * * * /usr/bin/gsettings set org.gnome.settings-daemon.plugins.color night-light-temperature 4000
0 8 * * * /usr/bin/gsettings set org.gnome.settings-daemon.plugins.color night-light-temperature 3000
```
By the way, here I didn't need to have redundant rules because my laptop was always on.
I even applied the same idea to control [dynamic wallpaper](https://github.com/adi1090x/dynamic-wallpaper), noticing dynamic wallpaper is another thing that I implicitly interact with.

For some time, I played with synchronizing such changes across the room lights, screen display, and wallpaper but screen color temperature and wallpaper rules didn't stick.
I ended up just using the default nightshift mode (i.e., on/off on sunset/sunrise) because changing the screen display color temperature was too subtle to give me the kick.
As for the dynamic background, I often missed the changing background because I usually maximize my IDE or terminal window.


## Productivity

My exploration of trying to understand the effects of various kinds of lights on myself reminded me of human-computer interaction (HCI) research papers investigating the possibility of behavior change via technologies (disclosure: I only read their abstracts):

- [The design of eco-feedback technology](https://www.researchgate.net/publication/221515000_The_design_of_eco-feedback_technology)
- [Theory-Driven Design Strategies for Technologies that Support Behavior Change in Everyday Life](https://www.researchgate.net/publication/221514889_Theory-driven_design_strategies_for_technologies_that_support_behavior_change_in_everyday_life)
- [Personality and Persuasive Technology: An Exploratory Study on Health-Promoting Mobile Applications](https://www.researchgate.net/profile/Julie-Kientz/publication/220962690_Personality_and_Persuasive_Technology_An_Exploratory_Study_on_Health-Promoting_Mobile_Applications/links/0deec5191b0d334f93000000/Personality-and-Persuasive-Technology-An-Exploratory-Study-on-Health-Promoting-Mobile-Applications.pdf)
- [Heuristic evaluation of ambient displays](http://cs4760.csl.mtu.edu/2022/resources/HE2.pdf)

Then I thought, can we take a computational approach to figure out the optimal environment (e.g., sounds/lights sequence/placements) for productivity?
For example, if we have an accurate model of how certain environments like sounds or lights affect our productivity, we could find an optimal sequence and placement of sounds and lights that maximizes our productivity!
Building such an accurate model would be difficult, but maybe we can take a [quantified-self](https://quantifiedself.com/) approach to collect data and augment it with data from smart home devices?

But then I asked myself: Do I really want to go this route? Would it truly boost my productivity?

### Self-Control via Environment Control

The goal of this entire journey was to improve my productivity, and what I discovered was not just about coffee but rather about self-control.
This realization stemmed from the following observations:

- Certain things put me into certain moods ("Sound").
- Environmental cues act as triggers ("Lights").

And thinking about how to leverage these observations.
Expanding to different modalities ("Screen Color Temperature, Dynamic Wallpaper") taught me how to avoid distractions and stay focused on my goals.
One thing I've learned from daydreaming about the computational approach to boosting my productivity ("Idea") is that, as a first step, I could try to internally learn my productivity model by paying more attention to how my mind responds to various environments (let's meditate people!).
Only then can I leverage such a model (understanding) by changing environments.


<br>

#### Footnotes

[^1] And [here](https://gist.github.com/mjyc/ad2de6e348f8be86e335be53cfb38fe4#file-office-room-lights-yaml) is a similar set of rules in [Google Home Automation Script](https://developers.home.google.com/automations/schema?hl=en).
<br>[^2] For more information on the color temperature unit Kelvin (K), see [this article](https://www.ledlightexpert.com/understanding_led_light_color_temperatures_ep_79).
<br>[^3] Especially the case if you have many (e.g., > 10) devices. You more likely to likely to have some (e.g., Wi-Fi connection, etc.) issues. There are some [people](https://www.youtube.com/@HomeAutomationGuy) on internet who have done some serious home-automation projects. I'd checkout their contents for insights.
<br>[^4] I heard some products better supprot "state-based"--as opposed to "event/trigger-based"--actions. Btw, my gradschool labmate published a [research paper](https://hcrlab.cs.washington.edu/assets/pdfs/2015/huang2015ubicomp.pdf) about a related challenge.