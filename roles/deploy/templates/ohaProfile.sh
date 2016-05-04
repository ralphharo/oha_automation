#!/bin/bash
set -o vi

export SPARK_HOME=/opt/spark-1.6.0-bin-hadoop2.4
export POPHEALTH_HOME=/opt/pophealth-loaders
export OHP_HOME=/opt/orionhealth
export DAEMON_HOME=/etc/init.d

export ES_HOME=/usr/share/elasticsearch
export CONF_DIR=/etc/elasticsearch
export CONF_FILE=$CONF_DIR/elasticsearch.yml
export DATA_DIR=/var/lib/elasticsearch
export LOG_DIR=/var/log/elasticsearch
export WORK_DIR=/tmp/elasticsearch
export PID_DIR=/var/run/elasticsearch

alias cdohp='cd /opt/orionhealth'

alias esstat='sudo ${DAEMON_HOME}/elasticsearch status'
alias esrestart='sudo ${DAEMON_HOME}/elasticsearch restart'
alias esstart='sudo ${DAEMON_HOME}/elasticsearch start'
alias esstop='sudo ${DAEMON_HOME}/elasticsearch stop'

alias cdspark='cd ${SPARK_HOME}'
alias cdsparkbin='cd ${SPARK_HOME}/bin'
alias cdsparkconf='cd ${SPARK_HOME}/conf'
alias cdsparksbin='cd ${SPARK_HOME}/sbin'

alias sparkstat='sudo ${DAEMON_HOME}/spark status'
alias sparkrestart='sudo ${DAEMON_HOME}/spark restart'
alias sparkstart='sudo ${DAEMON_HOME}/spark start'
alias sparkstop='sudo ${DAEMON_HOME}/spark stop'

#Scripts
alias runfull='sudo ${POPHEALTH_HOME}/bin/FullRegistryUpdate.sh'
alias runpat='sudo ${POPHEALTH_HOME}/bin/PatientRegistryUpdate.sh'
alias runpay='sudo ${POPHEALTH_HOME}/bin/PayerRegistryUpdate.sh'
alias runaco='sudo ${POPHEALTH_HOME}/bin/AcoRegistryUpdate.sh'

alias cdeslog='cd /var/log/elasticsearch'
alias cdesyml='cd /etc/elasticsearch'
alias cdesbin='cd /usr/share/elasticsearch/bin'

alias cdpopbin='cd ${POPHEALTH_HOME}/bin'
alias cdpopconf='cd ${POPHEALTH_HOME}/conf'

alias chgesyml='sudo vim ${CONF_DIR}/elasticsearch.yml'
alias chgpopconf='sudo vim ${POPHEALTH_HOME}/conf/application.conf'
