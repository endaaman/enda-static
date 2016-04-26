# static.endaaman.me
This is a simple static file server which can resize/crop images using `nginx_image_filter`.

Main content is [`nginx/enda-static.conf`](/endaaman/enda-static/nginx/enda-static.conf).

## Note
* It renders files in `/var/uploaded/enda` of the machine
so that you should do `mkdir -p /var/uploaded/enda` before `./run.sh`

* `server.js` (uses port:3001) is just a stub server. This is used when developing related projects.
