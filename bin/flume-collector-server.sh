#bash/bin


COLLECTOR_HOME=`pwd`/../

if [ ! -d "$COLLECTOR_HOME/out" ]; then
	mkdir -p $COLLECTOR_HOME/out
fi

nohup $COLLECTOR_HOME/bin/flume-ng agent -c $COLLECTOR_HOME/conf -f $COLLECTOR_HOME/conf/flume-collector-server.conf -n server -Dflume.root.logger=INFO,DAILY >> $COLLECTOR_HOME/out/flume-collecot-server.out &

