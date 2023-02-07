# README

```
docker-compose up
```

# Setup

```
docker exec -it two-mongodb bash
```
```
mongo -u root -p root
```
```
use two-mongodb;
db.createUser({
    user: "user",
    pwd: "password",
    roles: [{role: "readWrite", db: "two-mongodb"}]
});
db.createCollection("event_logs");
db.event_logs.insert({name: "test"});
exit;
```

# TODO

* [ ] Add a config file to connect with mongodb
* [ ] Create a repository to wrap the mongo operations
* [ ] Create a better document class for EventLog
* [ ] Tests