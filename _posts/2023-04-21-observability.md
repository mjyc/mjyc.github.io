---
layout: post
title: "Robo-Observability"
date: 2023-04-21 00:00:00 -0800
tags: ["#software-engineering"]
---

I care about observability in the context of debugging and monitoring robotics systems.
<!-- Here are some issues I've faced before with logs and metrics and some insights I have on on this topic. -->

## Logs

Debugging (e.g., ROS-based) robotics systems by digging through logs has never been fun for me.
When I started using log management tools from cloud or distributed systems community like Splunk and Elasticsearch, I was pleasantly surprised by their amazing developer experience (DX).
The following three aspects stood out to me:

1. _Structured logs_ made logs machine-parsable/consumable (no more regex gymnastics) and version controllable, both of which helped building user-facing tools on top, like an interactive data visualizer.
1. _Centralized logs_ helped with bringing all relevant information to users.
1. _Log visualization tools_ helped users to effortlessly navigate and digest huge log data.

I observed following challenges when organizations tried adopting such aspects:

1. _Large and complex codebase_ made structuring logs in a consistent manner across multiple difficult and laborious.
1. _Large data_ made centralizing data difficult. Robotics companies--even the ones involving non-autonomous vehicles--generate petabyte scale of data. Doing anything with such data is too hard.
1. _Non-textual data_ made difficult to use existing tools difficult to use.

Here are my insights:

1. Start structructring log by adding meta data. Robot id, customer id, etc. 
Once some structure is there, discuss with teams to improve it.
Also already structured part.
1. Treat different datatypes (e.g., ROS topics) as separately. This helps moving data easier as one can 
1. Invest in adopting or building browser-based visualization tools.[^1] "A picture is worth a thousand words." you will need visual data. <!-- and RVIZ won't -->

## Conclusion

Observability is important and more people are discussing about it, more companies are getting formed around it.


### Footnotes

[^1]