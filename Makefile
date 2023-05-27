migrateup:
        goose postgres "postgres://postgres:postgrespw@localhost:49155/bank?sslmode=disable" up

postgres:
        docker run --name postgres12 -p 5432:5432 -e POSTGRES_USER=root -e POSTGRES_PASSWORD=secret -d postgres:12-alpine
creatdb:
        docker exec -it postgres12 creatdb --username=root --owner=root simple_bank 
dropdb:
        docker exec -it postgres12 dropdb simple_bank

.PHONY:postgres createdb dropdb migrateup
