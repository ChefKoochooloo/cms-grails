# cms-grails
cms-grails
Development Setup:
Download and install latest Java 8 JDK http://www.oracle.com/technetwork/java/javase/downloads/index.html
Configure JAVA_HOME
Test by java -version
Download and install Grails 2.5.1 https://grails.org/download.html
https://grails.org/documentation.html
Configure GRAILS_HOME
Test by grails -version
Download and install latest MySQL 5.6 (5.6.26) http://dev.mysql.com/downloads/mysql/
used for local development; later we'll connect to AWS, and then to CloudKit
Remember your admin (root) login/password
Enter the mysql console: mysql -u root -p
Create a chefk database: create database chefk
git clone this repository
git clone https://github.com/ChefKoochooloo/cms-grails.git
git clone https://github.com/nazinaz/cms-grails.git
Update your config (chefk-config.properties) file
/Users/aliamirriazi/gitchef/cms-grails/chefk-config.properties
Edit chefk-config.properties with my password and save it.
dataSource.url=jdbc:mysql://localhost/chefk
dataSource.username=root
dataSource.password=[your root password]nazinaz
run grails
grails clean
grails compile
grails run-app -https
