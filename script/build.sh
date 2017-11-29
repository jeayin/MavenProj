echo "mvn deploy:deploy-file -DgroupId=com.jeay.app -DartifactId=$1 -Dversion=1.0.$2 -DgeneratePom=true -Dpackage=jar -Drepository=nexus -Durl=http://192.168.25.132:8081/repository/maven-releases/ -Dfile=JavaProj-1.0.$2.jar" >> args.txt
export PATH=$PATH:/usr/lib/apache-maven-3.5.2/bin
mvn deploy:deploy-file -DgroupId=com.jeay.app -DartifactId=$1 -Dversion=1.0.$2 -DgeneratePom=true -Dpackage=jar -Drepository=nexus -Durl=http://192.168.25.132:8081/repository/maven-releases/ -Dfile=target/JavaProj-1.0.$2.jar
