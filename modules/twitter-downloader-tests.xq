xquery version "3.1";

import module namespace config = "http://history.state.gov/ns/xquery/twitter/config" at "config.xqm";
import module namespace twitter="http://history.state.gov/ns/xquery/twitter" at "twitter.xqm";
import module namespace twitter-dl="http://history.state.gov/ns/xquery/twitter-downloader" at "twitter-downloader.xqm";
import module namespace pt = "http://history.state.gov/ns/xquery/twitter/process-tweets" at "process-tweets.xqm";

let $count := 10
return
twitter-dl:crawl-user-timeline($count, ())
