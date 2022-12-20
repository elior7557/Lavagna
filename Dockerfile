FROM maven:3.8.6-openjdk-8



# copy source files
COPY src /app/src
COPY pom.xml LICENSE-GPLv3.txt /app/

WORKDIR /app
# build and verify
RUN mvn verify

# # set the entrypoint script
COPY entrypoint.sh /entrypoint.sh

RUN ["chmod", "+x", "/entrypoint.sh"]

ENTRYPOINT ["/entrypoint.sh"]
