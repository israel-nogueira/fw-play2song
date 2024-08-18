var currentCache = {
    offline: 'autocache-1'
};
const offlineUrl = '/public/pwa/offline.html';

this.addEventListener('install', event => {
    event.waitUntil(
        caches.open(currentCache.offline).then(function (cache) {
            return cache.addAll([
                offlineUrl
            ]);
        })
    );
});
self.addEventListener('fetch', function (event) {
    event.respondWith(
        fetch(event.request).catch(function () {
            return caches.match(event.request).then(function (response) {
                return response || caches.match('/public/pwa/offline.html');
            });
        })
    );
});

// Adicione o cabeçalho Service-Worker-Allowed na resposta
self.addEventListener('fetch', function (event) {
    event.respondWith(
        new Response(null, {
            headers: { 'Service-Worker-Allowed': '/' }
        })
    );
});



