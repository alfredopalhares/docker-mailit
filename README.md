## Docker Mailit

A dockerfile for [mailit](https://github.com/dthree/mailit), a simple email Rest
API.


#### Environment Varibles

Set the following values according with your necesseties
```sh
MAILIT_HOST=foobar.com
MAILIT_PORT=465
MAILIT_USER=foo
MAILIT_PASSWORD=MyAw3s0m3Pa$$w0rd
MAILIT_REJECT_UNAUTHORIZED=False
MAILIT_SECURE=True
```

### Using Docker Hub image

```
docker pull masterkorp/mailit
```

#### Usage with composer

1. Copy `template.env` to `mailit.env`
2. Edit with your credentials
3. Run `docker-compose up`
4. Profit


#### Author

Alfredo Palhares <alfredo@palhares.me>

