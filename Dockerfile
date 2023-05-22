FROM tomcat:9.0

# Remove the existing Tomcat webapps directory
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy the WAR file to the Tomcat webapps directory
COPY /root/jenkins_home/.jenkins/jobs/DevSecOps/workspace/target /usr/local/tomcat/webapps/ROOT
# ADD /root/jenkins_home/.jenkins/jobs/DevSecOps/workspace/target /usr/local/tomcat/webapps/ROOT


# Expose port 8080 (the default Tomcat port)
EXPOSE 8080

# Start Tomcat and deploy the application
CMD ["catalina.sh", "run"]
