package com.foodible.http

import java.lang.annotation.*

@Target([ElementType.FIELD, ElementType.METHOD])
@Retention(RetentionPolicy.RUNTIME)
@Documented
public @interface WithHttpCacheFor {
    int value()
}