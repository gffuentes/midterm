#WTF Is Trending????
---

###About

This app allows you to type in a [Yahoo! WoeId](https://developer.yahoo.com/geo/geoplanet/guide/concepts.html) which you can look up using this [link](http://woeid.rosselliot.co.nz/lookup/seoul). The result is the top 10 trending people or hashtags on Twitter as well as an [urbandictionary](http://www.urbandictionary.com/) and/or [tagdef](https://tagdef.com/) definition if available! Have fun!

###Disclaimer/To Fix

My original intention was to be able to search by zipcode. Unfortunately, the Yahoo! API source that would help me do that (plug in ~WOEID~Zip, get ~Zip~WoeID) is broken. I reached out to Yahoo! to no avail. Others have had the same issue oddly enough...
<br><br>
Also, unfortunately not every WoeID works. If the one you are trying causes the app to ask you to try a different one, please try a different one rather than just trying the same one again. Also, Twitter only supports 15 API calls through this source ever 3 minutes (? 1 minute maybe ?) so be aware of that as well.

###API Sources

1. [Twitter](https://dev.twitter.com/docs/api/1.1/get/trends/place)
2. [Urban Dictionary](http://api.urbandictionary.com/v0/define?term=api)
3. [Tagdef](https://api.tagdef.com/)

####Hope you enjoy .^_"!