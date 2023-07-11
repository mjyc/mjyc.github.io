---
published: false
---


<!-- Problems:
- ...

MUST haves

- physical CI/CD automatic deployment to e.g., mirror line
    - evolution from the previous stage
    - faster build
    - faster launch
    - better deployment tooling
- better log data management (debugging)
    - organized & structured
    - partially centralized
    - ability to download/stream data for debugging
- debugging record & replay -->

<!-- - TEST
    - some form of TIA
    - physical CI/CD automatic deployment to e.g., mirror line
    - faster build
    - more simulation testing
        - different layers
    - record and replay
    - faster launch -->


<!-- - faster launch
- HIL Bench
- ...

- highly scalable deployment
- highly scalable simulation testing
- highly scalable data transfers -->

---

Key Practices:
- Employing narrow integration tests with light weight simulations 

Developers to improve (1) core robotics functionalities to scale different situations, (2) improve software quality, etc. (lifecycle, etc.) producet, etc.

- new challenges on development
    - bad commit, quick fix don't work no more
    - high-fidelity does not cut
    - 

---

handle more than 100 robots deployed in fields.

Startups at this stage start gaining more customers that require deploying more than 

The goal of startups at this stage is to expand the ope

acquiring enough customers to deploy more than 100 robots.

Startups hire more developers 

At this stage, the goal of startups are scaling up to more than 100 robots

At this stage, startups likely to have less than 10 customers who often are also their design partners and a handful number of developers who are relentlessly building (and fixing) major components of the company's first product.

What's going on at the company?
- 10~100 customers, many developers
- many developers

---

- Setting up log aggregator 

Given the startup's size of the organization, it is likely that a handful of developers built the first service by 

major components and.


To smoke test the product that is still undergoing major changes, startups typically employ continuous integration and end-to-end testing. 
End-to-end testing involves a high-fidelity simulator (e.g., Gazebo) that was used during developement for the ease of integration.

Because bugs slipped into the production, startups setup internal communication tool and teleop toop to quickly respond to the 

As for debugging, successful startup setup log aggregator to centralize the logs, 

---

<!-- As a smoke test, E2E testing is being used.
continuous integraiton is setup with high-fidelity simulator (e.g., Gazebo) that was used during deployment to ...
Because internal communication tool and dashboard (number of deliveries) are built.
Teleop  -->

<!-- one or two deployed robots less than 5 customers who are also design partners. -->

At this stage, each employee is responsibilty for critical components, e.g., robotics software, web and cloud software, mechnical, business etc.

Key characteristics are 

What's going at the company:
- Less than 5 beta customers or design partners.
- Few developers are building everything; things are changing quickly

Problems:
- no time to cover everything
- core robot behaviors are not robust

Recommendations:
- end-to-end test cases, E2E continuous integration
- some sim potentially
- dashboard, alerts, teleop

---

## Reliability as a company grows

My experience with 

This post is about testing.
But real motivation behind testing is to eusure the reliability of the service provided by a company.
To that end, I'd like to share what to do as a company grows.

### (Pre-)Seed: 5-20 employees

What's going at the company:
- N beta customers or design partners.
- Few people writing everything, fast changes.
- Top coders

Problems:
- things are changing fast, can't cover all; no resources, more like no time to write tests
- core behavior isn't robust enough

Must-haves:
- end-to-end test cases, E2E continuous integration
- some sim potentially
- dashboard, alerts, teleop
<!-- - ways of storaging and fetching data from robots -->

### Series A~B: 21-200 employees

What's going at the company:
- N beta customers or design partners.
- Non design partners join.
    - need to test more
    - ...

- design storage solutions for log data
    - structuring text logs, 
    - meta data
    - light way of scraping data
    - more automation

- more developers
    - problems slipping in
        - deployment is becoming an issue
    - build speed is becoming issue
    - need faster way of developing things (need simulation)

Problems:
- 

MUST haves

- physical CI/CD automatic deployment to e.g., mirror line
    - evolution from the previous stage
    - faster build
    - faster launch
    - better deployment tooling
- better log data management (debugging)
    - organized & structured
    - partially centralized
    - ability to download/stream data for debugging
- debugging record & replay

- TEST
    - some form of TIA
    - physical CI/CD automatic deployment to e.g., mirror line
    - faster build
    - more simulation testing
        - different layers
    - record and replay
    - faster launch

### Post Series B: 201-2000 employees

- HIL Bench
- highly scalable deployment
- highly scalable simulation testing
- highly scalable data transfers

### Beyond 2000 employees

- custom hardware

I have no idea.