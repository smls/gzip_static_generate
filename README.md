# gzip_static_generate

Pre-compresses files for the [nginx](http://nginx.org/) webserver (for use with the [gzip_static](http://nginx.org/en/docs/http/ngx_http_gzip_static_module.html#gzip_static) directive).

Usage examples:

```sh
# Pre-compress files of common text-based web file types:
gzip_static_generate /srv/http

# Pre-compress .pdf and .doc files in addition to the normal types:
gzip_static_generate --types+=pdf,doc /srv/http

# Pre-compress *only* .html files larger than 1kB:
gzip_static_generate --types=html --min_length=1024 /srv/http
```

## Features

* **Sane defaults**  
  Only compresses files of common text-based web file formats by default.
* **Flexible**  
  Can be controlled via command-line options.
* **Robust**  
  Works fine on filenames with spaces in them, and other special cases.

## Installation

Just copy the `gzip_static_generate` file to somewhere in your path, and make sure it's executable.

You can also install a man page by running:
```sh
make man
sudo cp gzip_static_generate.1.gz /usr/share/man/man1/
```

## Documentation

See the man page. (If you didn't install it the normal way, you can still view it on-demand by calling `gzip_static_generate --man`).
