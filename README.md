# atlas-bob-practice

- `schema.sql` を変更し、`atlas migrate diff <name> --env local` でマイグレーションファイル生成。
- `atlas migrate apply --env local --dry-run` が `goose validate` 相当。
- `atlas migrate apply --env local` が `goose up` 相当。
- `atlas migrate down --env local` が `goose down` 相当。
