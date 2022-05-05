echo "
[app]
address = \"0.0.0.0:${PORT}\"
admin_username = \"${ADMIN_USERNAME}\"
admin_password = \"${ADMIN_PASSWORD}\"
# Database.
[db]
host = \"${PGHOST}\"
port = ${PGPORT}
user = \"${PGUSER}\"
password = \"${PGPASSWORD}\"
database = \"${PGDATABASE}\"
ssl_mode = \"disable\"
max_open = 25
max_idle = 25
max_lifetime = \"300s\"
" > config.toml
