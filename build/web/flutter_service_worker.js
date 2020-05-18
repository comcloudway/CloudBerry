'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/assets/icon.png": "89da0f47dea8ef0b3caacc9b69132470",
"assets/assets/wallpaper_dark.jpg": "71465ae5dd3355768013805e69d79f0e",
"assets/assets/wallpaper_light.jpg": "81d4431256874e9f78f6efce0267f0d8",
"assets/assets/logo.svg": "3acec2d42610b542a6337df2f074c280",
"assets/assets/ccw_logo.png": "a6ec576b5d24c1aa6f61e3b127f7f9f2",
"assets/FontManifest.json": "6de17f4673f7886f10645010b397ef76",
"assets/AssetManifest.json": "6fbcb1e445975486926e5ceffd0b76d8",
"assets/packages/flutter_markdown/assets/logo.png": "67642a0b80f3d50277c44cde8f450e50",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"assets/packages/flutter_vector_icons/fonts/FontAwesome5_Regular.ttf": "f6c6f6c8cb7784254ad00056f6fbd74e",
"assets/packages/flutter_vector_icons/fonts/FontAwesome5_Brands.ttf": "c39278f7abfc798a241551194f55e29f",
"assets/packages/flutter_vector_icons/fonts/Entypo.ttf": "744ce60078c17d86006dd0edabcd59a7",
"assets/packages/flutter_vector_icons/fonts/Foundation.ttf": "e20945d7c929279ef7a6f1db184a4470",
"assets/packages/flutter_vector_icons/fonts/EvilIcons.ttf": "140c53a7643ea949007aa9a282153849",
"assets/packages/flutter_vector_icons/fonts/SimpleLineIcons.ttf": "d2285965fe34b05465047401b8595dd0",
"assets/packages/flutter_vector_icons/fonts/MaterialCommunityIcons.ttf": "3c851d60ad5ef3f2fe43ebd263490d78",
"assets/packages/flutter_vector_icons/fonts/FontAwesome5_Solid.ttf": "b70cea0339374107969eb53e5b1f603f",
"assets/packages/flutter_vector_icons/fonts/Octicons.ttf": "8e7f807ef943bff1f6d3c2c6e0f3769e",
"assets/packages/flutter_vector_icons/fonts/Ionicons.ttf": "b2e0fc821c6886fb3940f85a3320003e",
"assets/packages/flutter_vector_icons/fonts/AntDesign.ttf": "3a2ba31570920eeb9b1d217cabe58315",
"assets/packages/flutter_vector_icons/fonts/Feather.ttf": "ca9ce9ff0676a9b04ef0f8a3ad17dd08",
"assets/packages/flutter_vector_icons/fonts/FontAwesome.ttf": "b06871f281fee6b241d60582ae9369b9",
"assets/packages/flutter_vector_icons/fonts/MaterialIcons.ttf": "a37b0c01c0baf1888ca812cc0508f6e2",
"assets/packages/flutter_vector_icons/fonts/Fontisto.ttf": "b49ae8ab2dbccb02c4d11caaacf09eab",
"assets/packages/flutter_vector_icons/fonts/Zocial.ttf": "5cdf883b18a5651a29a4d1ef276d2457",
"assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"assets/LICENSE": "58acbd49896b264d978669eb7349e5d4",
"favicon.ico": "b90eeda2ede3ea117750c6521701c220",
"manifest.json": "9ef467593b0209b460bb11453e7bcbda",
"main.dart.js": "0b2d28f36db107de41b60a7569b9388d",
"favicon.svg": "3acec2d42610b542a6337df2f074c280",
"icons/Icon-512.png": "89da0f47dea8ef0b3caacc9b69132470",
"icons/apple-icon-114x114.png": "63ec46650ee18dce5733afba54a252e6",
"icons/apple-icon.png": "c98515149ed9bdb906c22ca919d4558e",
"icons/apple-icon-152x152.png": "d4a1701a04db01038eb704651d986a9a",
"icons/apple-icon-72x72.png": "cedb61287cce36f55ee57f51ad4d863b",
"icons/ms-icon-310x310.png": "5db2954921aa7a3f856fce5830ba8007",
"icons/favicon-16x16.png": "71531c6c3869d886234de5ac3fd78d92",
"icons/apple-icon-144x144.png": "859e6b568d622ab060fb575c1d3ac373",
"icons/android-icon-96x96.png": "b326e8c98bde9d49e8609bc311723261",
"icons/apple-icon-57x57.png": "4b138ac7b0cc5ebc1942ea457d271886",
"icons/apple-icon-120x120.png": "0b7db558e0f629f5fe0dcb01f7fc97d2",
"icons/favicon.ico": "b90eeda2ede3ea117750c6521701c220",
"icons/android-icon-48x48.png": "c255e93f00866c7763b6be6e10160a85",
"icons/manifest.json": "b58fcfa7628c9205cb11a1b2c3e8f99a",
"icons/android-icon-72x72.png": "cedb61287cce36f55ee57f51ad4d863b",
"icons/android-icon-144x144.png": "859e6b568d622ab060fb575c1d3ac373",
"icons/ms-icon-150x150.png": "9709fcd817c565e19dd7a1109a65df23",
"icons/apple-icon-60x60.png": "dc97402474b2be90235b1e56d72b08e0",
"icons/ms-icon-70x70.png": "d91b39ba4b13eb591d47f8746f3eeae9",
"icons/Icon-192.png": "801b9df68c780543493e1fc795ed52dd",
"icons/favicon-32x32.png": "c2b0f942573d9c0dc9d21c59e56a06f8",
"icons/apple-icon-precomposed.png": "c98515149ed9bdb906c22ca919d4558e",
"icons/favicon-96x96.png": "b326e8c98bde9d49e8609bc311723261",
"icons/ms-icon-144x144.png": "859e6b568d622ab060fb575c1d3ac373",
"icons/apple-icon-180x180.png": "97da46eb756a64d5f00aaffd5df1b8a0",
"icons/android-icon-192x192.png": "0343a3176310826d4936af45f589313c",
"icons/apple-icon-76x76.png": "88ec59d3c045701b40d893a8b2cc3f8b",
"icons/android-icon-36x36.png": "9681dbc3c4a2e3e4c47bdec01468327e",
"icons/browserconfig.xml": "653d077300a12f09a69caeea7a8947f8",
"index.html": "15091c5f5cab876d77533871a1ca950a",
"/": "15091c5f5cab876d77533871a1ca950a"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"/",
"index.html",
"assets/LICENSE",
"assets/AssetManifest.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(CORE);
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
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
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
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // If the URL is not the the RESOURCE list, skip the cache.
  if (!RESOURCES[key]) {
    return event.respondWith(fetch(event.request));
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

