import boto3
import json
ec2 = boto3.client('ec2')
all_key_pairs = list(map(lambda i: i['KeyName'], ec2.describe_key_pairs()['KeyPairs']))
print (json.dumps(all_key_pairs, indent=4))

for k in all_key_pairs:
    print (f"aws ec2 delete-key-pair --key-name \"{k}\"")
