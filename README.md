# database-devops

## Liquibase - Docker
```shell
docker run --net liquibase_vs_flyway_net  --rm -v "$(pwd)"/liquibase_conf:/liquibase/changelog  liquibase/liquibase:4.7 --defaultsFile=./changelog/docker-liquibase.properties status
```
```shell
docker-compose run --rm  --defaultsFile=./changelog/docker-liquibase.properties status
```
## Liquibase - Local
```shell
liquibase --defaults-file=liquibase_conf/local-liquibase.properties status
```
## Flyway