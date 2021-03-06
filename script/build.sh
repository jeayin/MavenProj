
echo mvn deploy:deploy-file -DgroupId=com.jeay.app -DartifactId=$1 -Dversion=1.0.$2 -DgeneratePom=true -Dpackage=jar -Drepository=nexus -Durl=http://192.168.25.132:8081/repository/maven-releases/ -Dfile=JavaProj-1.0.$2.jar > script/args.txt
echo "args 0:"$0 >> script/args.txt
echo "args 1:"$1 >> script/args.txt
echo "args 2:"$2 >> script/args.txt
echo "args 3:"$3 >> script/args.txt

#export PATH=$PATH:/usr/lib/apache-maven-3.5.2/bin

mvn -X deploy:deploy-file -DgroupId=releases -DrepositoryId=releases -DartifactId=$1 -Dversion=1.0.$2 -DgeneratePom=false -DpomFile=pom.xml -Dpackage=jar -Drepository=nexusRepo -Durl=http://192.168.25.132:8081/repository/maven-releases -Dfile=target/JavaProj-1.0.$2.jar

mvn -X dependency:get -Dartifactid=MAV-MAV -DgroupId=releases -Dversion=1.0.16 -DremoteRepositories=http://192.168.25.132:8081/repository/maven-releases -DartifactId=MAV-MAV -DrepositoryId=releases
