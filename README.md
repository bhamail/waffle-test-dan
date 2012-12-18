waffle-test-dan
===============

simple waffle servlet test project


Setup

* To deploy to a local running tomcat 6 instance, make the following changes:

 1. Add a server block to .m2/settings.xml:

            <servers>
            ...
                <server>
                    <id>mylocalserver</id>
                    <username>tomcat</username>
                    <password>tomcat</password>
                </server>

 2. Add user/perms in tomcat/conf/tomcat-users.xml:

                      <role rolename="tomcat"/>
                      <user username="tomcat" password="tomcat" roles="tomcat,manager-gui,manager-script,manager-jmx,manager-status"/>

 3. Deploy to the local tomcat 6 instance using:

        mvn clean package tomcat6:redeploy

   The app will be available at:

        http://localhost:8080/waffle-test-dan/

 4. You can launch a locally installed tomcat with remote debugging enabled on port 8000 using:

        apache-tomcat-6.0.35$ bin/catalina.sh jpda start

