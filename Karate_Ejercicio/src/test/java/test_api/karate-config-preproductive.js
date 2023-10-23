function fn() {
    karate.configure('connectTimeout', 10000);
    karate.configure('readTimeout', 10000);

    var baseUrl = karate.properties['baseUrl'] || ' https://fakestoreapi.com/products/category/(category).'

 return {
        api: {
           baseUrl: baseUrl
        }
    };
}