---
layout: post
title: "Transitioning from HRI research to the industry/Getting started with work"
date: 2022-05-30 00:00:00 -0800
updated: 2023-06-03 00:00:00 -0800
tags: ["#productivity", "#gradschool"]
comments: true
---

<figure>
  <img src="https://upload.wikimedia.org/wikipedia/commons/c/cf/Waymo_self-driving_car_front_view.gk.jpg" width="480px">
  <figcaption>A self driving car</figcaption>
</figure>

## Part 1

[My research](/research) in graduate school was on [human-robot interaction](https://homes.cs.washington.edu/~todorov/courses/cseP590/07_HRI.pdf) (HRI), more specifically, on [end-user robot programming](https://youtu.be/pTml6yEIjcw).
Unlike other research fields like robotic perception or motion planning & control, companies did not know what HRI was and weren't sure how I could fit into their organization or which role I could take.
I realized that my colleagues who also focused on HRI had similar problems.

After spending some time in a couple of robotics startups and observing my colleagues' career paths over the past couple of years, here is a list of roles that I think HRI researchers can take:

- **Front-end or Full-stack Engineer.**
    Front-end engineers work on the user-facing part of the company's software stack, while full-stack engineers work on all aspects of the (web) app stack.
    If you are an HRI researcher who has built end-to-end, user-facing robotics systems (e.g., for user studies, prototyping new designs/algorithms/systems, etc.), one of these roles may be a good fit.
    Another way to determine if one of these roles suits you is by exploring the communities surrounding the "industry standard" tools and technologies used by front-end and full-stack engineers[^1].
    Do you find the problems they are working on interesting? Can you envision yourself getting involved in these communities? If so, these roles might be the right fit for you.

    One note about front-end work: it usually involves working on screen-based user interfaces (UI), such as browser UI or mobile UI.
    In robotics companies, typical users of web or mobile apps are operators/robot wranglers (e.g., those who would benefit from fleet dashboards and teleop interfaces) or developers (e.g., those who would benefit from data visualization interfaces).
    Regarding full-stack work, it generally refers to software development for web applications.
    In my experience, the distinction between front-end and full-stack was blurry in smaller companies, as all members of the (web) application team worked on a little bit of everything.

- **Application Engineer.**
    If you are an HRI researcher who enjoys building high-level robot behaviors, an application (or behavior or autonomy) engineer role may be a good fit.
    Application engineers are involved in designing, implementing, deploying, and maintaining robot applications (One note: the exact scope varies across organizations).
    Larger companies may have roles like sales or solutions engineer who closely work with customers, such as conducting demos or deploying/installing solutions.
    While I don't have firsthand experience in a full time sales or solutions engineer role, I have observed other researchers in the general robotics field transitioning to these roles.
    Based on this, I strongly believe that HRI researchers who particularly enjoy prototyping or deploying systems and working closely with end-users may find these roles enjoyable.

- **UI/UX or Product designer.**
    [UI](https://careerfoundry.com/en/blog/ui-design/what-does-a-ui-designer-actually-do/)/[UX](https://careerfoundry.com/en/blog/ux-design/what-does-a-ux-designer-actually-do/) designers are in charge of designing all visual elements and their interactive properties for web or mobile applications.
    [Product designers](https://www.productplan.com/glossary/product-designer/) are responsible for the design process of the company's product.
    In robotics companies, the scope of product design includes the robot's form factor design, UI/UX design, and/or workflow design.
    Based on my observations, HRI researchers who have made contributions in the [areas of "Design," "Study," or even "Theory"](https://humanrobotinteraction.org/2023/full-papers/#themes) tend to possess transferrable skills that align well with these roles.
    One pattern I have noticed is that those who have successfully transitioned to the industry seems to understand how companies evaluate candidates (and employees) and make a strong case for themselves.
    For instance, they place emphasis on their transferrable skills and showcase a track record of applying such skills in their research.
    Ashley Ruba explains this point well in [this LinkedIn post](https://www.linkedin.com/posts/ashleyruba-phd_careers-academia-resumes-activity-7016818268183175169-FI0N).

    While I may have made it sound like the product designer is a master-of-all designer (like [these](https://newschoolarch.edu/blog/what-does-a-product-designer-do/) [articles](https://nulab.com/learn/design-and-ux/what-does-a-product-designer-do-and-how-is-it-different-from-ux-design/)), in robotics companies, it appears that different types of designers require distinct training.
    For example, unlike how all web application engineers are essentially full-stack in smaller companies, I haven't seen UI designers stepping up to do hardware design work too, which typically requires disciplines such as industrial design or mechanical engineering.
    Another related role is that of a user researcher, whose primary responsibility is gathering product requirements.
    In smaller companies, I have observed this role being fulfilled by a product or UX/UI designer.

- **Product Manager.**
    This is an interesting one.
    [Product managers are not product designers](https://uxdesign.cc/product-designer-vs-product-manager-whats-the-difference-anyway-1309c6a01ee9).
    In my experience, product managers essentially herd the teams by identifying, organizing, and prioritizing tasks to get things done.
    I'm not sure what traits of HRI researchers succeed in this role.
    However, one thing I observed is that those who have a knack for business—-strangely, I've met some at HRI conferences—-seem to do well as product managers.

- **Quality Assurance Engineer or Tester.**
    There are also interesting opportunities where HRI researchers can exercise their study design skills (e.g., for creating tests) and engineering skills (e.g., building tools for managing test software).

- **Robotic Perception, Motion Planning, or Control Engineer.**
    More recently, I have seen more HRI researchers with strong core robotics skills.
    If this describes you, roles related to computer vision, machine learning, or core robotics may be a good fit.
    One thing I have noticed about HRI researchers is that they want to be involved in a little bit of everything (perhaps due to the interdisciplinary nature of HRI research) or have a strong desire to contribute to the whole system or system architecture.
    If this resonates with you, you can make a significant impact by getting involved in (or even leading, if you can) cross-team projects, which are common in smaller, nimble organizations.
    Additionally, you can consider working as an application engineer and collaborating with those who work in more specialized, core robotics teams.

- **HRI Researcher.**
    This would be an obvious choice, but availability is limited.
    Also, the kind of HRI research work you do can vary greatly across companies.
    The related roles I've seen are usually focused on technical HRI research, such as working on new algorithms or computational methods supporting human-robot interaction.

I wish [Leila Takayama's HRI2022 keynote talk](https://dl.acm.org/doi/10.5555/3523760.3523762) is available somewhere.
She shares great advice on this topic in her keynote talk.
Another blog post I like is [How to Work in Robotics When You're Not a Roboticist](https://foxglove.dev/blog/how-to-work-in-robotics-when-youre-not-a-roboticist) from [foxglove](https://foxglove.dev/), a robot data infrastructure and visualization company.
It offers another perspective on how to find a role you might like.
Finally, check out my [awesome-hri-papers-for-industry](https://github.com/mjyc/awesome-hri-papers-for-industry), which showcases HRI papers that demonstrate relevant research for the industry.


## Part 2

After spending a long time in academia, working in the industry felt awkward.
Here are a few things I picked up for adjustment.

I realized that my goals in the industry are:

1. To get paid well and survive.
2. To work on high-impact problems.
3. To work effectively with my team and make each other more productive.

First one is obvious (esp., when I'm a dad), second one is my desire which is also helpful for the first, and third one was a requirement for first two.

To achieve these goals, here are the latest steps I follow:

1. **Understand the organization.**
   Ask questions such as: Which team is in charge of what?
   How do teams work together?
   Understanding the org structure helps me focus on critical tasks for myself and my team, and become a better team player.
2. **Understand how decisions are made.**
   Ask questions such as: Who are the decision makers?
   Who are the other stakeholders?
   In larger organizations, I want to know who creates my daily tasks and how.
   Understanding the decision-making process helps me talk to the right person when pitching a project/initiative, seeking feedback, finding help, or when I disagree with certain tasks.
3. **Understand the company's business model.**
   Ask questions such as: How does my company (plan to) make money?
   How do each team create business value?
   Which teams are core to the (current or future) business?

One habit I carried over from grad school is always preparing for a "defense" even when no such thing exists.
There are always suggestions for climbing the career ladder, but thinking in terms of qualification, general, and defense exams helps me understand exactly what I need to do.

- **Qualification-like Phase:** Get familiarized with the organization and tech stack, succeed in my first (assigned) project(s).
- **General-like Phase:** Find ways to make a big contribution (e.g., finding a high-impact project, joining/contributing to a core project, forming/joining a strong team), and propose projects/initiatives or prototypes.
- **General-like Phase:** Deliver and make an impact (e.g., support, maintain, grow).

One habit I needed to change dramatically was the way I collaborate/work together with others.
In grad school, I found a way to collaborate based on mutual excitement for a research topic.
However, in the workplace, people's motivations are different, and it's not always apparent what their motivations are.
It became crucial to fully understand potential collaborators' or teammates' motivations (e.g., through social settings, small tasks, cross-team meetings, etc.) before embarking on forming a team or working together on a project.


<br>

#### Footnotes

[^1] See [Frontend](https://roadmap.sh/frontend) and [Backend](https://roadmap.sh/backend) developer roadmaps to find the "industry standard" tools and technologies.
