# vim:set ft=dockerfile:
FROM jboss/jbpm-workbench:6.2.0.Final

MAINTAINER "Björn Dieding" <bjoern@xrow.de>

ENV LANG en_US.utf8
ENV container=docker

ADD base/etc/start_jbpm-wb.sh $JBOSS_HOME/bin/start_jbpm-wb.sh
RUN chmod 755 $JBOSS_HOME/bin/start_jbpm-wb.sh

####### CONFIGURATION ############
USER root
ADD base/etc/start_jbpm-wb.sh $JBOSS_HOME/bin/start_jbpm-wb.sh
RUN chown jboss:jboss $JBOSS_HOME/bin/start_jbpm-wb.sh

####### CUSTOM JBOSS USER ############
# Switchback to jboss user
USER jboss

####### RUNNING JBPM-WB ############
WORKDIR $JBOSS_HOME/bin/
CMD ["./start_jbpm-wb.sh"]