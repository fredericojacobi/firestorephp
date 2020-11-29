{
    "_readme": [
        "This file locks the dependencies of your project to a known state",
        "Read more about it at https://getcomposer.org/doc/01-basic-usage.md#installing-dependencies",
        "This file is @generated automatically"
    ],
    "content-hash": "e731d354cecb79647d1aac3110c090a0",
    "packages": [
        {
            "name": "ahsankhatri/firestore-php",
            "version": "v2.0.4",
            "source": {
                "type": "git",
                "url": "https://github.com/ahsankhatri/firestore-php.git",
                "reference": "811c574d29aa09f0504ad3076503cc34fc209a97"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/ahsankhatri/firestore-php/zipball/811c574d29aa09f0504ad3076503cc34fc209a97",
                "reference": "811c574d29aa09f0504ad3076503cc34fc209a97",
                "shasum": ""
            },
            "require": {
                "ext-curl": "*",
                "ext-json": "*",
                "guzzlehttp/guzzle": "~6.0|~5.0|~4.0",
                "php": ">=5.6.6"
            },
            "require-dev": {
                "phpunit/phpunit": "5.7"
            },
            "type": "library",
            "autoload": {
                "psr-4": {
                    "MrShan0\\PHPFirestore\\": "src"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Ahsaan Muhammad Yousuf",
                    "email": "ahsankhatri1992@gmail.com",
                    "homepage": "https://ahsaan.me",
                    "role": "Developer"
                }
            ],
            "description": "Firestore PHP Client",
            "homepage": "https://github.com/ahsankhatri/firestore-php",
            "keywords": [
                "firebase",
                "firestore",
                "google",
                "php"
            ],
            "time": "2020-04-04T20:10:10+00:00"
        },
        {
            "name": "fig/http-message-util",
            "version": "1.1.5",
            "source": {
                "type": "git",
                "url": "https://github.com/php-fig/http-message-util.git",
                "reference": "9d94dc0154230ac39e5bf89398b324a86f63f765"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/php-fig/http-message-util/zipball/9d94dc0154230ac39e5bf89398b324a86f63f765",
                "reference": "9d94dc0154230ac39e5bf89398b324a86f63f765",
                "shasum": ""
            },
            "require": {
                "php": "^5.3 || ^7.0 || ^8.0"
            },
            "suggest": {
                "psr/http-message": "The package containing the PSR-7 interfaces"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "1.1.x-dev"
                }
            },
            "autoload": {
                "psr-4": {
                    "Fig\\Http\\Message\\": "src/"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "PHP-FIG",
                    "homepage": "https://www.php-fig.org/"
                }
            ],
            "description": "Utility classes and constants for use with PSR-7 (psr/http-message)",
            "keywords": [
                "http",
                "http-message",
                "psr",
                "psr-7",
                "request",
                "response"
            ],
            "time": "2020-11-24T22:02:12+00:00"
        },
        {
            "name": "firebase/php-jwt",
            "version": "v5.2.0",
            "source": {
                "type": "git",
                "url": "https://github.com/firebase/php-jwt.git",
                "reference": "feb0e820b8436873675fd3aca04f3728eb2185cb"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/firebase/php-jwt/zipball/feb0e820b8436873675fd3aca04f3728eb2185cb",
                "reference": "feb0e820b8436873675fd3aca04f3728eb2185cb",
                "shasum": ""
            },
            "require": {
                "php": ">=5.3.0"
            },
            "require-dev": {
                "phpunit/phpunit": ">=4.8 <=9"
            },
            "type": "library",
            "autoload": {
                "psr-4": {
                    "Firebase\\JWT\\": "src"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "BSD-3-Clause"
            ],
            "authors": [
                {
                    "name": "Neuman Vong",
                    "email": "neuman+pear@twilio.com",
                    "role": "Developer"
                },
                {
                    "name": "Anant Narayanan",
                    "email": "anant@php.net",
                    "role": "Developer"
                }
            ],
            "description": "A simple library to encode and decode JSON Web Tokens (JWT) in PHP. Should conform to the current spec.",
            "homepage": "https://github.com/firebase/php-jwt",
            "keywords": [
                "jwt",
                "php"
            ],
            "time": "2020-03-25T18:49:23+00:00"
        },
        {
            "name": "giggsey/libphonenumber-for-php",
            "version": "8.12.13",
            "source": {
                "type": "git",
                "url": "https://github.com/giggsey/libphonenumber-for-php.git",
                "reference": "571bbbabdab5b1cf16550cb257005bb527fa0899"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/giggsey/libphonenumber-for-php/zipball/571bbbabdab5b1cf16550cb257005bb527fa0899",
                "reference": "571bbbabdab5b1cf16550cb257005bb527fa0899",
                "shasum": ""
            },
            "require": {
                "giggsey/locale": "^1.7",
                "php": ">=5.3.2",
                "symfony/polyfill-mbstring": "^1.17"
            },
            "require-dev": {
                "pear/pear-core-minimal": "^1.9",
                "pear/pear_exception": "^1.0",
                "pear/versioncontrol_git": "^0.5",
                "phing/phing": "^2.7",
                "php-coveralls/php-coveralls": "^1.0|^2.0",
                "phpunit/phpunit": "^4.8.36|^5.0|^7.0",
                "symfony/console": "^2.8|^3.0"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "8.x-dev"
                }
            },
            "autoload": {
                "psr-4": {
                    "libphonenumber\\": "src/"
                },
                "exclude-from-classmap": [
                    "/src/data/",
                    "/src/carrier/data/",
                    "/src/geocoding/data/",
                    "/src/timezone/data/"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "Apache-2.0"
            ],
            "authors": [
                {
                    "name": "Joshua Gigg",
                    "email": "giggsey@gmail.com",
                    "homepage": "https://giggsey.com/"
                }
            ],
            "description": "PHP Port of Google's libphonenumber",
            "homepage": "https://github.com/giggsey/libphonenumber-for-php",
            "keywords": [
                "geocoding",
                "geolocation",
                "libphonenumber",
                "mobile",
                "phonenumber",
                "validation"
            ],
            "time": "2020-11-12T14:42:30+00:00"
        },
        {
            "name": "giggsey/locale",
            "version": "1.9",
            "source": {
                "type": "git",
                "url": "https://github.com/giggsey/Locale.git",
                "reference": "b07f1eace8072ccc61445ad8fbd493ff9d783043"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/giggsey/Locale/zipball/b07f1eace8072ccc61445ad8fbd493ff9d783043",
                "reference": "b07f1eace8072ccc61445ad8fbd493ff9d783043",
                "shasum": ""
            },
            "require": {
                "php": ">=5.3.2"
            },
            "require-dev": {
                "pear/pear-core-minimal": "^1.9",
                "pear/pear_exception": "^1.0",
                "pear/versioncontrol_git": "^0.5",
                "phing/phing": "~2.7",
                "php-coveralls/php-coveralls": "^1.0|^2.0",
                "phpunit/phpunit": "^4.8|^5.0",
                "symfony/console": "^2.8|^3.0|^4.0",
                "symfony/filesystem": "^2.8|^3.0|^4.0",
                "symfony/finder": "^2.8|^3.0|^4.0",
                "symfony/process": "^2.8|^3.0|^4.0"
            },
            "type": "library",
            "autoload": {
                "psr-4": {
                    "Giggsey\\Locale\\": "src/"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Joshua Gigg",
                    "email": "giggsey@gmail.com",
                    "homepage": "http://giggsey.com/"
                }
            ],
            "description": "Locale functions required by libphonenumber-for-php",
            "time": "2020-07-07T11:16:24+00:00"
        },
        {
            "name": "google/auth",
            "version": "v1.14.3",
            "source": {
                "type": "git",
                "url": "https://github.com/googleapis/google-auth-library-php.git",
                "reference": "c1503299c779af0cbc99b43788f75930988852cf"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/googleapis/google-auth-library-php/zipball/c1503299c779af0cbc99b43788f75930988852cf",
                "reference": "c1503299c779af0cbc99b43788f75930988852cf",
                "shasum": ""
            },
            "require": {
                "firebase/php-jwt": "~2.0|~3.0|~4.0|~5.0",
                "guzzlehttp/guzzle": "^5.3.1|^6.2.1|^7.0",
                "guzzlehttp/psr7": "^1.2",
                "php": ">=5.4",
                "psr/cache": "^1.0",
                "psr/http-message": "^1.0"
            },
            "require-dev": {
                "guzzlehttp/promises": "0.1.1|^1.3",
                "kelvinmo/simplejwt": "^0.2.5",
                "phpseclib/phpseclib": "^2",
                "phpunit/phpunit": "^4.8.36|^5.7",
                "sebastian/comparator": ">=1.2.3",
                "squizlabs/php_codesniffer": "^3.5"
            },
            "suggest": {
                "phpseclib/phpseclib": "May be used in place of OpenSSL for signing strings or for token management. Please require version ^2."
            },
            "type": "library",
            "autoload": {
                "psr-4": {
                    "Google\\Auth\\": "src"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "Apache-2.0"
            ],
            "description": "Google Auth Library for PHP",
            "homepage": "http://github.com/google/google-auth-library-php",
            "keywords": [
                "Authentication",
                "google",
                "oauth2"
            ],
            "time": "2020-10-16T21:33:48+00:00"
        },
        {
            "name": "google/cloud-core",
            "version": "v1.40.0",
            "source": {
                "type": "git",
                "url": "https://github.com/googleapis/google-cloud-php-core.git",
                "reference": "1f45457d796c3807bc4b19c3d7b7e89a2f59d63c"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/googleapis/google-cloud-php-core/zipball/1f45457d796c3807bc4b19c3d7b7e89a2f59d63c",
                "reference": "1f45457d796c3807bc4b19c3d7b7e89a2f59d63c",
                "shasum": ""
            },
            "require": {
                "google/auth": "^1.6",
                "guzzlehttp/guzzle": "^5.3|^6.0|^7.0",
                "guzzlehttp/promises": "^1.3",
                "guzzlehttp/psr7": "^1.2",
                "monolog/monolog": "^1.1|^2.0",
                "php": ">=5.5",
                "psr/http-message": "1.0.*",
                "rize/uri-template": "~0.3"
            },
            "require-dev": {
                "erusev/parsedown": "^1.6",
                "google/common-protos": "^1.0",
                "google/gax": "^1.1",
                "opis/closure": "^3",
                "phpdocumentor/reflection": "^3.0",
                "phpunit/phpunit": "^4.8|^5.0",
                "squizlabs/php_codesniffer": "2.*"
            },
            "suggest": {
                "opis/closure": "May be used to serialize closures to process jobs in the batch daemon. Please require version ^3.",
                "symfony/lock": "Required for the Spanner cached based session pool. Please require the following commit: 3.3.x-dev#1ba6ac9"
            },
            "bin": [
                "bin/google-cloud-batch"
            ],
            "type": "library",
            "extra": {
                "component": {
                    "id": "cloud-core",
                    "target": "googleapis/google-cloud-php-core.git",
                    "path": "Core",
                    "entry": "src/ServiceBuilder.php"
                }
            },
            "autoload": {
                "psr-4": {
                    "Google\\Cloud\\Core\\": "src"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "Apache-2.0"
            ],
            "description": "Google Cloud PHP shared dependency, providing functionality useful to all components.",
            "time": "2020-10-30T21:33:33+00:00"
        },
        {
            "name": "google/cloud-storage",
            "version": "v1.23.0",
            "source": {
                "type": "git",
                "url": "https://github.com/googleapis/google-cloud-php-storage.git",
                "reference": "42f7dfb248318aa152b4491b72279035df0d0900"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/googleapis/google-cloud-php-storage/zipball/42f7dfb248318aa152b4491b72279035df0d0900",
                "reference": "42f7dfb248318aa152b4491b72279035df0d0900",
                "shasum": ""
            },
            "require": {
                "google/cloud-core": "^1.39",
                "google/crc32": "^0.1.0"
            },
            "require-dev": {
                "erusev/parsedown": "^1.6",
                "google/cloud-pubsub": "^1.0",
                "phpdocumentor/reflection": "^3.0",
                "phpseclib/phpseclib": "^2",
                "phpunit/phpunit": "^4.8|^5.0",
                "squizlabs/php_codesniffer": "2.*"
            },
            "suggest": {
                "google/cloud-pubsub": "May be used to register a topic to receive bucket notifications.",
                "phpseclib/phpseclib": "May be used in place of OpenSSL for creating signed Cloud Storage URLs. Please require version ^2."
            },
            "type": "library",
            "extra": {
                "component": {
                    "id": "cloud-storage",
                    "target": "googleapis/google-cloud-php-storage.git",
                    "path": "Storage",
                    "entry": "src/StorageClient.php"
                }
            },
            "autoload": {
                "psr-4": {
                    "Google\\Cloud\\Storage\\": "src"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "Apache-2.0"
            ],
            "description": "Cloud Storage Client for PHP",
            "time": "2020-09-08T20:52:20+00:00"
        },
        {
            "name": "google/crc32",
            "version": "v0.1.0",
            "source": {
                "type": "git",
                "url": "https://github.com/google/php-crc32.git",
                "reference": "a8525f0dea6fca1893e1bae2f6e804c5f7d007fb"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/google/php-crc32/zipball/a8525f0dea6fca1893e1bae2f6e804c5f7d007fb",
                "reference": "a8525f0dea6fca1893e1bae2f6e804c5f7d007fb",
                "shasum": ""
            },
            "require": {
                "php": ">=5.4"
            },
            "require-dev": {
                "friendsofphp/php-cs-fixer": "^1.13 || v2.14.2",
                "paragonie/random_compat": ">=2",
                "phpunit/phpunit": "^4"
            },
            "type": "library",
            "autoload": {
                "psr-4": {
                    "Google\\CRC32\\": "src"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "Apache-2.0"
            ],
            "authors": [
                {
                    "name": "Andrew Brampton",
                    "email": "bramp@google.com"
                }
            ],
            "description": "Various CRC32 implementations",
            "homepage": "https://github.com/google/php-crc32",
            "time": "2019-05-09T06:24:58+00:00"
        },
        {
            "name": "google/protobuf",
            "version": "v3.14.0",
            "source": {
                "type": "git",
                "url": "https://github.com/protocolbuffers/protobuf-php.git",
                "reference": "03f132a66f09f96064309e81c5fac8d35b7474e1"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/protocolbuffers/protobuf-php/zipball/03f132a66f09f96064309e81c5fac8d35b7474e1",
                "reference": "03f132a66f09f96064309e81c5fac8d35b7474e1",
                "shasum": ""
            },
            "require": {
                "php": ">=5.5.0"
            },
            "require-dev": {
                "phpunit/phpunit": ">=4.8.0"
            },
            "suggest": {
                "ext-bcmath": "Need to support JSON deserialization"
            },
            "type": "library",
            "autoload": {
                "psr-4": {
                    "Google\\Protobuf\\": "src/Google/Protobuf",
                    "GPBMetadata\\Google\\Protobuf\\": "src/GPBMetadata/Google/Protobuf"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "BSD-3-Clause"
            ],
            "description": "proto library for PHP",
            "homepage": "https://developers.google.com/protocol-buffers/",
            "keywords": [
                "proto"
            ],
            "time": "2020-11-13T23:41:35+00:00"
        },
        {
            "name": "guzzlehttp/guzzle",
            "version": "6.5.5",
            "source": {
                "type": "git",
                "url": "https://github.com/guzzle/guzzle.git",
                "reference": "9d4290de1cfd701f38099ef7e183b64b4b7b0c5e"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/guzzle/guzzle/zipball/9d4290de1cfd701f38099ef7e183b64b4b7b0c5e",
                "reference": "9d4290de1cfd701f38099ef7e183b64b4b7b0c5e",
                "shasum": ""
            },
            "require": {
                "ext-json": "*",
                "guzzlehttp/promises": "^1.0",
                "guzzlehttp/psr7": "^1.6.1",
                "php": ">=5.5",
                "symfony/polyfill-intl-idn": "^1.17.0"
            },
            "require-dev": {
                "ext-curl": "*",
                "phpunit/phpunit": "^4.8.35 || ^5.7 || ^6.4 || ^7.0",
                "psr/log": "^1.1"
            },
            "suggest": {
                "psr/log": "Required for using the Log middleware"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "6.5-dev"
                }
            },
            "autoload": {
                "psr-4": {
                    "GuzzleHttp\\": "src/"
                },
                "files": [
                    "src/functions_include.php"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Michael Dowling",
                    "email": "mtdowling@gmail.com",
                    "homepage": "https://github.com/mtdowling"
                }
            ],
            "description": "Guzzle is a PHP HTTP client library",
            "homepage": "http://guzzlephp.org/",
            "keywords": [
                "client",
                "curl",
                "framework",
                "http",
                "http client",
                "rest",
                "web service"
            ],
            "time": "2020-06-16T21:01:06+00:00"
        },
        {
            "name": "guzzlehttp/promises",
            "version": "1.4.0",
            "source": {
                "type": "git",
                "url": "https://github.com/guzzle/promises.git",
                "reference": "60d379c243457e073cff02bc323a2a86cb355631"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/guzzle/promises/zipball/60d379c243457e073cff02bc323a2a86cb355631",
                "reference": "60d379c243457e073cff02bc323a2a86cb355631",
                "shasum": ""
            },
            "require": {
                "php": ">=5.5"
            },
            "require-dev": {
                "symfony/phpunit-bridge": "^4.4 || ^5.1"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "1.4-dev"
                }
            },
            "autoload": {
                "psr-4": {
                    "GuzzleHttp\\Promise\\": "src/"
                },
                "files": [
                    "src/functions_include.php"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Michael Dowling",
                    "email": "mtdowling@gmail.com",
                    "homepage": "https://github.com/mtdowling"
                }
            ],
            "description": "Guzzle promises library",
            "keywords": [
                "promise"
            ],
            "time": "2020-09-30T07:37:28+00:00"
        },
        {
            "name": "guzzlehttp/psr7",
            "version": "1.7.0",
            "source": {
                "type": "git",
                "url": "https://github.com/guzzle/psr7.git",
                "reference": "53330f47520498c0ae1f61f7e2c90f55690c06a3"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/guzzle/psr7/zipball/53330f47520498c0ae1f61f7e2c90f55690c06a3",
                "reference": "53330f47520498c0ae1f61f7e2c90f55690c06a3",
                "shasum": ""
            },
            "require": {
                "php": ">=5.4.0",
                "psr/http-message": "~1.0",
                "ralouphie/getallheaders": "^2.0.5 || ^3.0.0"
            },
            "provide": {
                "psr/http-message-implementation": "1.0"
            },
            "require-dev": {
                "ext-zlib": "*",
                "phpunit/phpunit": "~4.8.36 || ^5.7.27 || ^6.5.14 || ^7.5.20 || ^8.5.8 || ^9.3.10"
            },
            "suggest": {
                "laminas/laminas-httphandlerrunner": "Emit PSR-7 responses"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "1.7-dev"
                }
            },
            "autoload": {
                "psr-4": {
                    "GuzzleHttp\\Psr7\\": "src/"
                },
                "files": [
                    "src/functions_include.php"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Michael Dowling",
                    "email": "mtdowling@gmail.com",
                    "homepage": "https://github.com/mtdowling"
                },
                {
                    "name": "Tobias Schultze",
                    "homepage": "https://github.com/Tobion"
                }
            ],
            "description": "PSR-7 message implementation that also provides common utility methods",
            "keywords": [
                "http",
                "message",
                "psr-7",
                "request",
                "response",
                "stream",
                "uri",
                "url"
            ],
            "time": "2020-09-30T07:37:11+00:00"
        },
        {
            "name": "kreait/clock",
            "version": "1.1.0",
            "source": {
                "type": "git",
                "url": "https://github.com/kreait/clock-php.git",
                "reference": "8f1fbc252e4e81298ae7c520597c25e9a6a0f454"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/kreait/clock-php/zipball/8f1fbc252e4e81298ae7c520597c25e9a6a0f454",
                "reference": "8f1fbc252e4e81298ae7c520597c25e9a6a0f454",
                "shasum": ""
            },
            "require": {
                "php": "^7.0|^8.0"
            },
            "require-dev": {
                "phpunit/phpunit": "^6.5.14"
            },
            "type": "library",
            "autoload": {
                "psr-4": {
                    "Kreait\\Clock\\": "src/Clock"
                },
                "files": [
                    "src/Clock.php"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Jérôme Gamez",
                    "email": "jerome@gamez.name"
                }
            ],
            "description": "A PHP 7.0 compatible clock abstraction",
            "time": "2020-10-03T23:30:50+00:00"
        },
        {
            "name": "kreait/firebase-php",
            "version": "4.15.0",
            "source": {
                "type": "git",
                "url": "https://github.com/kreait/firebase-php.git",
                "reference": "61264eddd4ff5d9d6726318dbcabce39decea1e0"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/kreait/firebase-php/zipball/61264eddd4ff5d9d6726318dbcabce39decea1e0",
                "reference": "61264eddd4ff5d9d6726318dbcabce39decea1e0",
                "shasum": ""
            },
            "require": {
                "ext-ctype": "*",
                "ext-json": "*",
                "ext-mbstring": "*",
                "ext-openssl": "*",
                "giggsey/libphonenumber-for-php": "^8.9",
                "google/auth": "^1.8",
                "google/cloud-core": "^1.36",
                "google/cloud-storage": "^1.14",
                "guzzlehttp/guzzle": "^6.2.1|^7.0@beta",
                "kreait/clock": "^1.0.1",
                "kreait/firebase-tokens": "1.8.1",
                "kreait/gcp-metadata": "^1.1.0",
                "lcobucci/jwt": "^3.3.1",
                "mtdowling/jmespath.php": "^2.3",
                "php": "^7.0",
                "psr/cache": "^1.0",
                "psr/simple-cache": "^1.0",
                "riverline/multipart-parser": "^2.0",
                "superbalist/flysystem-google-storage": "^7.0"
            },
            "require-dev": {
                "friendsofphp/php-cs-fixer": "^2.16",
                "google/cloud-firestore": "^1.11",
                "jangregor/phpstan-prophecy": "^0.1.2|^0.2|^0.3|^0.4.2",
                "phpstan/phpstan-phpunit": "^0.9.4|^0.11.2",
                "phpunit/phpunit": "^6.5.14|^7.5.17",
                "symfony/var-dumper": "^3.4|^4.4|^5.0"
            },
            "suggest": {
                "google/cloud-firestore": "^1.0 to use the Firestore component"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "5.x-dev",
                    "dev-4.x": "4.x-dev"
                }
            },
            "autoload": {
                "psr-4": {
                    "Kreait\\Firebase\\": "src/Firebase"
                },
                "files": [
                    "src/Firebase.php"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Jérôme Gamez",
                    "homepage": "https://github.com/jeromegamez"
                }
            ],
            "description": "Firebase Admin SDK",
            "homepage": "https://github.com/kreait/firebase-php",
            "keywords": [
                "api",
                "database",
                "firebase",
                "google",
                "sdk"
            ],
            "funding": [
                {
                    "url": "https://github.com/sponsors/jeromegamez",
                    "type": "github"
                }
            ],
            "time": "2020-04-05T22:05:00+00:00"
        },
        {
            "name": "kreait/firebase-tokens",
            "version": "1.12.0",
            "source": {
                "type": "git",
                "url": "https://github.com/kreait/firebase-tokens-php.git",
                "reference": "326abb3bca9859e97d7869f5fd0c9674950a12da"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/kreait/firebase-tokens-php/zipball/326abb3bca9859e97d7869f5fd0c9674950a12da",
                "reference": "326abb3bca9859e97d7869f5fd0c9674950a12da",
                "shasum": ""
            },
            "require": {
                "ext-json": "*",
                "ext-openssl": "*",
                "fig/http-message-util": "^1.1",
                "guzzlehttp/guzzle": "^6.2.1|^7.0",
                "kreait/clock": "^1.0.1",
                "lcobucci/jwt": "^3.4.1",
                "php": "^7.0|^8.0",
                "psr/cache": "^1.0",
                "psr/simple-cache": "^1.0"
            },
            "require-dev": {
                "firebase/php-jwt": "^5.0",
                "friendsofphp/php-cs-fixer": "^2.16",
                "phpstan/phpstan-phpunit": "^0.9.4|^0.12",
                "phpunit/phpunit": "^6.5.14|^7.5.17",
                "symfony/cache": "^3.4.26|^4.4|^5.0",
                "symfony/var-dumper": "^3.4|^4.4|^5.0"
            },
            "suggest": {
                "firebase/php-jwt": "^5.0 can be used to create and parse tokens",
                "guzzlehttp/guzzle": "^6.2.1|^7.0 can be used as an HTTP handler",
                "lcobucci/jwt": "^3.2 can be used to create and parse tokens",
                "psr/cache-implementation": "to cache fetched remote public keys",
                "psr/simple-cache-implementation": "to cache fetched remote public keys"
            },
            "type": "library",
            "autoload": {
                "psr-4": {
                    "Kreait\\Firebase\\JWT\\": "src/JWT",
                    "Firebase\\Auth\\Token\\": "src/Firebase/Auth/Token"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Jérôme Gamez",
                    "homepage": "https://github.com/jeromegamez"
                }
            ],
            "description": "A library to work with Firebase tokens",
            "homepage": "https://github.com/kreait/firebase-token-php",
            "keywords": [
                "Authentication",
                "auth",
                "firebase",
                "google",
                "token"
            ],
            "funding": [
                {
                    "url": "https://github.com/sponsors/jeromegamez",
                    "type": "github"
                }
            ],
            "time": "2020-11-27T03:20:28+00:00"
        },
        {
            "name": "kreait/gcp-metadata",
            "version": "1.1.0",
            "source": {
                "type": "git",
                "url": "https://github.com/kreait/gcp-metadata-php.git",
                "reference": "7ab206ba1d7b59a502be07e5ec2df617a7b1ba38"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/kreait/gcp-metadata-php/zipball/7ab206ba1d7b59a502be07e5ec2df617a7b1ba38",
                "reference": "7ab206ba1d7b59a502be07e5ec2df617a7b1ba38",
                "shasum": ""
            },
            "require": {
                "guzzlehttp/guzzle": "^6.0",
                "php": "^7.0",
                "psr/http-message": "^1.0"
            },
            "require-dev": {
                "phpunit/phpunit": "^6.5.14|^7.5.19"
            },
            "type": "library",
            "autoload": {
                "psr-4": {
                    "Kreait\\": "src"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Jérôme Gamez",
                    "email": "jerome@gamez.name"
                }
            ],
            "description": "Get the metadata from a Google Cloud Platform environment.",
            "keywords": [
                "gce",
                "gcp",
                "google",
                "google-cloud",
                "google-cloud-engine",
                "google-cloud-platform"
            ],
            "time": "2020-03-19T18:31:55+00:00"
        },
        {
            "name": "lcobucci/jwt",
            "version": "3.4.1",
            "source": {
                "type": "git",
                "url": "https://github.com/lcobucci/jwt.git",
                "reference": "958a9873a63b0244a72f6e354ccc86019ee674a5"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/lcobucci/jwt/zipball/958a9873a63b0244a72f6e354ccc86019ee674a5",
                "reference": "958a9873a63b0244a72f6e354ccc86019ee674a5",
                "shasum": ""
            },
            "require": {
                "ext-mbstring": "*",
                "ext-openssl": "*",
                "php": "^5.6 || ^7.0"
            },
            "require-dev": {
                "mikey179/vfsstream": "~1.5",
                "phpmd/phpmd": "~2.2",
                "phpunit/php-invoker": "~1.1",
                "phpunit/phpunit": "^5.7 || ^7.3",
                "squizlabs/php_codesniffer": "~2.3"
            },
            "suggest": {
                "lcobucci/clock": "*"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "3.1-dev"
                }
            },
            "autoload": {
                "psr-4": {
                    "Lcobucci\\JWT\\": "src"
                },
                "files": [
                    "compat/class-aliases.php",
                    "compat/json-exception-polyfill.php",
                    "compat/lcobucci-clock-polyfill.php"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "BSD-3-Clause"
            ],
            "authors": [
                {
                    "name": "Luís Otávio Cobucci Oblonczyk",
                    "email": "lcobucci@gmail.com",
                    "role": "Developer"
                }
            ],
            "description": "A simple library to work with JSON Web Token and JSON Web Signature",
            "keywords": [
                "JWS",
                "jwt"
            ],
            "funding": [
                {
                    "url": "https://github.com/lcobucci",
                    "type": "github"
                },
                {
                    "url": "https://www.patreon.com/lcobucci",
                    "type": "patreon"
                }
            ],
            "time": "2020-11-27T01:17:14+00:00"
        },
        {
            "name": "league/flysystem",
            "version": "1.1.3",
            "source": {
                "type": "git",
                "url": "https://github.com/thephpleague/flysystem.git",
                "reference": "9be3b16c877d477357c015cec057548cf9b2a14a"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/thephpleague/flysystem/zipball/9be3b16c877d477357c015cec057548cf9b2a14a",
                "reference": "9be3b16c877d477357c015cec057548cf9b2a14a",
                "shasum": ""
            },
            "require": {
                "ext-fileinfo": "*",
                "league/mime-type-detection": "^1.3",
                "php": "^7.2.5 || ^8.0"
            },
            "conflict": {
                "league/flysystem-sftp": "<1.0.6"
            },
            "require-dev": {
                "phpspec/prophecy": "^1.11.1",
                "phpunit/phpunit": "^8.5.8"
            },
            "suggest": {
                "ext-fileinfo": "Required for MimeType",
                "ext-ftp": "Allows you to use FTP server storage",
                "ext-openssl": "Allows you to use FTPS server storage",
                "league/flysystem-aws-s3-v2": "Allows you to use S3 storage with AWS SDK v2",
                "league/flysystem-aws-s3-v3": "Allows you to use S3 storage with AWS SDK v3",
                "league/flysystem-azure": "Allows you to use Windows Azure Blob storage",
                "league/flysystem-cached-adapter": "Flysystem adapter decorator for metadata caching",
                "league/flysystem-eventable-filesystem": "Allows you to use EventableFilesystem",
                "league/flysystem-rackspace": "Allows you to use Rackspace Cloud Files",
                "league/flysystem-sftp": "Allows you to use SFTP server storage via phpseclib",
                "league/flysystem-webdav": "Allows you to use WebDAV storage",
                "league/flysystem-ziparchive": "Allows you to use ZipArchive adapter",
                "spatie/flysystem-dropbox": "Allows you to use Dropbox storage",
                "srmklive/flysystem-dropbox-v2": "Allows you to use Dropbox storage for PHP 5 applications"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "1.1-dev"
                }
            },
            "autoload": {
                "psr-4": {
                    "League\\Flysystem\\": "src/"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Frank de Jonge",
                    "email": "info@frenky.net"
                }
            ],
            "description": "Filesystem abstraction: Many filesystems, one API.",
            "keywords": [
                "Cloud Files",
                "WebDAV",
                "abstraction",
                "aws",
                "cloud",
                "copy.com",
                "dropbox",
                "file systems",
                "files",
                "filesystem",
                "filesystems",
                "ftp",
                "rackspace",
                "remote",
                "s3",
                "sftp",
                "storage"
            ],
            "funding": [
                {
                    "url": "https://offset.earth/frankdejonge",
                    "type": "other"
                }
            ],
            "time": "2020-08-23T07:39:11+00:00"
        },
        {
            "name": "league/mime-type-detection",
            "version": "1.5.1",
            "source": {
                "type": "git",
                "url": "https://github.com/thephpleague/mime-type-detection.git",
                "reference": "353f66d7555d8a90781f6f5e7091932f9a4250aa"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/thephpleague/mime-type-detection/zipball/353f66d7555d8a90781f6f5e7091932f9a4250aa",
                "reference": "353f66d7555d8a90781f6f5e7091932f9a4250aa",
                "shasum": ""
            },
            "require": {
                "ext-fileinfo": "*",
                "php": "^7.2 || ^8.0"
            },
            "require-dev": {
                "phpstan/phpstan": "^0.12.36",
                "phpunit/phpunit": "^8.5.8"
            },
            "type": "library",
            "autoload": {
                "psr-4": {
                    "League\\MimeTypeDetection\\": "src"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Frank de Jonge",
                    "email": "info@frankdejonge.nl"
                }
            ],
            "description": "Mime-type detection for Flysystem",
            "funding": [
                {
                    "url": "https://github.com/frankdejonge",
                    "type": "github"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/league/flysystem",
                    "type": "tidelift"
                }
            ],
            "time": "2020-10-18T11:50:25+00:00"
        },
        {
            "name": "monolog/monolog",
            "version": "2.1.1",
            "source": {
                "type": "git",
                "url": "https://github.com/Seldaek/monolog.git",
                "reference": "f9eee5cec93dfb313a38b6b288741e84e53f02d5"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/Seldaek/monolog/zipball/f9eee5cec93dfb313a38b6b288741e84e53f02d5",
                "reference": "f9eee5cec93dfb313a38b6b288741e84e53f02d5",
                "shasum": ""
            },
            "require": {
                "php": ">=7.2",
                "psr/log": "^1.0.1"
            },
            "provide": {
                "psr/log-implementation": "1.0.0"
            },
            "require-dev": {
                "aws/aws-sdk-php": "^2.4.9 || ^3.0",
                "doctrine/couchdb": "~1.0@dev",
                "elasticsearch/elasticsearch": "^6.0",
                "graylog2/gelf-php": "^1.4.2",
                "php-amqplib/php-amqplib": "~2.4",
                "php-console/php-console": "^3.1.3",
                "php-parallel-lint/php-parallel-lint": "^1.0",
                "phpspec/prophecy": "^1.6.1",
                "phpunit/phpunit": "^8.5",
                "predis/predis": "^1.1",
                "rollbar/rollbar": "^1.3",
                "ruflin/elastica": ">=0.90 <3.0",
                "swiftmailer/swiftmailer": "^5.3|^6.0"
            },
            "suggest": {
                "aws/aws-sdk-php": "Allow sending log messages to AWS services like DynamoDB",
                "doctrine/couchdb": "Allow sending log messages to a CouchDB server",
                "elasticsearch/elasticsearch": "Allow sending log messages to an Elasticsearch server via official client",
                "ext-amqp": "Allow sending log messages to an AMQP server (1.0+ required)",
                "ext-mbstring": "Allow to work properly with unicode symbols",
                "ext-mongodb": "Allow sending log messages to a MongoDB server (via driver)",
                "graylog2/gelf-php": "Allow sending log messages to a GrayLog2 server",
                "mongodb/mongodb": "Allow sending log messages to a MongoDB server (via library)",
                "php-amqplib/php-amqplib": "Allow sending log messages to an AMQP server using php-amqplib",
                "php-console/php-console": "Allow sending log messages to Google Chrome",
                "rollbar/rollbar": "Allow sending log messages to Rollbar",
                "ruflin/elastica": "Allow sending log messages to an Elastic Search server"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "2.x-dev"
                }
            },
            "autoload": {
                "psr-4": {
                    "Monolog\\": "src/Monolog"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Jordi Boggiano",
                    "email": "j.boggiano@seld.be",
                    "homepage": "http://seld.be"
                }
            ],
            "description": "Sends your logs to files, sockets, inboxes, databases and various web services",
            "homepage": "http://github.com/Seldaek/monolog",
            "keywords": [
                "log",
                "logging",
                "psr-3"
            ],
            "funding": [
                {
                    "url": "https://github.com/Seldaek",
                    "type": "github"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/monolog/monolog",
                    "type": "tidelift"
                }
            ],
            "time": "2020-07-23T08:41:23+00:00"
        },
        {
            "name": "morrislaptop/firestore-php",
            "version": "v2.2.1",
            "source": {
                "type": "git",
                "url": "https://github.com/morrislaptop/firestore-php.git",
                "reference": "39a40fa9ae8995d6319602c68d2093f245d389fd"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/morrislaptop/firestore-php/zipball/39a40fa9ae8995d6319602c68d2093f245d389fd",
                "reference": "39a40fa9ae8995d6319602c68d2093f245d389fd",
                "shasum": ""
            },
            "require": {
                "google/protobuf": "^3.6",
                "kreait/firebase-php": "4.15"
            },
            "require-dev": {
                "morrislaptop/var-dumper-with-context": "^0.2.0",
                "phpunit/phpunit": "^7.1",
                "symfony/var-dumper": "^4.0"
            },
            "type": "library",
            "autoload": {
                "psr-4": {
                    "Morrislaptop\\Firestore\\": "src"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Craig Morris",
                    "email": "cr@igmorr.is"
                }
            ],
            "description": "Firestore SDK for PHP without gRPC",
            "homepage": "https://github.com/morrislaptop/firestore-php",
            "keywords": [
                "api",
                "database",
                "firestore",
                "google",
                "sdk"
            ],
            "time": "2018-11-18T10:00:31+00:00"
        },
        {
            "name": "mtdowling/jmespath.php",
            "version": "2.6.0",
            "source": {
                "type": "git",
                "url": "https://github.com/jmespath/jmespath.php.git",
                "reference": "42dae2cbd13154083ca6d70099692fef8ca84bfb"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/jmespath/jmespath.php/zipball/42dae2cbd13154083ca6d70099692fef8ca84bfb",
                "reference": "42dae2cbd13154083ca6d70099692fef8ca84bfb",
                "shasum": ""
            },
            "require": {
                "php": "^5.4 || ^7.0 || ^8.0",
                "symfony/polyfill-mbstring": "^1.17"
            },
            "require-dev": {
                "composer/xdebug-handler": "^1.4",
                "phpunit/phpunit": "^4.8.36 || ^7.5.15"
            },
            "bin": [
                "bin/jp.php"
            ],
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "2.6-dev"
                }
            },
            "autoload": {
                "psr-4": {
                    "JmesPath\\": "src/"
                },
                "files": [
                    "src/JmesPath.php"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Michael Dowling",
                    "email": "mtdowling@gmail.com",
                    "homepage": "https://github.com/mtdowling"
                }
            ],
            "description": "Declaratively specify how to extract elements from a JSON document",
            "keywords": [
                "json",
                "jsonpath"
            ],
            "time": "2020-07-31T21:01:56+00:00"
        },
        {
            "name": "psr/cache",
            "version": "1.0.1",
            "source": {
                "type": "git",
                "url": "https://github.com/php-fig/cache.git",
                "reference": "d11b50ad223250cf17b86e38383413f5a6764bf8"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/php-fig/cache/zipball/d11b50ad223250cf17b86e38383413f5a6764bf8",
                "reference": "d11b50ad223250cf17b86e38383413f5a6764bf8",
                "shasum": ""
            },
            "require": {
                "php": ">=5.3.0"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "1.0.x-dev"
                }
            },
            "autoload": {
                "psr-4": {
                    "Psr\\Cache\\": "src/"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "PHP-FIG",
                    "homepage": "http://www.php-fig.org/"
                }
            ],
            "description": "Common interface for caching libraries",
            "keywords": [
                "cache",
                "psr",
                "psr-6"
            ],
            "time": "2016-08-06T20:24:11+00:00"
        },
        {
            "name": "psr/http-message",
            "version": "1.0.1",
            "source": {
                "type": "git",
                "url": "https://github.com/php-fig/http-message.git",
                "reference": "f6561bf28d520154e4b0ec72be95418abe6d9363"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/php-fig/http-message/zipball/f6561bf28d520154e4b0ec72be95418abe6d9363",
                "reference": "f6561bf28d520154e4b0ec72be95418abe6d9363",
                "shasum": ""
            },
            "require": {
                "php": ">=5.3.0"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "1.0.x-dev"
                }
            },
            "autoload": {
                "psr-4": {
                    "Psr\\Http\\Message\\": "src/"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "PHP-FIG",
                    "homepage": "http://www.php-fig.org/"
                }
            ],
            "description": "Common interface for HTTP messages",
            "homepage": "https://github.com/php-fig/http-message",
            "keywords": [
                "http",
                "http-message",
                "psr",
                "psr-7",
                "request",
                "response"
            ],
            "time": "2016-08-06T14:39:51+00:00"
        },
        {
            "name": "psr/log",
            "version": "1.1.3",
            "source": {
                "type": "git",
                "url": "https://github.com/php-fig/log.git",
                "reference": "0f73288fd15629204f9d42b7055f72dacbe811fc"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/php-fig/log/zipball/0f73288fd15629204f9d42b7055f72dacbe811fc",
                "reference": "0f73288fd15629204f9d42b7055f72dacbe811fc",
                "shasum": ""
            },
            "require": {
                "php": ">=5.3.0"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "1.1.x-dev"
                }
            },
            "autoload": {
                "psr-4": {
                    "Psr\\Log\\": "Psr/Log/"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "PHP-FIG",
                    "homepage": "http://www.php-fig.org/"
                }
            ],
            "description": "Common interface for logging libraries",
            "homepage": "https://github.com/php-fig/log",
            "keywords": [
                "log",
                "psr",
                "psr-3"
            ],
            "time": "2020-03-23T09:12:05+00:00"
        },
        {
            "name": "psr/simple-cache",
            "version": "1.0.1",
            "source": {
                "type": "git",
                "url": "https://github.com/php-fig/simple-cache.git",
                "reference": "408d5eafb83c57f6365a3ca330ff23aa4a5fa39b"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/php-fig/simple-cache/zipball/408d5eafb83c57f6365a3ca330ff23aa4a5fa39b",
                "reference": "408d5eafb83c57f6365a3ca330ff23aa4a5fa39b",
                "shasum": ""
            },
            "require": {
                "php": ">=5.3.0"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "1.0.x-dev"
                }
            },
            "autoload": {
                "psr-4": {
                    "Psr\\SimpleCache\\": "src/"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "PHP-FIG",
                    "homepage": "http://www.php-fig.org/"
                }
            ],
            "description": "Common interfaces for simple caching",
            "keywords": [
                "cache",
                "caching",
                "psr",
                "psr-16",
                "simple-cache"
            ],
            "time": "2017-10-23T01:57:42+00:00"
        },
        {
            "name": "ralouphie/getallheaders",
            "version": "3.0.3",
            "source": {
                "type": "git",
                "url": "https://github.com/ralouphie/getallheaders.git",
                "reference": "120b605dfeb996808c31b6477290a714d356e822"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/ralouphie/getallheaders/zipball/120b605dfeb996808c31b6477290a714d356e822",
                "reference": "120b605dfeb996808c31b6477290a714d356e822",
                "shasum": ""
            },
            "require": {
                "php": ">=5.6"
            },
            "require-dev": {
                "php-coveralls/php-coveralls": "^2.1",
                "phpunit/phpunit": "^5 || ^6.5"
            },
            "type": "library",
            "autoload": {
                "files": [
                    "src/getallheaders.php"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Ralph Khattar",
                    "email": "ralph.khattar@gmail.com"
                }
            ],
            "description": "A polyfill for getallheaders.",
            "time": "2019-03-08T08:55:37+00:00"
        },
        {
            "name": "riverline/multipart-parser",
            "version": "2.0.8",
            "source": {
                "type": "git",
                "url": "https://github.com/Riverline/multipart-parser.git",
                "reference": "2fe9026789754c1ff07c06047f0acc113e90933a"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/Riverline/multipart-parser/zipball/2fe9026789754c1ff07c06047f0acc113e90933a",
                "reference": "2fe9026789754c1ff07c06047f0acc113e90933a",
                "shasum": ""
            },
            "require": {
                "ext-mbstring": "*",
                "php": ">=5.6.0"
            },
            "require-dev": {
                "laminas/laminas-diactoros": "^1.8.7",
                "phpunit/phpunit": "^5.2 || ^6.0 || ^7.0",
                "psr/http-message": "^1.0",
                "symfony/psr-http-message-bridge": "^1.1"
            },
            "type": "library",
            "autoload": {
                "psr-4": {
                    "Riverline\\MultiPartParser\\": "src/"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Romain Cambien",
                    "email": "romain@cambien.net"
                },
                {
                    "name": "Riverline",
                    "homepage": "http://www.riverline.fr"
                }
            ],
            "description": "One class library to parse multipart content with encoding and charset support.",
            "keywords": [
                "http",
                "multipart",
                "parser"
            ],
            "time": "2020-01-24T09:39:24+00:00"
        },
        {
            "name": "rize/uri-template",
            "version": "0.3.2",
            "source": {
                "type": "git",
                "url": "https://github.com/rize/UriTemplate.git",
                "reference": "9e5fdd5c47147aa5adf7f760002ee591ed37b9ca"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/rize/UriTemplate/zipball/9e5fdd5c47147aa5adf7f760002ee591ed37b9ca",
                "reference": "9e5fdd5c47147aa5adf7f760002ee591ed37b9ca",
                "shasum": ""
            },
            "require": {
                "php": ">=5.3.0"
            },
            "require-dev": {
                "phpunit/phpunit": "~4.0.0"
            },
            "type": "library",
            "autoload": {
                "psr-0": {
                    "Rize\\UriTemplate": "src/"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Marut K",
                    "homepage": "http://twitter.com/rezigned"
                }
            ],
            "description": "PHP URI Template (RFC 6570) supports both expansion & extraction",
            "keywords": [
                "RFC 6570",
                "template",
                "uri"
            ],
            "time": "2017-06-14T03:57:53+00:00"
        },
        {
            "name": "superbalist/flysystem-google-storage",
            "version": "7.2.2",
            "source": {
                "type": "git",
                "url": "https://github.com/Superbalist/flysystem-google-cloud-storage.git",
                "reference": "87e2f450c0e4b5200fef9ffe6863068cc873d734"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/Superbalist/flysystem-google-cloud-storage/zipball/87e2f450c0e4b5200fef9ffe6863068cc873d734",
                "reference": "87e2f450c0e4b5200fef9ffe6863068cc873d734",
                "shasum": ""
            },
            "require": {
                "google/cloud-storage": "~1.0",
                "league/flysystem": "~1.0",
                "php": ">=5.5.0"
            },
            "require-dev": {
                "mockery/mockery": "0.9.*",
                "phpunit/phpunit": "~4.0"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-master": "1.0-dev"
                }
            },
            "autoload": {
                "psr-4": {
                    "Superbalist\\Flysystem\\GoogleStorage\\": "src/"
                }
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Superbalist.com a division of Takealot Online (Pty) Ltd",
                    "email": "info@superbalist.com"
                }
            ],
            "description": "Flysystem adapter for Google Cloud Storage",
            "time": "2019-10-10T12:22:54+00:00"
        },
        {
            "name": "symfony/polyfill-intl-idn",
            "version": "v1.20.0",
            "source": {
                "type": "git",
                "url": "https://github.com/symfony/polyfill-intl-idn.git",
                "reference": "3b75acd829741c768bc8b1f84eb33265e7cc5117"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/symfony/polyfill-intl-idn/zipball/3b75acd829741c768bc8b1f84eb33265e7cc5117",
                "reference": "3b75acd829741c768bc8b1f84eb33265e7cc5117",
                "shasum": ""
            },
            "require": {
                "php": ">=7.1",
                "symfony/polyfill-intl-normalizer": "^1.10",
                "symfony/polyfill-php72": "^1.10"
            },
            "suggest": {
                "ext-intl": "For best performance"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-main": "1.20-dev"
                },
                "thanks": {
                    "name": "symfony/polyfill",
                    "url": "https://github.com/symfony/polyfill"
                }
            },
            "autoload": {
                "psr-4": {
                    "Symfony\\Polyfill\\Intl\\Idn\\": ""
                },
                "files": [
                    "bootstrap.php"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Laurent Bassin",
                    "email": "laurent@bassin.info"
                },
                {
                    "name": "Trevor Rowbotham",
                    "email": "trevor.rowbotham@pm.me"
                },
                {
                    "name": "Symfony Community",
                    "homepage": "https://symfony.com/contributors"
                }
            ],
            "description": "Symfony polyfill for intl's idn_to_ascii and idn_to_utf8 functions",
            "homepage": "https://symfony.com",
            "keywords": [
                "compatibility",
                "idn",
                "intl",
                "polyfill",
                "portable",
                "shim"
            ],
            "funding": [
                {
                    "url": "https://symfony.com/sponsor",
                    "type": "custom"
                },
                {
                    "url": "https://github.com/fabpot",
                    "type": "github"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/symfony/symfony",
                    "type": "tidelift"
                }
            ],
            "time": "2020-10-23T14:02:19+00:00"
        },
        {
            "name": "symfony/polyfill-intl-normalizer",
            "version": "v1.20.0",
            "source": {
                "type": "git",
                "url": "https://github.com/symfony/polyfill-intl-normalizer.git",
                "reference": "727d1096295d807c309fb01a851577302394c897"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/symfony/polyfill-intl-normalizer/zipball/727d1096295d807c309fb01a851577302394c897",
                "reference": "727d1096295d807c309fb01a851577302394c897",
                "shasum": ""
            },
            "require": {
                "php": ">=7.1"
            },
            "suggest": {
                "ext-intl": "For best performance"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-main": "1.20-dev"
                },
                "thanks": {
                    "name": "symfony/polyfill",
                    "url": "https://github.com/symfony/polyfill"
                }
            },
            "autoload": {
                "psr-4": {
                    "Symfony\\Polyfill\\Intl\\Normalizer\\": ""
                },
                "files": [
                    "bootstrap.php"
                ],
                "classmap": [
                    "Resources/stubs"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Nicolas Grekas",
                    "email": "p@tchwork.com"
                },
                {
                    "name": "Symfony Community",
                    "homepage": "https://symfony.com/contributors"
                }
            ],
            "description": "Symfony polyfill for intl's Normalizer class and related functions",
            "homepage": "https://symfony.com",
            "keywords": [
                "compatibility",
                "intl",
                "normalizer",
                "polyfill",
                "portable",
                "shim"
            ],
            "funding": [
                {
                    "url": "https://symfony.com/sponsor",
                    "type": "custom"
                },
                {
                    "url": "https://github.com/fabpot",
                    "type": "github"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/symfony/symfony",
                    "type": "tidelift"
                }
            ],
            "time": "2020-10-23T14:02:19+00:00"
        },
        {
            "name": "symfony/polyfill-mbstring",
            "version": "v1.20.0",
            "source": {
                "type": "git",
                "url": "https://github.com/symfony/polyfill-mbstring.git",
                "reference": "39d483bdf39be819deabf04ec872eb0b2410b531"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/symfony/polyfill-mbstring/zipball/39d483bdf39be819deabf04ec872eb0b2410b531",
                "reference": "39d483bdf39be819deabf04ec872eb0b2410b531",
                "shasum": ""
            },
            "require": {
                "php": ">=7.1"
            },
            "suggest": {
                "ext-mbstring": "For best performance"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-main": "1.20-dev"
                },
                "thanks": {
                    "name": "symfony/polyfill",
                    "url": "https://github.com/symfony/polyfill"
                }
            },
            "autoload": {
                "psr-4": {
                    "Symfony\\Polyfill\\Mbstring\\": ""
                },
                "files": [
                    "bootstrap.php"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Nicolas Grekas",
                    "email": "p@tchwork.com"
                },
                {
                    "name": "Symfony Community",
                    "homepage": "https://symfony.com/contributors"
                }
            ],
            "description": "Symfony polyfill for the Mbstring extension",
            "homepage": "https://symfony.com",
            "keywords": [
                "compatibility",
                "mbstring",
                "polyfill",
                "portable",
                "shim"
            ],
            "funding": [
                {
                    "url": "https://symfony.com/sponsor",
                    "type": "custom"
                },
                {
                    "url": "https://github.com/fabpot",
                    "type": "github"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/symfony/symfony",
                    "type": "tidelift"
                }
            ],
            "time": "2020-10-23T14:02:19+00:00"
        },
        {
            "name": "symfony/polyfill-php72",
            "version": "v1.20.0",
            "source": {
                "type": "git",
                "url": "https://github.com/symfony/polyfill-php72.git",
                "reference": "cede45fcdfabdd6043b3592e83678e42ec69e930"
            },
            "dist": {
                "type": "zip",
                "url": "https://api.github.com/repos/symfony/polyfill-php72/zipball/cede45fcdfabdd6043b3592e83678e42ec69e930",
                "reference": "cede45fcdfabdd6043b3592e83678e42ec69e930",
                "shasum": ""
            },
            "require": {
                "php": ">=7.1"
            },
            "type": "library",
            "extra": {
                "branch-alias": {
                    "dev-main": "1.20-dev"
                },
                "thanks": {
                    "name": "symfony/polyfill",
                    "url": "https://github.com/symfony/polyfill"
                }
            },
            "autoload": {
                "psr-4": {
                    "Symfony\\Polyfill\\Php72\\": ""
                },
                "files": [
                    "bootstrap.php"
                ]
            },
            "notification-url": "https://packagist.org/downloads/",
            "license": [
                "MIT"
            ],
            "authors": [
                {
                    "name": "Nicolas Grekas",
                    "email": "p@tchwork.com"
                },
                {
                    "name": "Symfony Community",
                    "homepage": "https://symfony.com/contributors"
                }
            ],
            "description": "Symfony polyfill backporting some PHP 7.2+ features to lower PHP versions",
            "homepage": "https://symfony.com",
            "keywords": [
                "compatibility",
                "polyfill",
                "portable",
                "shim"
            ],
            "funding": [
                {
                    "url": "https://symfony.com/sponsor",
                    "type": "custom"
                },
                {
                    "url": "https://github.com/fabpot",
                    "type": "github"
                },
                {
                    "url": "https://tidelift.com/funding/github/packagist/symfony/symfony",
                    "type": "tidelift"
                }
            ],
            "time": "2020-10-23T14:02:19+00:00"
        }
    ],
    "packages-dev": [],
    "aliases": [],
    "minimum-stability": "stable",
    "stability-flags": [],
    "prefer-stable": false,
    "prefer-lowest": false,
    "platform": [],
    "platform-dev": [],
    "plugin-api-version": "1.1.0"
}
