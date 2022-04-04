# docker-conf

Docker configuration for Body Works. Run quick copy of `Body Works` in `Docker`.

## Usage

Use `docker-compose up` to build these containers.

Database can be restored using `phpMyAdmin` running on port `8080` of `localhost`.

Remember to edit your `hosts` file to match domain:

```
127.0.0.1 body-works.pl
```

> Remember that this Docker uses self-signed certificate for SSL. So it's better to use Firefox for development (you can import cert).