# message bus

Simple message bus created using NCHAN.

- Exposes `/pub` and `/sub` routes.
- Uses [Server-Sent Events](https://www.w3.org/TR/eventsource/)


### Example commands:

start container

```sh
docker-compose up
```

or

```sh
docker run --rm -p 8080:80 vgerevini/nchan-message-bus
```

Subscribe:

```sh
curl --request GET -i -k -H "Accept: text/event-stream" http://localhost:8080/sub
```

Publish:
```sh
curl -i --request POST --header "X-EventSource-Event: myEvent" --data '{"message": "some message"}' http://localhost:8080/pub
```
