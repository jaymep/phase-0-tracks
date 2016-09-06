# 9.1 How the Web Works
## Release 0: View HTTP Requests
### What are some common HTTP status codes?
* 400 Bad Request
* 401 Unauthorized
* 403 Forbidden
* 404 Not Found
* 500 Internal Server Error
* 503 Service Unavailable

Codes found [here](https://developer.mozilla.org/en-US/docs/Web/HTTP/Status "Mozilla Developer Network")

### What is the difference between a GET request and a POST request? When might each be used?
* GET only requests data from a server while POST also sends data with its request. For example, typing http://mail.google.com into a browser address bar will send a GET request, logging in to that website with a user name and password will send a POST request.

### What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?
* It's a tiny piece of data sent by a web server to a user's browser. Cookies are used to store information like online shopping carts, user information (name, password, address, credit card), log in status, and browser history.
* Each GET request can be logged to a cookie that is sent back to advertisers who then tailor ads to what you've been looking at online. Examples: sponsored posts on Facebook and Twitter.
* If you check a "Remember me" box on a website or allow the browser to save your user ID and password, a cookie will store that and not have to use a POST method each time.