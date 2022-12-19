FROM maven:3.5.2-jdk-8

# copy source files
COPY src /app/src
COPY pom.xml /app

# build and verify
RUN mvn -f /app/pom.xml clean verify

# set the entrypoint script
# COPY entrypoint.sh /entrypoint.sh

# ENTRYPOINT ["/entrypoint.sh"]
