#!/bin/bash
set -o vi

awshostname=`hostname | cut -f1 -d"."`
eshostname="es-${awshostname}"
export SPARK_HOME=/usr/share/elasticsearch
export POPHEALTH_HOME=/opt/pophealth-loaders
export OHP_HOME=/opt/orionhealth
export DAEMON_HOME=/etc/init.d

export ES_HOME=/usr/share/elasticsearch
export CONF_DIR=/etc/elasticsearch/${eshostname}
export DATA_DIR=/var/lib/elasticsearch
export LOG_DIR=/var/log/elasticsearch-${eshostname}
export WORK_DIR=/tmp/elasticsearch
export PID_DIR=/var/run/elasticsearch

alias cdohp='cd /opt/orionhealth'

alias esstat='sudo ${DAEMON_HOME}/elasticsearch-${eshostname} status'
alias esrestart='sudo ${DAEMON_HOME}/elasticsearch-${eshostname} restart'
alias esstart='sudo ${DAEMON_HOME}/elasticsearch-${eshostname} start'
alias esstop='sudo ${DAEMON_HOME}/elasticsearch-${eshostname} stop'

alias cdspark='cd ${SPARK_HOME}'
alias cdsparkbin='cd ${SPARK_HOME}/bin'
alias cdsparkconf='cd ${SPARK_HOME}/conf'
alias cdsparksbin='cd ${SPARK_HOME}/sbin'

alias sparkstat='sudo ${DAEMON_HOME}/spark status'
alias sparkrestart='sudo ${DAEMON_HOME}/spark restart'
alias sparkstart='sudo ${DAEMON_HOME}/spark start'
alias sparkstop='sudo ${DAEMON_HOME}/spark stop'

alias cdeslog='cd /var/log/elasticsearch/$eshostname'
alias cdesyml='cd ${CONF_DIR}' 
alias cdesbin='cd /usr/share/elasticsearch/bin'

alias cdpopbin='cd ${POPHEALTH_HOME}/bin'
alias cdpopconf='cd ${POPHEALTH_HOME}/conf'

alias esversion='rpm -q elasticsearch'