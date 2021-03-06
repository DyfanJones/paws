% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/codeguruprofiler_operations.R
\name{codeguruprofiler_get_profile}
\alias{codeguruprofiler_get_profile}
\title{Gets the aggregated profile of a profiling group for a specified time
range}
\usage{
codeguruprofiler_get_profile(accept, endTime, maxDepth, period,
  profilingGroupName, startTime)
}
\arguments{
\item{accept}{The format of the returned profiling data. The format maps to the
\code{Accept} and \code{Content-Type} headers of the HTTP request. You can specify
one of the following: or the default .\preformatted{ &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;application/json&lt;/code&gt; â€” standard JSON format &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;application/x-amzn-ion&lt;/code&gt; â€” the Amazon Ion data format. For more information, see &lt;a href="http://amzn.github.io/ion-docs/"&gt;Amazon Ion&lt;/a&gt;. &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
}}

\item{endTime}{The end time of the requested profile. Specify using the ISO 8601
format. For example, 2020-06-01T13:15:02.001Z represents 1 millisecond
past June 1, 2020 1:15:02 PM UTC.

If you specify \code{endTime}, then you must also specify \code{period} or
\code{startTime}, but not both.}

\item{maxDepth}{The maximum depth of the stacks in the code that is represented in the
aggregated profile. For example, if CodeGuru Profiler finds a method
\code{A}, which calls method \code{B}, which calls method \code{C}, which calls method
\code{D}, then the depth is 4. If the \code{maxDepth} is set to 2, then the
aggregated profile contains representations of methods \code{A} and \code{B}.}

\item{period}{Used with \code{startTime} or \code{endTime} to specify the time range for the
returned aggregated profile. Specify using the ISO 8601 format. For
example, \code{P1DT1H1M1S}.\preformatted{ &lt;p&gt; To get the latest aggregated profile, specify only &lt;code&gt;period&lt;/code&gt;. &lt;/p&gt;
}}

\item{profilingGroupName}{[required] The name of the profiling group to get.}

\item{startTime}{The start time of the profile to get. Specify using the ISO 8601 format.
For example, 2020-06-01T13:15:02.001Z represents 1 millisecond past June
1, 2020 1:15:02 PM UTC.\preformatted{ &lt;p&gt; If you specify &lt;code&gt;startTime&lt;/code&gt;, then you must also specify &lt;code&gt;period&lt;/code&gt; or &lt;code&gt;endTime&lt;/code&gt;, but not both. &lt;/p&gt;
}}
}
\description{
Gets the aggregated profile of a profiling group for a specified time
range. Amazon CodeGuru Profiler collects posted agent profiles for a
profiling group into aggregated profiles.
}
\details{
\preformatted{ &lt;note&gt; &lt;p&gt; Because aggregated profiles expire over time &lt;code&gt;GetProfile&lt;/code&gt; is not idempotent. &lt;/p&gt; &lt;/note&gt; &lt;p&gt; Specify the time range for the requested aggregated profile using 1 or 2 of the following parameters: &lt;code&gt;startTime&lt;/code&gt;, &lt;code&gt;endTime&lt;/code&gt;, &lt;code&gt;period&lt;/code&gt;. The maximum time range allowed is 7 days. If you specify all 3 parameters, an exception is thrown. If you specify only &lt;code&gt;period&lt;/code&gt;, the latest aggregated profile is returned. &lt;/p&gt; &lt;p&gt; Aggregated profiles are available with aggregation periods of 5 minutes, 1 hour, and 1 day, aligned to UTC. The aggregation period of an aggregated profile determines how long it is retained. For more information, see &lt;a href="https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_AggregatedProfileTime.html"&gt; &lt;code&gt;AggregatedProfileTime&lt;/code&gt; &lt;/a&gt;. The aggregated profile's aggregation period determines how long it is retained by CodeGuru Profiler. &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; If the aggregation period is 5 minutes, the aggregated profile is retained for 15 days. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; If the aggregation period is 1 hour, the aggregated profile is retained for 60 days. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; If the aggregation period is 1 day, the aggregated profile is retained for 3 years. &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;There are two use cases for calling &lt;code&gt;GetProfile&lt;/code&gt;.&lt;/p&gt; &lt;ol&gt; &lt;li&gt; &lt;p&gt; If you want to return an aggregated profile that already exists, use &lt;a href="https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ListProfileTimes.html"&gt; &lt;code&gt;ListProfileTimes&lt;/code&gt; &lt;/a&gt; to view the time ranges of existing aggregated profiles. Use them in a &lt;code&gt;GetProfile&lt;/code&gt; request to return a specific, existing aggregated profile. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; If you want to return an aggregated profile for a time range that doesn't align with an existing aggregated profile, then CodeGuru Profiler makes a best effort to combine existing aggregated profiles from the requested time range and return them as one aggregated profile. &lt;/p&gt; &lt;p&gt; If aggregated profiles do not exist for the full time range requested, then aggregated profiles for a smaller time range are returned. For example, if the requested time range is from 00:00 to 00:20, and the existing aggregated profiles are from 00:15 and 00:25, then the aggregated profiles from 00:15 to 00:20 are returned. &lt;/p&gt; &lt;/li&gt; &lt;/ol&gt;
}
}
\section{Request syntax}{
\preformatted{svc$get_profile(
  accept = "string",
  endTime = as.POSIXct(
    "2015-01-01"
  ),
  maxDepth = 123,
  period = "string",
  profilingGroupName = "string",
  startTime = as.POSIXct(
    "2015-01-01"
  )
)
}
}

\keyword{internal}
