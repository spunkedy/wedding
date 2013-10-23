package co.withgod.hitched

import groovy.time.TimeCategory
import groovy.time.TimeDuration

class MainController {

    def index() {

        def start = new Date();
        def end = Date.parse("yyyy-MM-dd HH:mm:ss","2013-12-07 16:00:00")
        [daysLeft:TimeCategory.minus(end, start).days]


    }

    def location() {}


    def registries() {}

}
