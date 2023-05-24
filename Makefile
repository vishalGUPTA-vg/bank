migrateup:
        goose postgres "postgres://postgres:postgrespw@localhost:49153/simple_bank?sslmode=disable" up