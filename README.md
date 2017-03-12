# Smogler #

Location based air quality information, on your iPhone and your Apple Watch. 

## How do I get started? ##

The first step is to [acquire your own token for the WAQI API access](https://aqicn.org/data-platform/token/#/).

Look up the `token` constant in `APIService.swift` and replace the dummy string with your token.

The project has no external dependencies at the moment, so you should be fine building/running it. :+1:

### Where's the air quality data coming from? ###

From the [public API](https://aqicn.org/api/) of the [World Air Quality Index Project](https://waqi.info/) originating EPA.

## How does the app look like? ##

1. iPhone app

![Smogler iPhone](https://cloud.githubusercontent.com/assets/1460573/23830862/a4c90eca-0714-11e7-8062-6abe9c19e193.PNG)

2. Watch app

![Smogler Watch](https://cloud.githubusercontent.com/assets/1460573/23830875/e856e7ca-0714-11e7-8762-de231a79a952.PNG)

3. Watch complication

![Smogler Watch complication](https://cloud.githubusercontent.com/assets/1460573/23830864/ab7f986a-0714-11e7-9823-4edb5f64fa5d.PNG)

## What's to be improved atm?

There's always room for improvement, Smogler is no exception. 

1. Make sure things fetch the API only when necessary and try to move all the load possible to the iOS app. That was the initial goal, but there are so many scenarios (iOS app active, background, etc., Watch app active, background, ...), I might have gotten a bit lost sorting these out.

2. Writing tests for the Watch extension is not trivial, but it would be nice to see how it's possible.

3. Push notifications - to be alerted in case the air quality dropped, for example.

4. More supported complication families?
