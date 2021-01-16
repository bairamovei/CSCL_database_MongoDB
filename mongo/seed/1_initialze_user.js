db.createUser({
  user: "cscl",
  pwd: "mongo",
  roles: [
    {
      role: "readWrite",
      db: "cscl"
    }
  ]
});

db.books.createIndex({ isbn: 1 });
