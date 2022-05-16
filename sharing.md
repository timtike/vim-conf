




read dynamodb
```
import boto3
from boto3.dynamodb.conditions import Key

def get_item():
    dynamodb = boto3.resource('dynamodb')
    
    table = dynamodb.Table('dev-batch-job-info')      
    
    resp = table.get_item(
            Key={
                'id' : 1,
            }
        )
                
    if 'Item' in resp:
        print(resp['Item'])

    #{'id': Decimal('1'), 'email': 'jdoe@test.com', 'last_name': 'Doe', 'first_name': 'Jon'}
```


write dynamodb
```
table.put_item(Item= {'id': '34','company':  'microsoft'})

```



lambda
```
event["queryStringParameters"]["num1"]




```



