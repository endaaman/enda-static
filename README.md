# static.endaaman.me

This is a simple static file server which can resize/crop images using `nginx_image_filter`.

Main content is [`nginx/enda-static.conf`](https://github.com/endaaman/static.endaaman.me/blob/master/nginx/enda-static.conf).

### features

- resize/crop by query
- safe with non-image files
- full caching


### example

Originl file: [https://static.endaaman.me/lawn.jpg](https://static.endaaman.me/lawn.jpg)

### resize to containing in 300px square

https://static.endaaman.me/lawn.jpg?w=300

![lawn.jpg (JPEG Image, 300 × 199 pixels)](https://static.endaaman.me/lawn.jpg?w=300)

### resize to containing in 200x500px rectangle

https://static.endaaman.me/lawn.jpg?w=200&h=500

![lawn.jpg (JPEG Image, 200 × 133 pixels)](https://static.endaaman.me/lawn.jpg?w=200&h=500)

### crop to 300px square

https://static.endaaman.me/lawn.jpg?w=300&crop

![lawn.jpg (JPEG Image, 300 × 300 pixels)](https://static.endaaman.me/lawn.jpg?w=300&crop)

### crop to 200x300px rectangle

https://static.endaaman.me/lawn.jpg?crop&w=200&h=300

![lawn.jpg (JPEG Image, 200 × 300 pixels)](https://static.endaaman.me/lawn.jpg?crop&w=200&h=300)


