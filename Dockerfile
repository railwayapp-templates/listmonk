FROM listmonk/listmonk:latest
ARG PORT ADMIN_PASSWORD ADMIN_USERNAME PGDATABASE PGHOST PGPASSWORD PGPORT PGUSER
COPY config.sh ./config.sh
RUN chmod +x ./config.sh && ./config.sh
RUN ./listmonk --idempotent --yes --upgrade || ./listmonk --install --yes --upgrade
