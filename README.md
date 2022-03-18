# Docker Kafka

A hello world example of how to use Kafka with python. 

Bring up the container and enter the backend with:

```
make up && make enter
```

Run app:

```
faust -A myapp worker -l info
```
