---
layout: post
title: "Robo-Observability"
date: 2023-04-21 00:00:00 -0800
tags: ["#software-engineering"]
---

I care about observability in the context of debugging and monitoring robotics systems.

## Logs

Debugging (e.g., ROS-based) robotics systems by digging through logs hasn't been fun for me.
I first needed to ssh into a robot, look through multiple log files from multiple teams' softwares or a single massive log file that all software dumped their logs to, and once finding a relevant logs and associated data (e.g., camera images), start downloading them to my local dev machine (which takes couple minutes at best) and try to debug while visualizing them somehow.
Of course I'm describing the worst case set up, it was always challnging for one or two reasons mentioned in the story.

When I started using log management tools from the distributed systems community, I was pleasantly surprised by their amazing developer experience (DX).
Three aspects in particular stood out to me:

1. _Structured logs_ made logs machine-parsable and version controllable, eliminating the need for regex gymnastics.
    This greatly facilitated the development of user-facing tools like interactive data visualizers.
2. _Centralized logs_ helped bring together all relevant information for users.
3. _Log visualization tools_ allowed users to effortlessly navigate and process large amounts of log data.

During the adoption of these aspects, I observed the following challenges faced by organizations:

1. _Large and complex codebases_ made it difficult and laborious to structure logs consistently across diverse subsystems.
2. _Large data volumes_ posed challenges in centralizing data. Even in robotics companies that deal with non-autonomous vehicles, data generation reaches petabyte scales, making it incredibly challenging to work with.
3. _Non-textual data_ made the utilization of existing log management and visualization tools more difficult.

Here are my suggestions:

1. Start structuring logs by adding metadata such as robot ID and customer ID (i.e., robot and customer information) to the logs of multiple teams.
   Doing so should spark discussions about standardizing the data structure and tooling for logs.
   Nudge stakeholders to think in terms of logs generated from fleets instead of individual robots, and manage the lifecycle of logs independently, for example, from the software that generated them.

2. While aiming to standardize the metadata structure and tooling to simplify the consumption process, log data types and data channels carrying logs should be treated differently and separately to optimize performance in terms of transportation, visualization, and so on.

3. Invest in adopting or even building data visualization tools.
   "A picture is worth a thousand words."
   Non-textual data is essential when it comes to debugging, and each organization may have bespoke needs.

## Metrics

Typical metics categories I've seen in robotics companies are:

1. Customer and robot-specific metrics such as the total number of completed deliveries and the total distance traveled for an indoor delivery robot company.
2. Resource utilization and health related metrics such as CPU mem on board and off board machines.
3. Request rate, errors, and duration -- health of the service

I've found that applying 3rd to robotics-domain specific helpful.

2. Robotics 

Taking an example of control,
For example, control frequency
control 

2. 

The typical metrics I've seen in robotics companies are (1) metrics indictaing resources utilization and (2) customer focused domain specific metrics.
<!-- outside of  -->

## Closing Notes

Observability is crucial for debugging and monitoring robotics systems at every stages of an organization.
<!-- When the organization is small, there is no  -->
Ensuring observability of a robotics system at scale requires not only careful design and nontrivial implementation work on tooling but also the establishment of conventions and practices that are agreed upon and adhered to by multiple teams.
