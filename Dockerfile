# vim:set ft=dockerfile:
FROM jboss/jbpm-workbench:6.2.0.Final

MAINTAINER "Björn Dieding" <bjoern@xrow.de>

ENV LANG en_US.utf8
ENV container=docker

ENV JBOSS_BIND_ADDRESS 0.0.0.0
ENV KIE_REPOSITORY https://repository.jboss.org/nexus/content/groups/public-jboss
ENV KIE_VERSION 6.2.0.Final
ENV KIE_CLASSIFIER wildfly10
ENV KIE_CONTEXT_PATH jbpm-console
ENV JAVA_OPTS -Xms256m -Xmx512m -Dorg.uberfire.nio.git.ssh.host=0.0.0.0
ENV KIE_SERVER_PROFILE standalone-full

####### CONFIGURATION ############
#USER root
#ADD base/etc/start_jbpm-wb.sh $JBOSS_HOME/bin/start_jbpm-wb.sh
#RUN chown jboss:jboss $JBOSS_HOME/bin/start_jbpm-wb.sh
#RUN chmod 755 $JBOSS_HOME/bin/start_jbpm-wb.sh

####### CUSTOM JBOSS USER ############
# Switchback to jboss user
#USER jboss

####### RUNNING JBPM-WB ############
WORKDIR $JBOSS_HOME/bin/
CMD ["./start_jbpm-wb.sh"]