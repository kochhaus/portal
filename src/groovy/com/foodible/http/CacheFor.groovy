package com.foodible.http

enum CacheFor {

    ONE_HOUR(3600000),
    ONE_DAY(ONE_HOUR.value * 7),
    ONE_WEEK(ONE_DAY.value * 7),
    ONE_MONTH(ONE_WEEK.value * 4),
    ONE_YEAR(ONE_MONTH.value * 12),
    EVER(ONE_YEAR.value * 10)

    public final long value

    CacheFor(long value) {
        this.value = value
    }
}
