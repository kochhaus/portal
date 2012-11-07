package portal

import com.foodible.http.WithHttpCacheForService

class AnnotationFilters {

    WithHttpCacheForService withHttpCacheForService

    def filters = {
        all(controller:'*', action:'*') {
            before = {
                final long cacheTime = withHttpCacheForService.getCacheTime(controllerName, actionName)
                if (cacheTime != WithHttpCacheForService.NO_CACHE){
                    long current = System.currentTimeMillis();
                    long expires = current + cacheTime;
                    int maxAge = Math.round(cacheTime / 1000)
                    response.addHeader('Cache-Control', 'Public')
                    response.addIntHeader('max-age', maxAge);
                    response.addDateHeader('Expires', expires);
                    response.addDateHeader('Last-Modified', current);
                }
            }
        }
    }
}
