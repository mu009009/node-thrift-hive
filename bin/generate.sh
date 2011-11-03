#!/usr/bin/env bash

base=`dirname "${BASH_SOURCE-$0}"`
base=`cd "$base/..">/dev/null; pwd`

mkdir -p $base/lib/0.7.1-cdh3u2
thrift -o $base/lib/0.7.1-cdh3u2 --gen js:node -I $base/src/0.7.1-cdh3u2 $base/src/0.7.1-cdh3u2/hive_metastore.thrift
thrift -o $base/lib/0.7.1-cdh3u2 --gen js:node -I $base/src/0.7.1-cdh3u2 $base/src/0.7.1-cdh3u2/hive_service.thrift 
thrift -o $base/lib/0.7.1-cdh3u2 --gen js:node -I $base/src/0.7.1-cdh3u2 $base/src/0.7.1-cdh3u2/fb303.thrift 
thrift -o $base/lib/0.7.1-cdh3u2 --gen js:node -I $base/src/0.7.1-cdh3u2 $base/src/0.7.1-cdh3u2/serde.thrift 
thrift -o $base/lib/0.7.1-cdh3u2 --gen js:node -I $base/src/0.7.1-cdh3u2 $base/src/0.7.1-cdh3u2/queryplan.thrift 
