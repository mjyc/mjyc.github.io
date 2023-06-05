---
layout: post
title: "Robo-Observability"
date: 2023-04-21 00:00:00 -0800
tags: ["#placeholder", "#software-engineering"]
---

> This post is in work-in-progress.
> Please check back for updates!

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
