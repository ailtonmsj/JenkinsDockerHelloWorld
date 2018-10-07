FROM tomcat:8.0

ADD ./webapp/target/*.war /usr/local/tomcat/webapps/

# Expose in port you prefer
EXPOSE 8282

CMD ["catalina.sh", "run"]