# Site Speed Metrics by Browser & Browser Version

library("googleAnalyticsR")
library("ggplot2")

ga_id = 00000000
ga_auth()

gadata <- google_analytics_4(ga_id, 
                              date_range = c("2016-01-01", "2017-01-01"), 
                              metrics = c("ga:avgPageLoadTime", "ga:avgDomInteractiveTime", "ga:avgDomContentLoadedTime", "ga:pageLoadSample"), 
                              dimensions = c("ga:browser", "ga:browserVersion")
)

# Now that we have a few data we have to manipulate them in order to pull out some infos

gadata$avgPageLoadTime <- round(gadata$avgPageLoadTime, digits = 2)
gadata$avgDomInteractiveTime <- round(gadata$avgDomInteractiveTime, digits = 2)
gadata$avgDomContentLoadedTime <- round(gadata$avgDomContentLoadedTime, digits = 2)

gadata # Now looks better, uh?

# Now let's order our data
gadata2 <- gadata[with(gadata, order(-gadata$avgPageLoadTime)), ]

# Let's make a more interesting scatterplot graph
ggplot(gadata, aes(x=browserVersion, y=avgPageLoadTime, size = avgPageLoadTime, color = browser)) +
  geom_point() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

rm(list=ls()) # Now clean up your environment

# If you care about UX (and you should), you care about site speed.
# This R script will help you understading whether or not your site has a problem.
# Which browsers are experiencing slow load times?
# Which versions of those browsers are causing the most damage?


# If it were me, I would add conversion rate and revenue metrics.
# That way, not only do you know exactly where you’re leaking money,
# but you know exactly how rapidly you’re leaking money as well.

# That will allow you to prioritize your patching.

# It’s sorted highest-lowest “Avg. Page Load Time (sec)” 
# so that you can instantly see your biggest problem areas.





