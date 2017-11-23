# vim:set ft=dockerfile:
FROM jboss/jbpm-workbench:6.2.0.Final

MAINTAINER "Björn Dieding" <bjoern@xrow.de>

ENV LANG en_US.utf8
ENV container=docker

ENV KIE_REPOSITORY https://repository.jboss.org/nexus/content/groups/public-jboss/
ENV JBPM_VERSION 6.2.0.Final
ENV JBPM_CLASSIFIER wildfly8
ENV JBPM_CONTEXT_PATH jbpm-console
ENV DASHBUILDER_CONTEXT_PATH dashbuilder
ENV JAVA_OPTS -XX:MaxPermSize=256m -Xms256m -Xmx512m -Dorg.uberfire.nio.git.ssh.host=0.0.0.0

####### RUNNING JBPM-WB ############
WORKDIR $JBOSS_HOME/bin/
CMD ["./standalone.sh", "-b", "0.0.0.0", "--server-config=standalone-full.xml"]