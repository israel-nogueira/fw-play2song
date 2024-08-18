<script>
<? 
    ob_clean(); 
    header('Content-Type: application/javascript');
    // function extractUrlsFromHtml($html) {
    //     $urls = array();
    //     $dom = new DOMDocument();
    //     $dom->loadHTML($html);
    //     $scripts = $dom->getElementsByTagName('script');
    //     foreach ($scripts as $script) {
    //         $src = $script->getAttribute('src');
    //         if (!empty($src)) {$urls[] = explode('?',$src)[0];}
    //     }
    //     $links = $dom->getElementsByTagName('link');
    //     foreach ($links as $link) {
    //         $href = $link->getAttribute('href');
    //         if (!empty($href)) {$urls[] = explode('?',$href)[0];}
    //     }
    //     $images = $dom->getElementsByTagName('img');
    //     foreach ($images as $image) {
    //         $src = $image->getAttribute('src');
    //         if (!empty($src)) {$urls[] = explode('?',$src)[0];}
    //     }
    //     return $urls;
    // }
    // $scriptsHead = extractUrlsFromHtml(file_get_contents(__DIR__.'/../../app/system/views/desktop/scriptsHead.blade.php'));
    // $scriptsFooter = extractUrlsFromHtml(file_get_contents(__DIR__.'/../../app/system/views/desktop/scriptsFooter.blade.php'));
    // $IMPORTED_FRONT =array_unique(array_merge($scriptsHead,$scriptsFooter));
?>


const currentCache = { offline: 'cache-office', };

const offlineUrls = [
    '/public/pwa/offline.html',
    '/public/assets/images/brand-logos/favicon.ico',
    '/public/assets/libs/bootstrap/css/bootstrap.min.css',
    '/public/assets/css/styles.min.css',
    "/public/pwa/icones/windows11/SmallTile.scale-100.png",
    "/public/pwa/icones/windows11/SmallTile.scale-125.png",
    "/public/pwa/icones/windows11/SmallTile.scale-150.png",
    "/public/pwa/icones/windows11/SmallTile.scale-200.png",
    "/public/pwa/icones/windows11/SmallTile.scale-400.png",
    "/public/pwa/icones/windows11/Square150x150Logo.scale-100.png",
    "/public/pwa/icones/windows11/Square150x150Logo.scale-125.png",
    "/public/pwa/icones/windows11/Square150x150Logo.scale-150.png",
    "/public/pwa/icones/windows11/Square150x150Logo.scale-200.png",
    "/public/pwa/icones/windows11/Square150x150Logo.scale-400.png",
    "/public/pwa/icones/windows11/Wide310x150Logo.scale-100.png",
    "/public/pwa/icones/windows11/Wide310x150Logo.scale-125.png",
    "/public/pwa/icones/windows11/Wide310x150Logo.scale-150.png",
    "/public/pwa/icones/windows11/Wide310x150Logo.scale-200.png",
    "/public/pwa/icones/windows11/Wide310x150Logo.scale-400.png",
    "/public/pwa/icones/windows11/LargeTile.scale-100.png",
    "/public/pwa/icones/windows11/LargeTile.scale-125.png",
    "/public/pwa/icones/windows11/LargeTile.scale-150.png",
    "/public/pwa/icones/windows11/LargeTile.scale-200.png",
    "/public/pwa/icones/windows11/LargeTile.scale-400.png",
    "/public/pwa/icones/windows11/Square44x44Logo.scale-100.png",
    "/public/pwa/icones/windows11/Square44x44Logo.scale-125.png",
    "/public/pwa/icones/windows11/Square44x44Logo.scale-150.png",
    "/public/pwa/icones/windows11/Square44x44Logo.scale-200.png",
    "/public/pwa/icones/windows11/Square44x44Logo.scale-400.png",
    "/public/pwa/icones/windows11/StoreLogo.scale-100.png",
    "/public/pwa/icones/windows11/StoreLogo.scale-125.png",
    "/public/pwa/icones/windows11/StoreLogo.scale-150.png",
    "/public/pwa/icones/windows11/StoreLogo.scale-200.png",
    "/public/pwa/icones/windows11/StoreLogo.scale-400.png",
    "/public/pwa/icones/windows11/SplashScreen.scale-100.png",
    "/public/pwa/icones/windows11/SplashScreen.scale-125.png",
    "/public/pwa/icones/windows11/SplashScreen.scale-150.png",
    "/public/pwa/icones/windows11/SplashScreen.scale-200.png",
    "/public/pwa/icones/windows11/SplashScreen.scale-400.png",
    "/public/pwa/icones/windows11/Square44x44Logo.targetsize-16.png",
    "/public/pwa/icones/windows11/Square44x44Logo.targetsize-20.png",
    "/public/pwa/icones/windows11/Square44x44Logo.targetsize-24.png",
    "/public/pwa/icones/windows11/Square44x44Logo.targetsize-30.png",
    "/public/pwa/icones/windows11/Square44x44Logo.targetsize-32.png",
    "/public/pwa/icones/windows11/Square44x44Logo.targetsize-36.png",
    "/public/pwa/icones/windows11/Square44x44Logo.targetsize-40.png",
    "/public/pwa/icones/windows11/Square44x44Logo.targetsize-44.png",
    "/public/pwa/icones/windows11/Square44x44Logo.targetsize-48.png",
    "/public/pwa/icones/windows11/Square44x44Logo.targetsize-60.png",
    "/public/pwa/icones/windows11/Square44x44Logo.targetsize-64.png",
    "/public/pwa/icones/windows11/Square44x44Logo.targetsize-72.png",
    "/public/pwa/icones/windows11/Square44x44Logo.targetsize-80.png",
    "/public/pwa/icones/windows11/Square44x44Logo.targetsize-96.png",
    "/public/pwa/icones/windows11/Square44x44Logo.targetsize-256.png",
    "/public/pwa/icones/windows11/Square44x44Logo.altform-unplated_targetsize-16.png",
    "/public/pwa/icones/windows11/Square44x44Logo.altform-unplated_targetsize-20.png",
    "/public/pwa/icones/windows11/Square44x44Logo.altform-unplated_targetsize-24.png",
    "/public/pwa/icones/windows11/Square44x44Logo.altform-unplated_targetsize-30.png",
    "/public/pwa/icones/windows11/Square44x44Logo.altform-unplated_targetsize-32.png",
    "/public/pwa/icones/windows11/Square44x44Logo.altform-unplated_targetsize-36.png",
    "/public/pwa/icones/windows11/Square44x44Logo.altform-unplated_targetsize-40.png",
    "/public/pwa/icones/windows11/Square44x44Logo.altform-unplated_targetsize-44.png",
    "/public/pwa/icones/windows11/Square44x44Logo.altform-unplated_targetsize-48.png",
    "/public/pwa/icones/windows11/Square44x44Logo.altform-unplated_targetsize-60.png",
    "/public/pwa/icones/windows11/Square44x44Logo.altform-unplated_targetsize-64.png",
    "/public/pwa/icones/windows11/Square44x44Logo.altform-unplated_targetsize-72.png",
    "/public/pwa/icones/windows11/Square44x44Logo.altform-unplated_targetsize-80.png",
    "/public/pwa/icones/windows11/Square44x44Logo.altform-unplated_targetsize-96.png",
    "/public/pwa/icones/windows11/Square44x44Logo.altform-unplated_targetsize-256.png",
    "/public/pwa/icones/windows11/Square44x44Logo.altform-lightunplated_targetsize-16.png",
    "/public/pwa/icones/windows11/Square44x44Logo.altform-lightunplated_targetsize-20.png",
    "/public/pwa/icones/windows11/Square44x44Logo.altform-lightunplated_targetsize-24.png",
    "/public/pwa/icones/windows11/Square44x44Logo.altform-lightunplated_targetsize-30.png",
    "/public/pwa/icones/windows11/Square44x44Logo.altform-lightunplated_targetsize-32.png",
    "/public/pwa/icones/windows11/Square44x44Logo.altform-lightunplated_targetsize-36.png",
    "/public/pwa/icones/windows11/Square44x44Logo.altform-lightunplated_targetsize-40.png",
    "/public/pwa/icones/windows11/Square44x44Logo.altform-lightunplated_targetsize-44.png",
    "/public/pwa/icones/windows11/Square44x44Logo.altform-lightunplated_targetsize-48.png",
    "/public/pwa/icones/windows11/Square44x44Logo.altform-lightunplated_targetsize-60.png",
    "/public/pwa/icones/windows11/Square44x44Logo.altform-lightunplated_targetsize-64.png",
    "/public/pwa/icones/windows11/Square44x44Logo.altform-lightunplated_targetsize-72.png",
    "/public/pwa/icones/windows11/Square44x44Logo.altform-lightunplated_targetsize-80.png",
    "/public/pwa/icones/windows11/Square44x44Logo.altform-lightunplated_targetsize-96.png",
    "/public/pwa/icones/windows11/Square44x44Logo.altform-lightunplated_targetsize-256.png",
    "/public/pwa/icones/android/android-launchericon-512-512.png",
    "/public/pwa/icones/android/android-launchericon-192-192.png",
    "/public/pwa/icones/android/android-launchericon-144-144.png",
    "/public/pwa/icones/android/android-launchericon-96-96.png",
    "/public/pwa/icones/android/android-launchericon-72-72.png",
    "/public/pwa/icones/android/android-launchericon-48-48.png",
    "/public/pwa/icones/ios/16.png",
    "/public/pwa/icones/ios/20.png",
    "/public/pwa/icones/ios/29.png",
    "/public/pwa/icones/ios/32.png",
    "/public/pwa/icones/ios/40.png",
    "/public/pwa/icones/ios/50.png",
    "/public/pwa/icones/ios/57.png",
    "/public/pwa/icones/ios/58.png",
    "/public/pwa/icones/ios/60.png",
    "/public/pwa/icones/ios/64.png",
    "/public/pwa/icones/ios/72.png",
    "/public/pwa/icones/ios/76.png",
    "/public/pwa/icones/ios/80.png",
    "/public/pwa/icones/ios/87.png",
    "/public/pwa/icones/ios/100.png",
    "/public/pwa/icones/ios/114.png",
    "/public/pwa/icones/ios/120.png",
    "/public/pwa/icones/ios/128.png",
    "/public/pwa/icones/ios/144.png",
    "/public/pwa/icones/ios/152.png",
    "/public/pwa/icones/ios/167.png",
    "/public/pwa/icones/ios/180.png",
    "/public/pwa/icones/ios/192.png",
    "/public/pwa/icones/ios/256.png",
    "/public/pwa/icones/ios/512.png",
    "/public/pwa/icones/ios/1024.png"
];

self.addEventListener('install', event => {
  console.log('%cInstalando Cache Offline', 'color:#f6ff00;background-color:#000;padding:3px 15px');
  event.waitUntil(
    caches.open(currentCache.offline).then(cache => {
      return Promise.all(
        offlineUrls.map(url => {
          return cache.add(url).catch(error => {
            console.log('Erro ao armazenar em cache:', error, url);
          });
        })
      );
    })
  );
});


self.addEventListener('activate', event => {
  console.log('%cWorker JS activate', 'color:#f6ff00;background-color:#000;padding:3px 15px');
});


self.addEventListener('fetch', event => {
    event.respondWith(
        caches.match(event.request).then(response => {
        return response || fetch(event.request).catch(() => {
          console.log('%cOffline Mode','font-size:30px;color:#F00;font-weight:800;background-color:#000;padding:10px 20px');
        return caches.match('/public/pwa/offline.html');
      });
    })
  );
});