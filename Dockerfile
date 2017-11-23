# vim:set ft=dockerfile:
FROM jboss/jbpm-workbench:6.2.0.Final

MAINTAINER "Björn Dieding" <bjoern@xrow.de>

ENV LANG en_US.utf8
ENV container=docker

ADD base/etc/start_jbpm-wb.sh $JBOSS_HOME/bin/start_jbpm-wb.sh

####### RUNNING JBPM-WB ############
WORKDIR $JBOSS_HOME/bin/
CMD ["./start_jbpm-wb.sh"]