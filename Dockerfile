FROM tomcat:8.0

# Change the tomcat location to yours
ADD ./webapp/target/*.war /home/ailtonmsj/work/tomcat/apache-tomcat-8.5.32/webapps/ 

# Expose in port you prefer
EXPOSE 8282

CMD ["catalina.sh", "run"]