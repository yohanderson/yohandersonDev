'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "14fb70e408fadaaee3c578073eaf3c91",
"assets/AssetManifest.bin.json": "38773f0dd37484be4517b836daa48acd",
"assets/AssetManifest.json": "53f34540d3f95ecda28a9668572126f5",
"assets/assets/portfolio/cidtmi/c1.jpg": "aa188327ed49c39540285534d735b1a9",
"assets/assets/portfolio/cidtmi/c2.jpg": "9276f4458e6fe4b5d1ce74ba14436ebc",
"assets/assets/portfolio/cidtmi/c3.jpg": "b686787502957888fd3c7a33ca352386",
"assets/assets/portfolio/cidtmi/c4.jpg": "2144a371e027d88bab3f4dc9ba11d502",
"assets/assets/portfolio/cidtmi/c5.jpg": "541d8ba6831e93ed341d344a77abcd88",
"assets/assets/portfolio/cidtmi/c6.jpg": "0b2b5d27d88b470475c1a15dd362505a",
"assets/assets/portfolio/cidtmi/c7.jpg": "dda2ad35400ee86df14748092d3de171",
"assets/assets/portfolio/cidtmi/c8.jpg": "b84201c43aafb0f1863bb031b98ff982",
"assets/assets/portfolio/dash/d1.jpg": "4b186029e47555e5aa78560c32989ce6",
"assets/assets/portfolio/dash/d2.jpg": "9664aedcffd4190f83bb9fa87a9127ba",
"assets/assets/portfolio/dash/d3.jpg": "e98861907fbd4b096ba8c3732d13a1d4",
"assets/assets/portfolio/dash/d4.jpg": "6f166b304149eddb3a85e50c237385dc",
"assets/assets/portfolio/dash/d5.jpg": "7c40b1bafd62fae853da89c90e54aa19",
"assets/assets/portfolio/dash/d6.jpg": "361e2d80355adab0cdeab402c81e32ef",
"assets/assets/portfolio/dash/d7.jpg": "4c12e359ddbf9b9f0e3debf4b3f076f0",
"assets/assets/portfolio/dash/d8.jpg": "ab36c8c33bdc38b98ec53a2afa3b4638",
"assets/assets/portfolio/dash/d9.jpg": "da815040528eecc814ac9503ca7c8bec",
"assets/assets/portfolio/mundocell/m1.jpg": "42436ab493940282b8e61adb56f3c9cc",
"assets/assets/portfolio/mundocell/m2.jpg": "cd403241562399db62c9123acc84fed9",
"assets/assets/portfolio/mundocell/m3.jpg": "f04e927fc8c895508f93753aabd95f07",
"assets/assets/portfolio/mundocell/m4.jpg": "7cafc8684fe5fa708d4f3e382bce147b",
"assets/assets/portfolio/mundocell/m5.jpg": "c54c2b3449162f4a6909a4de39015e01",
"assets/assets/portfolio/mundocell/m6.jpg": "e03a33b45c10feb4b769ea590da49251",
"assets/assets/social_media/instagram.png": "af542af738dbf6acbb854cef831a38a9",
"assets/assets/social_media/tiktok.png": "713f8796dcc124b5fb23b48acc93b29e",
"assets/assets/social_media/whatsapp.png": "b33894403ad0cb5e1f8cc0a0b2703853",
"assets/assets/social_media/whatsapp_circle.png": "27741b30936dc23fd8485023945d8b72",
"assets/assets/src/mono.png": "a470d82736d049950a2a185396ca741d",
"assets/assets/src/yoha.png": "e598177fed2aa4b15905329d70f3e67a",
"assets/assets/tech/flutter.png": "2e8fd7f189c55200a337a011e1ecf61a",
"assets/assets/tech/nodejs.png": "996319e0ed5e1f993bc81337c4c82737",
"assets/assets/tech/postgresql.png": "aacc2630926281ebcf997f8c41ad4c76",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "f2489b886f45f36b6e3d6b24345c09da",
"assets/NOTICES": "bcce545ec4ffa2c19bbb53c6946e3d6a",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "82199f3f320c7df0fef7b5dc6b4a9d7e",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "c86fbd9e7b17accae76e5ad116583dc4",
"canvaskit/canvaskit.js.symbols": "38cba9233b92472a36ff011dc21c2c9f",
"canvaskit/canvaskit.wasm": "3d2a2d663e8c5111ac61a46367f751ac",
"canvaskit/chromium/canvaskit.js": "43787ac5098c648979c27c13c6f804c3",
"canvaskit/chromium/canvaskit.js.symbols": "4525682ef039faeb11f24f37436dca06",
"canvaskit/chromium/canvaskit.wasm": "f5934e694f12929ed56a671617acd254",
"canvaskit/skwasm.js": "445e9e400085faead4493be2224d95aa",
"canvaskit/skwasm.js.symbols": "741d50ffba71f89345996b0aa8426af8",
"canvaskit/skwasm.wasm": "e42815763c5d05bba43f9d0337fa7d84",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "c71a09214cb6f5f8996a531350400a9a",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "c6d1791ff01555478b7e1c7e21c8263d",
"/": "c6d1791ff01555478b7e1c7e21c8263d",
"main.dart.js": "916fa290c88ead6d7ee2b24f2223d519",
"manifest.json": "2d9156f7336b84d16f102c71f9e670f5",
"version.json": "5ac604216704dec68e1163b89c4bc04a"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
