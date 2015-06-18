db.changeUserPassword("root", "123456")


use admin
db.createUser(
  {
    user: "admin",
    pwd: "123456",
    roles: [ { role: "userAdminAnyDatabase", db: "admin" } ]
  }
)

db.createUser(
  {
    user: "test",
    pwd: "123456",
    roles: [ { role: "readWrite", db: "test" } ]
  }
)


mongod --auth --config /workspace/app/mongodb/mongodb.conf --dbpath /workspace/data/mogodb --rest

mongo.exe -u admin -p 123456 --authenticationDatabase admin

mongo.exe -u test -p 123456