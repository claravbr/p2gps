FROM tomcat:7-jre8

MAINTAINER clara.vbr@gmail.com

COPY drop/* /usr/local/tomcat/webapps/

EXPOSE 8082

ENTRYPOINT P=8082 ;sed "s/8080/$P/g" < conf/server.xml > /tmp/srv.xml
&& catalina.sh run -config /tmp/srv.xml
