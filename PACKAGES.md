# Packages in R

##### What are Packages in R? 💾

In R, packages are the the fundamental unit of shareable code.
A package group together compiled code, R functions, data, documentation, and tests, and is easy to share with others.

__C__omprehensive __R__ __A__rchive __N__etwork, or __CRAN__, is the public directory for R packages.
CRAN contains at the the moment +9800 packages and the directory it's massively growing dy-by-day.

To check how many packages are available on CRAN just write this command in your R console:
`nrow(available.packages())` and it will return the number of available packages.

##### Common operations with Packages 📊

You install them from CRAN with `install.packages("myPackage")`.
You use them in your R project with `library("x")` OR `require("myPackage")`.
You get immediate help with `?myPackage` and `help(package = "myPackage")`.

##### Cheatsheet for Marketing Packages in R 📚

_Legend_
Analytics: 📕
CRM: 📙
Social Media: 📘
Advertising: 📗
Other: 📑

| Package Name                 | Description                         | Category                          | Doc                                  |
|---------------------------------------|--------------------------------|-------------------------------|------------------------------------------------|
| `googleAnalyticsR` | A new Google Analytics R library using googleAuthR | Analytics | [📕](https://github.com/MarkEdmondson1234/googleAnalyticsR) |
| `RGA` | A Google Analytics API client for R [http://cran.r-project.org/package=RGA](http://cran.r-project.org/package=RGA) | Analytics | [📕](https://github.com/artemklevtsov/RGA) |
| `RGoogleAnalytics` | R Wrapper to easily extract data from the Google Analytics API | Analytics | [📕](https://github.com/Tatvic/RGoogleAnalytics) |
| `ganalytics` | Basic interaction with Google Analytics using R | Analytics | [📕](https://github.com/jdeboer/ganalytics) |
| `rga` | Extract data from your Google Analytics into R | Analytics | [📕](https://github.com/skardhamar/rga) |
| `GAR` | The package is designed to help easily retreive data from Google Analytics | Analytics | [📕](https://github.com/andrewgeisler/GAR) |
| `RMixpanel` | Interface from R to Mixpanel's API endpoints | Analytics | [📕](https://github.com/7factory/RMixpanel) |
| `piwikr` | A Piwik API client for R  | Analytics | [📕](https://github.com/amarder/piwikr) |
| `RSiteCatalyst` | R client library for the Adobe Analytics 1.4 API | Analytics | [📕](#ami-gotchas-and-limitations) |
| `mixpanelR` | R interface for MixPanel data export API | Analytics | [📕](https://github.com/realAkhmed/mixpanelR) |
| `kissr` | Extract data from your Kiss Metrics Account into R  | Analytics | [📕](https://github.com/unbounce/kissr) |
| `rgauges` | R wrapper to the gaug.es API for website analytics | Analytics | [📕](https://github.com/ropensci/rgauges) |
| `searchConsoleR` | R interface with Google Search Console API v3, including Search Analytics. | Analytics | [📕](https://github.com/MarkEdmondson1234/searchConsoleR) |
| `RForcecom` | RForcecom provides the connection to Force.com and Salesforce.com from R.n | CRM | [📙](https://github.com/hiratake55/RForcecom) |
| `rsalesforce` | R bindings to query Salesforce database.| CRM | [📙](https://github.com/mebaran/rsalesforce) |
| `jedi` | An R package connecting Salesforce and R through the Force.com REST API | Social Media | [📘](https://github.com/nteetor/jedi) |
| `SocialMediaMineR ` | A Social Media Search and Analytic Tool (Facebook, LinkedIn, Pinterest, StumbleUpon, Twitter, Reddit) | Social Media | [📘](https://cran.r-project.org/web/packages/SocialMediaMineR/index.html) |
| `twitteR` | R based twitter client | Social Media | [📘](https://github.com/geoffjentry/twitteR) |
| `streamR` | Access to Twitter Streaming API via R | Social Media  |  [📘](https://github.com/pablobarbera/streamR) |
| `smappR` | Tools for analysis of Twitter data | Social Media | [📘](https://github.com/SMAPPNYU/smappR) |
| `RTwitterAPI ` | Making requests to Twitter's REST API v1.1 | Social Media | [📘](https://github.com/joyofdata/RTwitterAPI) |
| `Rfacebook` | Access to Facebook API via R | Social Media | [📘](https://github.com/pablobarbera/Rfacebook) |
| `Rlinkedin` | R package to access the LinkedIn API| Social Media | [📘](https://github.com/mpiccirilli/Rlinkedin) |
| `linkedinR` | Another R package to acces the Linkedin API| Social Media | [📘](https://github.com/RossiLorenzo/linkedinR) |
| `instaR` | Access to Instagram API via R | Social Media | [📘](https://github.com/pablobarbera/instaR) |
| `tuber` | Access YouTube API via R | Social Media | [📘](https://github.com/soodoku/tuber) |
| `youtubeAnalyticsR` | YouTube Analytics API into R | Advertising | [📗](https://github.com/MarkEdmondson1234/youtubeAnalyticsR) |
| `youTubeDataR ` | Integrates R and the YouTube Data API | Advertising | [📗](https://github.com/JohnCoene/youTubeDataR) |
| `plusser` | A Google+ API Interface for R | Advertising | [📗](https://github.com/tophcito/plusser) |
| `tumblR` | Provides an R-interface to the Tumblr web API | Advertising | [📗](https://cran.r-project.org/web/packages/tumblR/index.html) |
| `RAdwords` | Loading Google Adwords data into R (Needs AdWords MCC!) | Advertising | [📗](https://github.com/jburkhardt/RAdwords) |
| `fbRads` | Analyze and manage Facebook ads from R to access their Marketing APIs | Advertising |[📗](https://github.com/cardcorp/fbRads) |
| `zendeskR` | This package provides an R wrapper for the Zendesk API | CRM | [📙](https://cran.r-project.org/web/packages/zendeskR/index.html) |
| `gtrends ` | R functions to perform and display Google Trends queries | Other | [📑](https://github.com/PMassicotte/gtrendsR) |
