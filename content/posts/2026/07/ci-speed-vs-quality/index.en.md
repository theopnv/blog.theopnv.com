---
title: "A short series on Test Automation"
date: 2026-07-01T00:00:00+00:00
tags: ["CI/CD", "Automation"]
categories: ["CI/CD"]
author: "Theo Penavaire"
showToc: true
TocOpen: false
draft: false
hidemeta: false
comments: true
description: "Speed or quality sometimes feels like a tradeoff. It need not be, and in fact the litterature shows both correlate. This is a short series on test automation strategies that can buy you both."
disableShare: false
disableHLJS: false
hideSummary: false
searchHidden: true
ShowReadingTime: true
ShowBreadCrumbs: true
ShowPostNavLinks: true
newsletterEn: true
cover:
    image: "images/cover.webp"
    alt: "Cover illustration: surreal landscape featuring a chaotic, congested flaky testing bottleneck and a sleek, automated validation tiers express lane"
    relative: true
---

## The Test Automation Engineer dilemma
Your company is growing (yay!). You have more customers. You add more features and support more use cases. You can't afford breakages and downtimes anymore, so you decide to improve the robustness and quality of your testing. 
In parallel, supporting your growth means hiring more developers, who need to ship fast, with early feedback and limited context-switch, while also sharing a pool of finite test and deploy resources. 
Integrating and deploying faster vs increasing test coverage is often the dilemma Test Automation Engineers face in such cases.

Here's the good news, and the premise of this series of articles: you don't actually have to choose. Years of [DORA research](https://dora.dev/) (a program seeking to "understand the capabilities that drive software delivery and operations performance") across hundreds of teams found that speed and stability are _not_ a tradeoff: they move together. The highest-performing teams ship both faster _and_ more reliably. They get there by choosing the right strategy.

## How choosing the wrong strategy impacts your business 
Here's the tradeoff:
- Running only fast tests means coverage gaps reach production, erodes confidence and loses customers.
- Running all tests on every Pull Request (PR) before landing is infeasible at scale and with a finite amount of resources. It frustrates developers and severely limits the release cadence. As Martin Fowler puts it in his excellent intro to Continuous Integration, ["the whole point of Continuous Integration is to provide rapid feedback. Nothing sucks the blood of Continuous Integration more than a build that takes a long time."](https://martinfowler.com/articles/continuousIntegration.html)

It's tempting to brute-force this problem. To just spend more $ running more tests on more machines, all the time. This works okay for a small team and app, but quickly hits limitations when the full validation suites run for hours (or even minutes), and rarely passes on the first try due to flaky tests. In 2016, Google analysed their own CI and reported that ["almost 16% of our tests have some level of flakiness"](https://testing.googleblog.com/2016/05/flaky-tests-at-google-and-how-we.html) (more than 1 in 7). At that scale a large suite almost never comes back green on the first attempt and needs reruns.

**So when brute-forcing is not an option, what systems, workflows and culture can we establish to both improve the quality of the product or service, and its delivery speed?**

## What this series covers
Fortunately the online litterature is prolific on the matter, and big tech companies engineering blogs abound in describing how they answered this question. Each article of this series will focus on one area of test automation, building on top of the Dora studies but also the Google, Meta, Spotify, Uber, Airbnb, Github engineering blogs.

1. [**Two CI strategies to keep main green: block bad changes, or land fast and chase failures**](posts/2026/07/blocking-vs-chasing-failures/): should you gate changes with a merge queue before they reach main, or let them land and rely on bisection and rollback to catch what slips through?

_[Subscribe](https://blog.theopnv.com/newsletter/) if you'd like the next parts in your inbox._