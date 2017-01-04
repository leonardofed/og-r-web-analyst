The Open Guide to R for Web Analysts
=====================================

📙 R & Google Analytics — a practical guide for web analysts

[![Slack Chat](http://i.imgur.com/rTgJgXH.png "Join us. Anyone is welcome!" )](https://og-aws.slack.lexikon.io/)

[Credits](AUTHORS.md) ∙ [Contributing guidelines](CONTRIBUTE.md) ∙ [Contributing guidelines](CONTRIBUTING.md)

Table of Contents
-----------------

**Scope of this Open Project**

-	[Why an Open Guide?](#why)
-	[For who](#who)
-	[How to use this guide](#how)

**How this Open Guide is Structured**

-	[The line between Google Analytics and R is blurring](#from-ga-to-r)
-	[All you need to know about R but you were afraid to ask](#managing-aws)
-	[What are the packages that you need to get started](#managing-servers-and-applications)
- [Library of R scripts ready-to-use](#r-library)
- [Google Analytics API Limits ](#ga-api-limits)

The line between Google Analytics and R is blurring
---------------------------------------------------

Data Science and Google Analytics until only a few years ago was two completely different topics.
Two different areas, two different topics, two different roles.

Marketing uses Google Analytics to learn how users interact with the site.
Data science uses DWH to extract data on more product sensitive data.

Google Analytics is exactly in the between of these two areas.

Last week Google made an explicit reference to GA as a data science enabler in order to create customer value on the official blog.

``The study concluded that marketing organizations need analytics professionals who understand data and the technologies that collect, house, and integrate it.1 ``

As the products scenario becomes more and more complex marketing team will need to push the boundaries of data science and gain the ability to perform internally more complex data analysis.

Here's where this Open Guide for Web Analyst comes in.

The scope of this project is to help people:

1. *From Data Informed to Data Driven.*
The hard problem for today's marketing team is getting access to data, it's how to move those data into insights and then into action
2. *Pushing the boundaries of Data Science*
Helping people who use Google Analytics on a daily basis to get more insights from those data
3. *Stop using Excel and start using R*.
Excel is powerful tool (as Joel Sposkly teaches) but for more in-depth analysis you need a flexible language.
R is without any doubt the best option out there for that.

All you need to know about R but you were afraid to ask
-----------------

While this Open Project aims to frame R specifically into Google Analytics, it'll also cover the basic concepts of R for those users who are not yet familiar it.
In this section we will be covering the basic knowledge you need to know to start using R — form the initial setup with R studio till the basics concept of the language.
If you already have a nice level of experience with R, feel free to skip this part.


Glossary: -> LEARN-R.rmd

- Installing R
- Using R Studio
- Built-in dataset vs. Importing data
- Using variables: Numeric variables vs. Text variables vs. Vectors vs. Data Frames
- Google Analytics API
- Bar charts vs. Pie charts vs. histogram vs. box plot
- Calculating frequencies vs. descriptives
- Single proportion for Hypothesis test & Confidential interval
- Single mean for Hypothesis test & Confidential interval
- Examining outliers
- Transforming variables
- Calculating correlation
- Calculating regression
- Calculating multiple regression
- Computing cluster analysis

Real examples

-

What does this mean?

1. We'll talk about the must-have R packages that you have to install when performing analysis with GA
2. We'll scratch the surface of R in order to make this this guide helpful for anyone who's willing to learn R
3. We'll bring you significant examples, ready to be used


What are the essential packages that you need to use
-----------------

- What r R package
- How to install them and how to use them
- What you need

| Package Name                 | Documentation                         | Tips                          | Gotchas                                        |
|---------------------------------------|--------------------------------|-------------------------------|------------------------------------------------|
| [RGoogleAnalytics](#security-and-iam) | [📗](#security-and-iam-basics) | [📘](#security-and-iam-tips) | [📙](#security-and-iam-gotchas-and-limitations) |
| [RGA](#s3) | [📗](#s3-basics) | [📘](#s3-tips) | [📙](#s3-gotchas-and-limitations) |
| [googleAnalyticsR](#ec2) | [📗](#ec2-basics) | [📘](#ec2-tips) | [📙](#ec2-gotchas-and-limitations) |
| [rga](#cloudwatch) | [📗](#cloudwatch-basics) | [📘](#cloudwatch-tips) | [📙](#cloudwatch-gotchas-and-limitations) |
| [ganalytics](#amis) | [📗](#ami-basics) | [📘](#ami-tips) | [📙](#ami-gotchas-and-limitations) |
| [Auto Scaling](#auto-scaling) | [📗](#auto-scaling-basics) | [📘](#auto-scaling-tips) | [📙](#auto-scaling-gotchas-and-limitations) |
| [GAR](#ebs) | [📗](#ebs-basics) | [📘](#ebs-tips) | [📙](#ebs-gotchas-and-limitations) |

Library of R scripts ready-to-use
-----------------


What are the essential packages that you need to use
-----------------

- What r R package
- How to install them and how to use them
- What you need

| Package Name                 | Documentation                         | Tips                          | Gotchas                                        |
|---------------------------------------|--------------------------------|-------------------------------|------------------------------------------------|
| [RGoogleAnalytics](#security-and-iam) | [📗](#security-and-iam-basics) | [📘](#security-and-iam-tips) | [📙](#security-and-iam-gotchas-and-limitations) |
| [RGA](#s3) | [📗](#s3-basics) | [📘](#s3-tips) | [📙](#s3-gotchas-and-limitations) |
| [googleAnalyticsR](#ec2) | [📗](#ec2-basics) | [📘](#ec2-tips) | [📙](#ec2-gotchas-and-limitations) |
| [rga](#cloudwatch) | [📗](#cloudwatch-basics) | [📘](#cloudwatch-tips) | [📙](#cloudwatch-gotchas-and-limitations) |
| [ganalytics](#amis) | [📗](#ami-basics) | [📘](#ami-tips) | [📙](#ami-gotchas-and-limitations) |
| [Auto Scaling](#auto-scaling) | [📗](#auto-scaling-basics) | [📘](#auto-scaling-tips) | [📙](#auto-scaling-gotchas-and-limitations) |
| [GAR](#ebs) | [📗](#ebs-basics) | [📘](#ebs-tips) | [📙](#ebs-gotchas-and-limitations) |


How to visualize you data
--------------------
