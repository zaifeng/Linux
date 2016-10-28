### -X 用于指定curl http操作方法 ###
用法

    curl -X PUT http://url


elasticSearch Query DSL 用法

    curl -X POST 'localhost:9200/megacorp/employee/_search?pretty' -d '{
    	"query":{
    		"match":{
    			"last_name":"Smith"
    		}
    	}
    }'
