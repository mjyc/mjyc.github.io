---
published: false
---

2023/06/28
---

```
In small organizations, observability is must for quickly detecting and resolving issues and for larger organizations, it not only is a must helps with monitoring and gathering insights
```

```
<!-- While such questions apply to other metrics as well, they carry more importance when it comes to collecting robotics-algorithm specific metrics. -->
```

---

```
do we anticipate to change these algorithms? if so how often? will they add too much noise, consume bandwidth, add nontrivial maintainence work?

I personally like to avoid tracking such robotics-specific metrics (or high them from dashboard at least) to keep metrics on surface high-level signals to help me set up an alerts or help me gain insights by looking at trends.

I like dingging into more detailed data with different tools (with e.g., sensor data that I can make sense of).
But this is my preference and I cam see 


I suggest to track them with 
I suggest to track them with care

I suggest to track them judiciously, e.g., does your organization anticipate to change these algorithms? if so how often? will they add too much noise, consume bandwidth, add nontrivial maintainence work?
```

---

```
This is intentional because while there may be more algorithmic specific such as the number of nodes explored/samples generated for sampling based planner however, the selected metrics are chosen to provide high level ingishts.
While such metrics could give even more insights but metrics are meant to get the high-level signal (and set alerts) and gain insights from seeing the trends.
Drilling down should be done with logs.
Some of these should be in the log.
That call is up.
```

2023/06/27
---
```
, such as Splunk and Elasticsearch, 
TODOs:
1. Add my own story demonstrating the challenging of debugging by going through logs.


Debugging (e.g., ROS-based) robotics systems by digging through logs has never been fun for me.
When I started using log management tools from the cloud/distributed systems community, I was pleasantly surprised by their amazing developer experience (DX).
Three aspects in particular stood out to me:

1. _Structured logs_ made logs machine-parsable and version controllable, eliminating the need for regex gymnastics. This greatly facilitated the development of user-facing tools like interactive data visualizers.
2. _Centralized logs_ helped bring together all relevant information for users.
3. _Log visualization tools_ allowed users to effortlessly navigate and process vast amounts of log data.

During the adoption of these aspects, I observed the following challenges faced by organizations:

1. _Large and complex codebases_ made it difficult and laborious to structure logs consistently across multiple systems.
2. _Large data volumes_ posed challenges in centralizing data. Even in robotics companies that deal with non-autonomous vehicles, data generation reaches petabyte scales, making it incredibly challenging to work with.
3. _Non-textual data_ made the utilization of existing tools more difficult.
```

```
<!-- Carve out engineering teams' effort start structuring logs. Staring from the critical part of the system, e.g., control, vision system. Start with adding meta data, so can be visualized with fleet-level.
1. Treat them as separately. Often you dont' need all of them. Moving around one at at time is much easier. Centralizing tooling. If you are using logs, consider.  -->

<!-- Robotics codebase tends to be large. structuring all existing codebase is a laborious job engineers cannot afford.
1. __ Robotics data is huge. Moving around that that is chalelnging.
1. _Desktop-based UIs -->


<!-- Robotics systems aren't as distributed as web systems (esp., that adopted microservices).
    Still,  to benefit from having all contexts in one place.

Having ease-to-use browser-based UIs that help users to navigate and consume the collected large logs seemed critical.

When trying to adopting these to robotics systems faced the following challenges.

1. _Largs legacy codebase._ Robotics codebase tends to be large. structuring all existing codebase is a laborious job engineers cannot afford.
1. __ Robotics data is huge. Moving around that that is chalelnging.
1. _Desktop-based UIs -->



and version controllable, both of 
## Metrics

By metrics, 
There is Domain-specific metrics for customers, throughput, number of deliveries, etc.
Typically, there are health, RED, domain-oriented metrics

Then there are metrics for developers
- basic information, like resource usage, threads, etc.
- RED, health of service

The similar idea could be ported
- heath of hardware, control interval
- RED
    - error rate, and others

<!-- My insight on metrics is that we can apply similar things to
(1)  -->
```

---

```
When I started using cloud-native log management systems

<!-- Digging through robotics logs  -->
Digging through robotics logs isn't fun. (for debugging)
I was pleasantly surprised by observability tools used by cloud/distributed systems community.

Three things helped to improve the developer experience of working with logs (1) machine parseable, (2) centralized, (3) interactive log visualization & monitoring tools.

Trying to adopt all of these to the robotics world faced some challenges.
(1) structuring the log was just a lot of work, also language, consistency, etc.
(2) having all logs in one place helped having more context
(3) having powerful data visualization tools helped, xyz.

I faced issues when trying to adopt these in settings.
(1) structuring messages existing codebase takes time. different languages (libraries), conventions, .existing things helps but what?
(2) centralizing robotics data is difficult due their petabyte scale size
(3) tools that make it easy to navigate; building such data visualization tool is not easy because

My insights are

(1) start with metadata so fleet level, start 
(2) different channels; textual data
(3) I don't know yet.
```

---

```md
## Introduction

* Opener ideas
    * "I started focusing on observability because testing is so hard"
* By observability, I mean
    * metrics, and logs (and data)
    * for debug, monitoring/alert (and BI) purposes
        * explain why trace is not discussed
* NOTE-to-self: Roughly, each section should be structured as
    * What is X
    * How is it already being used in robotics software engineering community
    * Challenges & opportunities
    * Recommendations


## Metrics

* What do I mean by Metrics? How were they being used?
* Domain-specific metrics for customers
* Developers
    * Obvious measures, e.g., RED equivalent
        * NOTE: Find metrics that are equivalent to "Rate"
    * Algorithm performance
        * e.g., motion planning example
            * NOTE: Study motion planning algorithms (e.g., for AV, industrial arms, drones, mobile base)
            * NOTE: Bringup "context"
* Practicing Observability across Teams
    * Needs
    * Challenges
* Leadership
    * TBD
    * Relation to BI
* Recommendations?
    * Consider observability from design stage
        * Closely with roboticist, i.e., engineers working on robotics algorithms
    * Tie with goals
    * Starting from principles
        * Language/algorithm-agnostic


## Logging

* What's logging about?
    * debugging, performance health
* Challenges
    * Associating logs with data
        * Because robotics logs need data
    * Centralizing data
        * Robotics applications are decentralized
        * Topology looks different
    * Overhead & Performance
    * Consuming data
        * Text alone is fine-ish
        * Images, etc.
        * Creating dependencies
* Log as data
    * Recording, transferring, consuming
* BI tools?
* Recommendations
    * Choosing representation / design and stick with it
        * Do intended overhaul
    * Backward compatibility


## Wrap-up (Text that people can take a look if they didn't want to read the whole thing)
* Repeat what we covered
* Repeat my suggestions


# Notes

- Can't test everything
- Response quick
- Why obs—-learning more about algorithm, breath with it, contribute back to community
```

---

```md
It's ability to navigate logs really quickly (1) 

tools, used by cloud people.
Ability to navigate to log really quickly.
For example, elastic search force, blank, help you quickly search through logs coming from multiple nodes and help you monitor them. 
How they are well structured, and good Teulings makes it easy to search and browse. Exploratory or explanatory (check Jeff years paper)
```