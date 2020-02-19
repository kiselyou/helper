redis-cli -h dev-host.com
redis-cli -h dev-host.com monitor | grep -E 'search some text'

127.0.0.1:6379> select 2
127.0.0.1:6379[2]> dbsize