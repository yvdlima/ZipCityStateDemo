# ZipCityState Demo

Demo project for the [ZipCityState](https://github.com/yvdlima/ZipCityState) grails 4 plugin.

## Dependencies

This project was coded with Grails 4.0.10 and Java 11, I will leave to you on how to install both.

```text
| Grails Version: 4.0.10
| JVM Version: 11.0.10
```

## How to use

Pull the ZipCityState repo in the same folder as this project and then add a `settings.gradle` as well containing both projects, like this:

```text
Root/
    settings.gradle
    ZipCityState/
    ZipCityStateDemo/
```

Add the following code in the `settings.gradle` file:

```groovy
include "ZipCityStateDemo", "ZipCityState"
```

Now go to `ZipCityState` plugin and run `grails install`. This will keep the plugin src in the classpath using `mavenLocal()`.

Finally, go back to `ZipCityStateDemo` and run `grails run-app`! Any change done in the plugin will reflect in the application, no need to reinstall the plugin every time.

## Caveat

If you are developing in the plugin for some masochist some times weird stuff happens and you will have to stop the server and run `grails clean` in both applications for the weird stuff to go away.
