FROM tomcat:9.0

ENV CATALINA_HOME /usr/local/tomcat
ENV APPDIR /usr/local/src/docker-polymer
ENV PATH $CATALINA_HOME/bin:$PATH

RUN mkdir -p "$CATALINA_HOME"
RUN mkdir -p "$APPDIR"

WORKDIR $CATALINA_HOME

COPY server.xml /usr/local/tomcat/conf
COPY build/default $APPDIR

EXPOSE 8080
CMD ["catalina.sh", "run"]
