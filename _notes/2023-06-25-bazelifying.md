---
layout: note
title: "Bazelifying ROS Projects with LLM's Assistance"
date: 2023-06-25 00:00:00 -0800
tags: ["#projectidea"]
---

Large language models (LLMs) are causing stir in dev community.
This project investigates my burning question: _"Can I--a roboticist--leveage an LLM to significantly reduce my development time?_

## Goals

- Dramatically reduce the amount of work required to migrate a ROS project to use Bazel.
    - Better understand the required work: What are the required steps? What makes it so laborious?
- Understand the strengths and weaknesses of using LLM in a nontrivial project.
    - Can it be used to dramatically improve developer velocity?
        - Bazel migration requires at least a few weeks of an engineering team's time. Can it be done by a single person in a few days?

### Expected Impact

- New flexibility in changing build system that traditionally require huge effort to migrate.
- ...

## Background Research

### Using Bazel as a Build System for ROS

- For motivation and past discussions, check out [Adding Bazel as an official alternative build system for ROS2 Iron?](https://discourse.ros.org/t/adding-bazel-as-an-official-alternative-build-system-for-ros2-iron/28476).
- Existing projects:
    - [mvukov/rules_ros2](https://github.com/mvukov/rules_ros2)
    - [ApexAI/rules_ros](https://github.com/ApexAI/rules_ros)
    - [RobotLocomotion/drake-ros/tree/main/bazel_ros2_rules](https://github.com/RobotLocomotion/drake-ros/tree/main/bazel_ros2_rules)
- Presentations:
    - [BazelCon 2019 Day 2: Building Self Driving Cars with Bazel + Q&A](https://youtu.be/fjfFe98LTm8)
    - [BazelCon 2019 Day 1: Building Self Driving Cars with Bazel](https://youtu.be/Gh4SJuYUoQI)
    - [Bazel and ROS 2 – building large scale safety applications](https://vimeo.com/767139879)

#### Challenges

- Bazelifying all external dependencies.
    - Cruise guys mention this in their talk and in ROS Discourse.
- (WIP) Something about Python.
    - TODO: Find mvukov's comment (in [mvukov/ruls_ros](https://github.com/mvukov/rules_ros), I think) that describes the challenges of specifying Python dependencies in Bazel.

TODO: Briefly mention the maintenance work too. Do a back-of-envelope calculation for the frequency/amount of the maintenance work.

#### Existing Approaches

1. Using ROS as system dependencies in Bazel.
2. Updating ROS and all of its [external dependencies](https://github.com/mvukov/rules_ros2/tree/main/repositories) to use Bazel.

See also: [Background and Design Decisions](https://github.com/mvukov/rules_ros#background-and-design-decisions) section in [mvukov/ruls_ros](https://github.com/mvukov/rules_ros)

### Candidate ROS Projects to Migrate

- [Autoware](https://autowarefoundation.github.io/autoware-documentation/main/)
    - Open-source Autonomous Driving Software Project built on ROS.
    - Great documentation.
    - Vibrant community.
        - [GitHub Discussions](https://github.com/orgs/autowarefoundation/discussions)
        - [Discord Server](https://discord.gg/Q94UsPvReQ)
- [MoveIt 2](https://moveit.picknik.ai/main/index.html)
    - Open-source Robotic Manipulation Platform for ROS2.
    - Great documentation.
    - Vibrant community.
        - [GitHub Discussions](https://github.com/orgs/ros-planning/discussions)
        - [Discord Server](https://discord.gg/RrySut8)

Other Candidates Considered:
- Nav2
- ...

### LLM-Powered Code Generation

### Initial Impressions on LLM Use Cases

- The "consumption" side of LLM use cases (e.g., code comprehension, summarization) can increase developer velocity.
- The "generation" side of LLM use cases (e.g., code completion, generation) is questionable; developers still need to check their code line-by-line.
- "Test case generation" is interesting.
    - [CodiumAI](https://www.codium.ai/) - Generating meaningful tests for busy devs
    - Creating test cases is more useful than generating untested code.
    - However, it's not TDD; developers still need to provide an initial implementation (I think).

#### AI Agents

- [Significant-Gravitas/AutoGPT](https://github.com/Significant-Gravitas/Auto-GPT):
    - A pioneer AI agent.
    - I have heard that it has great documentation on what works and what doesn't, but I haven't been able to find it.
    - There are many alternatives and variants available.
- [smol-ai/developer](https://github.com/smol-ai/developer):
    - An AI agent-like program synthesizer.
    - There are some alternatives and variants, such as GPT.
- [LLM Powered Autonomous Agents](https://lilianweng.github.io/posts/2023-06-23-agent/)
    - A summary blog post on AI Agent research and demos.
- [TheR1D/shell-gpt](https://github.com/TheR1D/shell_gpt):
    - It's not an AI agent, but it seems to be highly customizable.

They are essentially for loop around LLM APIs.
To me, the key challenge is making them more transparent and easier to interact with for developer users.
One idea is transforming the for loop execution into the process developers are already familiar with, e.g., PR review process, TDD-like dev flow, commenting process, etc.

## Next Steps

1. [ ] Collect and analyze feedback for this idea.
    - Who cares about this?
        - Which (robotics) companies? Who are their customers?
    - Is the maintenance work a bigger or more laborious problem?
    - ...
1. [ ] Find a starting point; Couple ideas:
    1. Check out Autoware or MoveIt 2 and identify a leaf package to start converting to Bazel.
    1. Check out [mvukov/rules_ros2](https://github.com/mvukov/rules_ros2) and identify a list of challenges that the author overcame.
        - Create a post in [Discussions - Ideas](https://github.com/mvukov/rules_ros2/discussions/categories/ideas) category to spark discussions.
1. [ ] Assess pros and cons of AI agents:
    1. Try an AI agent to migrate a tiny ROS package to use Bazel.
    1. Search for AI agent TDD applications and try them out.
        - Can it migrate a tiny ROS package to use Bazel?
    1. Review how smol-ai/developer works.

### Misc.

- If the goal is to demonstrate the usefulness of LLM, I could focus on converting RVIZ plugins to foxglove extensions, which is another laborious task.
