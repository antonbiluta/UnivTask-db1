FROM postgres:alpine
ADD scripts/1_init.sql /docker-entrypoint-initdb.d
ADD scripts/2_triggerpack.sql /docker-entrypoint-initdb.d
ADD scripts/3_testing.sql /docker-entrypoint-initdb.d
RUN chmod a+r /docker-entrypoint-initdb.d/*
EXPOSE 5432