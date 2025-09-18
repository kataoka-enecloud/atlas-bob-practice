env "local" {
  src = "file://schema.sql"
  dev = "docker://postgres/17/dev"
  url = "postgres://root:pass@localhost:5432/practice?sslmode=disable"

  migration {
    dir = "file://migrations"
  }
}
