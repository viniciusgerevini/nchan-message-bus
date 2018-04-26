# message bus

Simple message bus created using NCHAN.

- Exposes `/pub` and `/sub` routes.
- Uses [Server-Sent Events](https://www.w3.org/TR/eventsource/)

### Example commands:

start container

```sh
docker-compose up
```

Subscribe:

```sh
curl --request GET -i -k -H "Accept: text/event-stream" http://localhost:8080/sub
```

Publish:
```sh
curl -i --request POST --header "X-EventSource-Event: myEvent" --data '{"message": "some message"}' http://localhost:8080/pub
```
