---
title: "Testing speed vs coverage: how to stop choosing"
date: 2026-06-30T00:00:00+00:00
tags: ["CI/CD", "Automation"]
categories: ["CI/CD"]
author: "Theo Penavaire"
showToc: true
TocOpen: false
draft: false
hidemeta: false
comments: false
description: "Speed or coverage feels like a tradeoff. It need not be. A short series on testing strategies that buy you both."
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
Your company is growing. You have more customers. You add more features and support more use cases. You can't afford breakages and downtimes anymore, so you decide to improve the robustness and quality of your testing. 
In parallel, supporting your growth means hiring more developers, who need to ship fast, with early feedback and limited context-switch, while also sharing a pool of finite test and deploy resources. 
Covering more or staying fast is often the dilemma Test Automation Engineers face.

Here's the good news, and the premise of this article: you don't actually have to choose. Years of [DORA research](https://dora.dev/) (a program seeking to "understand the capabilities that drive software delivery and operations performance") across tens of thousands of teams found that speed and stability are _not_ a tradeoff: they move together. The highest-performing teams ship both faster _and_ more reliably. They get there by choosing the right strategy.
## How choosing the wrong strategy impacts your business 
Here's the tradeoff:
- Running only fast tests means coverage gaps reach production, erodes confidence and loses customers.
- Running all tests on every Pull Request (PR) before landing is infeasible at scale and with a finite amount of resources. It frustrates developers and severely limits the release cadence. As Martin Fowler puts it in his excellent intro to Continuous Integration, ["the whole point of Continuous Integration is to provide rapid feedback. Nothing sucks the blood of Continuous Integration more than a build that takes a long time."](https://martinfowler.com/articles/continuousIntegration.html)

It's tempting to brute-force this problem. Just spend more $ running more tests on more machines, all the time. This works okay for a small team and app, but quickly hits limitations when the full validation suites run for hours (or even minutes), and rarely passes on the first try due to flaky tests. In 2016, Google analysed their own CI and reported that ["almost 16% of our tests have some level of flakiness"](https://testing.googleblog.com/2016/05/flaky-tests-at-google-and-how-we.html) (more than 1 in 7). At that scale a large suite almost never comes back green on the first attempt and needs reruns.

**When brute-forcing is no longer an option, the real question becomes: When to test and signal failure, in what order and how?**
## What this series covers
This is the first, short post of an upcoming series. Each part will analyse a single lever and how the wider industry has approached the same problem.

1. **Validation tiers: run the right tests at the right stage**: catch failures as early and as cheaply as possible.
2. **Smart Validation: test only what a change can affect**: instead of running everything, run the subset a change could actually break.
3. **Batch landing & bisection: keep main green at scale**: when many PRs land at once, how merge queues test them together, pinpoint the culprit, and keep the mainline shippable.

Each part stands on its own, but they compound: tiers give you the structure, smart triggers cut the cost of each tier, and batch landing keeps the whole thing green as your team grows.

_Part 1 lands next week. [Subscribe](https://blog.theopnv.com/newsletter/) if you'd like it in your inbox._