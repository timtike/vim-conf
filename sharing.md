
```
import boto3


dynamodb = boto3.resource('dynamodb', region_name='us-east-1')

table = dynamodb.Table('dev-batch-job-info')

def get_job_info(job_id):
    res = table.get_item(Key={'job_id': job_id})
    return res

get_job_info('xxxx')


```
