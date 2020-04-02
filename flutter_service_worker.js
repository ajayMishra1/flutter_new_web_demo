'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "index.html": "baa8f3abbeb0291a8aa71d03f4c7e640",
"main.dart.js": "0f372a5bfc0ec1c88027f7d935df93f7",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "a7b53e6898a3ff7d322af4b62fed728b",
"assets/LICENSE": "1588d051eb88f49f5f3d47f34d8ca988",
"assets/AssetManifest.json": "967f953c8a4d3a6807e88f9deb5cf46a",
"assets/FontManifest.json": "01700ba55b08a6141f33e168c4a6c22f",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"assets/assets/images/intro/footer.png": "c6a9a89d51bd920cb2f84e5bb7b5a55a",
"assets/assets/images/intro/b2.jpg": "093e57ac2c55e71549869199ab0fe2f5",
"assets/assets/images/unacademy/4.png": "3ee45f75e31096036b44bb358ef7bf31",
"assets/assets/images/unacademy/2.png": "18ae0cf5acebe65cd77353f62f11b4b1",
"assets/assets/images/unacademy/3.png": "2bb97a766aedc85f70ae160bbb69f2d8",
"assets/assets/images/unacademy/1.png": "3bc10074aa46a9396c54d42593b5db74",
"assets/assets/images/pen.png": "b379ac7b3a9f1cd3fe60ef2f0896e4a2",
"assets/assets/images/plane_text.png": "fd76879f298b4857791db50fee08ef9b",
"assets/assets/images/education/roorkee.jpg": "8c5e1d9583c744f3f5b3c31c430419bb",
"assets/assets/images/about/lucknow.jpg": "7672eb314daec88d0a4e272d81f72889",
"assets/assets/images/avatar.png": "8a72e2441e7c7c372b2070c6b48b1180",
"assets/assets/images/work/oneclick.png": "47ef690f6b4b0ff3400f1ad60e3b57f8",
"assets/assets/images/work/workozy_track.png": "2cb2ac344a5224d73a392230ae3f3870",
"assets/assets/images/work/office.png": "0f9560b1c17e2687ddc5e5361b1494e7",
"assets/assets/images/work/workozy.png": "06811b6197f2f0838b93311712170f47",
"assets/assets/images/laptop.png": "3e1ac7e319fd13e5ceb7971e98fd9799",
"assets/assets/images/lucknow.png": "d6253d6182fd2a4295f6e0275af5f16b",
"assets/assets/images/mobile.png": "0a82b2e4e2b16476677afa955d696e76",
"assets/assets/images/lucknow_heritage.png": "e94126b8793a3d3a8db8eea2bb631eb3",
"assets/assets/images/skills/bike.jpg": "e171e6e4b88c31dbd69f9195f79da5b8",
"assets/assets/images/unacademy.png": "9ad06c4406452a8c19035015e1170dfb",
"assets/assets/images/artist/i1.jpg": "16ee3a057baf5db8ad0f1244ee3e6ae5",
"assets/assets/images/artist/i2.jpg": "b3730905d9c1ab82fb400a7fcff3d961",
"assets/assets/images/artist/i3.jpg": "970d892bca03e06cf31d6742095f7081",
"assets/assets/images/artist/i4.jpg": "a98253942ee8ec7ec47ded505396ff0f",
"assets/assets/images/artist/i5.jpg": "b66c91eedeef341b794cf04aa9c2b0f0"
};

self.addEventListener('activate', function (event) {
  event.waitUntil(
    caches.keys().then(function (cacheName) {
      return caches.delete(cacheName);
    }).then(function (_) {
      return caches.open(CACHE_NAME);
    }).then(function (cache) {
      return cache.addAll(Object.keys(RESOURCES));
    })
  );
});

self.addEventListener('fetch', function (event) {
  event.respondWith(
    caches.match(event.request)
      .then(function (response) {
        if (response) {
          return response;
        }
        return fetch(event.request);
      })
  );
});
