FROM mysql


ENV MYSQL_ROOT_PASSWORD pucsd

#adding user and password
ENV MYSQL_USER pucsd
ENV MYSQL_PASSWORD pucsd

#adding a database
ENV MYSQL_DATABASE pucsdStudents


#adding contents of sqlScripts file in docker image

COPY ./sqlScripts/ /docker-entrypoint-initdb.d/
