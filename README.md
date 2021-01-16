# Coffee Shop Community Library (CSCL) Database
## Getting Started
### Requirements:
- [docker](https://docs.docker.com/install/)
- [docker-compose](https://docs.docker.com/compose/install/)

### Docker & Docker-Compose
Docker containers are used to facilitate local development. Using docker-compose you can run a local environment which contains a MongoDB or MariaDB (MySQL) database that is bootstrapped with 1,000 book records.

Please copy the directory of the database you are interested in using to your own application repository.
Make sure to place the files at the root of your project: 
```
mv mongo/* -> /my-project/

/my-project/
-- docker-compose.yml
-- seed/
...
...
```

Also remember that you will be able to add container definitions for your backend application to the `docker-compose.yml` file if you wish.

#### Commands
| Command | Description |
|:---|---|
| `docker-compose up` | Start the local database environment |
| `docker-compose down` | Stop the local database environment. Keeps the data volume so changes to the database persist. |
| `docker-compose down -v` | Stop the local database environment. Delete the database data volume. Useful when wanting to start from scratch. |
| ` docker-compose exec mongo mongo -u cscl --authenticationDatabase=cscl` | Start a mongo client session within the running Mongo container. You will need to type in the password. |
| `docker-compose exec mysql mysql -u 'cscl' -p -D cscl` | Start a mysql client session within the running MariaDB container. You will need to type in the password. |
| `docker-compose exec postgres psql -U postgres -W -d cscl` | Start a psql shell within the postgres container. You will need to type in the password. |

Once up and running, you can access the databases as follows:  

*Mongo*
From your computer: 127.0.0.1:27017
From another container within the same `docker-compose.yml` file: cscl_db:27017

*MySQL/MariaDB*
From your computer: 127.0.0.1:3306
From another container within the same `docker-compose.yml` file: cscl_db:3306

*Postgres*
From your computer: 127.0.0.1:5432
From another container within the same `docker-compose.yml` file: cscl_db:5432

#### Mongo
The development database is called `cscl`
The authentication information is:
- Username: `cscl`
- Password: `mongo`
- Authentication Database: `cscl`

#### MySql
The development database is called `cscl`
The table is called `Books`
Authentication credentials are:
- Username: `cscl@localhost`
- Password: `mysql`

#### MySql
The development database is called `cscl`
The database is called `cscl`
The table is called `books`
Authentication credentials are:
- Username: `postgres`
- Password: `postgres`
