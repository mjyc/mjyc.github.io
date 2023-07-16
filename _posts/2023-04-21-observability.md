---
layout: post
title: "Robo-Observability"
date: 2023-04-21 00:00:00 -0800
tags: ["#short", "#software-engineering"]
---

I care about observability in the context of debugging and monitoring robotics systems.

## Logs

Debugging (e.g., ROS-based) robotics systems by digging through logs hasn't been fun for me.
To investigate a bug report, I first SSH into a robot, look through multiple log files from multiple teams' software, and once I find relevant logs and data (e.g., camera images), I start downloading them to my local dev machine and wait for 10~20 minutes (at best).
Only after that, I could dive deep into them to understand the reported issue.
I'm describing my ~worst experience, but debugging (and monitoring, too) robotics systems has always been painful for one or two reasons I just mentioned.

When I started using log management tools from the distributed systems community, I was pleasantly surprised by their amazing developer experience (DX).
Three aspects in particular stood out to me:

- _Structured logs_ made logs machine-parsable and version controllable, eliminating the need for regex gymnastics.
    This greatly facilitated the development of user-facing tools like interactive data visualizers.
- _Centralized logs_ helped bring together all relevant information for users.
- _Log visualization tools_ allowed users to effortlessly navigate and process large amounts of log data.

During the adoption of these aspects, I observed the following challenges faced by organizations:

- _Large and complex codebases_ made it difficult and laborious to structure logs consistently across diverse subsystems.
- _Large data volumes_ posed challenges in centralizing data.
    Even in robotics companies that deal with non-autonomous vehicles, data generation reaches petabyte scales, making it incredibly challenging to work with.
- _Non-textual logs_ made the utilization of existing log management and visualization tools more difficult.

Here are my suggestions:
- **Start structuring logs by adding metadata**  such as robot ID and customer ID (i.e., robot and customer information) to the logs of multiple teams.
    Doing so should spark discussions about standardizing the data structure and tooling for logs.
    Nudge stakeholders to think in terms of logs generated from fleets instead of individual robots, and manage the lifecycle of logs independently, for example, from the software that generated them.
- While aiming to standardize the metadata structure and tooling to simplify the consumption process, **log data types and data channels** carrying logs **should be treated differently and separately to optimize performance** in terms of transportation, visualization, and so on.
- **Invest in** adopting or even building **data visualization tools**.
    "A picture is worth a thousand words."
    Non-textual data is essential when it comes to debugging, and each organization may have bespoke needs.

## Metrics

Typical metric categories I've seen are:

- _Customer and robot-specific metrics_, such as the total number of completed deliveries and the total distance traveled for an indoor delivery robot company.
- _Resource utilization and health-related metrics_, such as CPU, memory, and disk usage, network traffic of onboard and cloud machines.
- _Service health and availability-related metrics_, such as request rate/error/duration, service uptime/response time of onboard and cloud services.

These metrics aren't specific to robotics companies and are standardized (e.g., across services) for ease of consumption and operational scalability.
However, I have found that specializing metrics for core robotics engineers (e.g., who also engage in operations work in smaller organizations) is helpful for monitoring purposes.
Here are examples of such specialized metrics for motion control and planning:

- _Motion control:_ control frequency, number of staged controllers, response time of dependent hardware devices.
- _Motion planning:_ planning request rate, errors, and duration, distance and duration of planned motion (trajectory).

Notice that these metrics are still high-level, i.e., general across different kinds of motion planning or control algorithms.
There are also **robotics algorithm-specific metrics** (e.g., the number of nodes explored for a sampling-based planner) that can be computed and tracked.
While I do like to collect such robotics-specific metrics to gain a deeper understanding of algorithm performance, doing so requires caution, e.g., I like to ask questions such as: What's the overhead of computing algorithm-specific metrics? How can we extract meaningful information from these metrics and avoid adding noise to the dashboard? How much maintenance work do we anticipate?

## Final Thoughts

Observability is crucial for debugging and monitoring robotics systems at every stage of an organization.
In small organizations, observability is a must for quickly detecting and resolving issues.
For larger organizations, the ability to collect and process large log data from a fleet of robots effectively or monitor the health and utilization of such a fleet is a must.
Ensuring observability of a robotics system at scale requires not only careful design and nontrivial implementation work on tooling but also the establishment of conventions and practices that are agreed upon and adhered to by multiple teams.


<br>

#### Acknowledgements

I thank Chris Palmer and Rastislav Komara for sharing their experiences and insights.