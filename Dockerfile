# Use the official Tomcat 9 image as the base image
FROM tomcat:9

# Set environment variables
ENV CATALINA_HOME /usr/local/tomcat
ENV PATH $CATALINA_HOME/bin:$PATH

# Remove the default Tomcat applications
RUN rm -rf $CATALINA_HOME/webapps/*

# Copy your application war file to the container
COPY http://csci.viu.ca/~barskym/teaching/DM2012/labs/LAB6/Lab6A.war $CATALINA_HOME/webapps/ROOT.war

# Set the timezone to your local timezone
RUN ln -sf /usr/share/zoneinfo/Asia/Kolkata /etc/localtime

# Expose port 8080 for Tomcat
EXPOSE 8080

# Start Tomcat when the container launches
CMD ["catalina.sh", "run"]

