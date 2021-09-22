node {
    stage('check out pipeline from Git') {
		nexusArtifactDownload([
		    credentialsId: "${NEXUS_CREDENTIALS_ID}",
		    nexusUrl     : "${NEXUS_URL}/${NEXUS_REPO_RAW}/${NEXUS_RAW_PATH}/${NEXUS_RAW_NAME}",
			outpath      : "",
			decompress   : false,
			verbose      : false,
			insecure     : true
			]
			)
	}

    stage('Getting information'){
        sh 'echo $WORKSPACE'
        sh 'echo $JENKINS_HOME'
    }
    stage('Check if liquibase is installed') {
        //sh 'aws --recursive s3 cp s3://liquibaseinstallerbucket/ $WORKSPACE'
        //sh 'ansible-playbook $WORKSPACE/DownloadGitRepo.yml'
        //sh 'liquibase --version'
        sh '$WORKSPACE/liquibase/liquibase  --version'

    }
    stage('Status'){
        sh '$WORKSPACE/liquibase/liquibase  status --url="jdbc:mysql://hoc-lquibasetestdb.cwvfr0uoks1w.eu-central-1.rds.amazonaws.com:3306" --changeLogFile=Changelog.sql --driver=com.mysql.cj.jdbc.Driver --classpath=$WORKSPACE/liquibase/mysql-connector-java-8.0.26.jar --username=admin --password=HomeOfClouds'
    }
    /*
    stage('Unzip') {
        //sh 'ansible-playbook $WORKSPACE/Unzip_File.yml'
        //sh 'tar -xzvf $WORKSPACE/liquibaseFiles.tar.gz'
    }
    stage('Check Liquibase installation') {
        //sh '$JENKINS_HOME/callLiquibase.sh $JENKINS_HOME/Code/$filename'
        //sh '$WORKSPACE/liquibase/liquibase  --version'
        //sh '$WORKSPACE/liquibase/liquibase  history --url="jdbc:mysql://hoc-lquibasetestdb.cwvfr0uoks1w.eu-central-1.rds.amazonaws.com:3306/HomeOfCloudsDB" --changeLogFile=Changelog.xml --driver=com.mysql.cj.jdbc.Driver --classpath=$WORKSPACE/liquibase/mysql-connector-java-8.0.26.jar --username=admin --password=HomeOfClouds'
        //sh '$WORKSPACE/liquibase/liquibase  tag update_v1 --url="jdbc:mysql://hoc-lquibasetestdb.cwvfr0uoks1w.eu-central-1.rds.amazonaws.com:3306/HomeOfCloudsDB" --driver=com.mysql.cj.jdbc.Driver --classpath=$WORKSPACE/liquibase/mysql-connector-java-8.0.26.jar --username=admin --password=HomeOfClouds'
    }
    stage('Liquibase status') {
        //sh '$JENKINS_HOME/callLiquibase.sh $JENKINS_HOME/Code/$filename'
        //sh '$WORKSPACE/liquibase/liquibase  status --url="jdbc:mysql://liquibasedb.c4hm1aheakkd.eu-central-1.rds.amazonaws.com:3306" --changeLogFile=Changelog.xml --driver=com.mysql.cj.jdbc.Driver --classpath=$WORKSPACE/liquibase/mysql-connector-java-8.0.26.jar --username=admin --password=adminadmin'
        //sh '$WORKSPACE/liquibase/liquibase  status --url="jdbc:mysql://hoc-lquibasetestdb.cwvfr0uoks1w.eu-central-1.rds.amazonaws.com:3306" --changeLogFile=Changelog.xml --driver=com.mysql.cj.jdbc.Driver --classpath=$WORKSPACE/liquibase/mysql-connector-java-8.0.26.jar --username= --password=HomeOfClouds'
        //sh '$WORKSPACE/liquibase/liquibaseScript.sh'
    }
    stage('Liquibase Tag DB for rollback'){
        //sh '$WORKSPACE/liquibase/liquibase  tag rollback_to_empty_DB --url="jdbc:mysql://hoc-lquibasetestdb.cwvfr0uoks1w.eu-central-1.rds.amazonaws.com:3306/HomeOfCloudsDB" --driver=com.mysql.cj.jdbc.Driver --classpath=$WORKSPACE/liquibase/mysql-connector-java-8.0.26.jar --username=admin --password=HomeOfClouds'
        //sh '$WORKSPACE/liquibase/tagForRollback.sh'
        
    }
    stage('Liquibase update') {
        //sh '$JENKINS_HOME/callLiquibase.sh $JENKINS_HOME/Code/$filename'
        //sh '$WORKSPACE/liquibase/liquibase  update --url="jdbc:mysql://liquibasedb.c4hm1aheakkd.eu-central-1.rds.amazonaws.com:3306/Liquibase_DB" --changeLogFile=Changelog.xml --driver=com.mysql.cj.jdbc.Driver --classpath=$WORKSPACE/liquibase/mysql-connector-java-8.0.26.jar --username=admin --password=adminadmin'
        //sh '$WORKSPACE/liquibase/liquibase  update --url="jdbc:mysql://hoc-lquibasetestdb.cwvfr0uoks1w.eu-central-1.rds.amazonaws.com:3306/HomeOfCloudsDB" --changeLogFile=Changelog.xml --driver=com.mysql.cj.jdbc.Driver --classpath=$WORKSPACE/liquibase/mysql-connector-java-8.0.26.jar --username=admin --password=HomeOfClouds'
        //sh '$WORKSPACE/liquibase/liquibaseUpdateScript.sh'
        //sh '$WORKSPACE/liquibase/liquibase update --defaults-file=liquibase.properties'
        
    stage('Liquibase rollback'){
        //sh '$WORKSPACE/liquibase/liquibase  rollbackOneUpdate --deploymentID=1868365375 --url="jdbc:mysql://hoc-lquibasetestdb.cwvfr0uoks1w.eu-central-1.rds.amazonaws.com:3306/HomeOfCloudsDB" --changeLogFile=Changelog.xml --driver=com.mysql.cj.jdbc.Driver --classpath=$WORKSPACE/liquibase/mysql-connector-java-8.0.26.jar --username=admin --password=HomeOfClouds --force'
        //sh '$WORKSPACE/liquibase/liquibase --url="jdbc:mysql://hoc-lquibasetestdb.cwvfr0uoks1w.eu-central-1.rds.amazonaws.com:3306/HomeOfCloudsDB" --changeLogFile=SQLChangelog.sql --driver=com.mysql.cj.jdbc.Driver --classpath=$WORKSPACE/liquibase/mysql-connector-java-8.0.26.jar --username=admin --password=HomeOfClouds rollback emptyDB'
        //sh '$WORKSPACE/liquibase/liquibase --url="jdbc:mysql://hoc-lquibasetestdb.cwvfr0uoks1w.eu-central-1.rds.amazonaws.com:3306/HomeOfCloudsDB" --changeLogFile=SQLChangelog.sql --driver=com.mysql.cj.jdbc.Driver --classpath=$WORKSPACE/liquibase/mysql-connector-java-8.0.26.jar --username=admin --password=HomeOfClouds rollbackCount 1'    
        //sh '$WORKSPACE/liquibase/Rollback.sh'
    }
     
    }
    */
}