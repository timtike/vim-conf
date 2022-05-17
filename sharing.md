




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
import json
import boto3

dynamodb = boto3.resource('dynamodb')
table = dynamodb.Table('dev-batch-job-info')


def lambda_handler(event, context):
      
    if event['httpMethod'] == 'GET':
        params = event['queryStringParameters']
        
    if 'job_id' not in params:
        return {
            'statusCode': 400,
            'body': json.dumps('Missing job_id parameter')
        }
    job_id = params['job_id']
    
    # 1.get job status from batch
    batch = boto3.resource('batch')
    jobs_response = batch.describe_jobs(jobs=[job_id,])
    # TODO:error process
    job_status = jobs_response['jobs'][0]['status']
        
    # 2.update dynamodb
    # get job status from db
    res = table.get_item(
        Key={
            'job_id': job_id
        }
    )

    if 'Item' in res:
        job_dict = res['Item']
        job_dict['job_status'] = job_status
        
    else:
        print('job_id not found')
        # then insert job_id to db
        job_dict={
            'job_id': job_id,
            'job_status': job_status,
            # when autoconfig runs, it will update the status_code and message
            'status_code': 0,
            'status_message': ''
            }
        
    table.put_item(Item=job_dict) 

    # 3.get job info from db
    resp = table.get_item(Key={'job_id': job_id})
    return {"statusCode": 200, "body": json.dumps(resp['Item'])}


```



