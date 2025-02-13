
![image](https://user-images.githubusercontent.com/16596464/112654951-ef2db500-8e75-11eb-999c-23371f9e82b5.png)

![image](https://user-images.githubusercontent.com/16596464/112655226-3156f680-8e76-11eb-958e-6d08b9bdb181.png)
![image](https://user-images.githubusercontent.com/16596464/112655583-8e52ac80-8e76-11eb-8832-dfc58d62d044.png)


# AWS Regions

| Region Code        | Region Name       | Availability Zones
---------------------|-------------------|--------------------------------------------------------
| us-east-1*         | N. Virginia       | `us-east-1a` `us-east-1b` `us-east-1c` `us-east-1d` `us-east-1e`
| us-east-2          | Ohio              | `us-east-2a` `us-east-2b` `us-east-2c`
| us-west-1*         | N. California     | `us-west-1a` `us-west-1b` `us-west-1c`
| us-west-2	         | Oregon	           | `us-west-2a` `us-west-2b` `us-west-2c`
| eu-west-1	         | Ireland	         | `eu-west-1a` `eu-west-1b` `eu-west-1c`
| eu-central-1	     | Frankfurt	       | `eu-central-1a` `eu-central-1b`
| ap-northeast-1*    | Tokyo	           | `ap-northeast-1a` `ap-northeast-1b` `ap-northeast-1c`
| ap-northeast-2     | Seoul             | `ap-northeast-2a` `ap-northeast-2c`
| ap-southeast-1	   | Singapore	       | `ap-southeast-1a` `ap-southeast-1b`
| ap-southeast-2	   | Sydney	           | `ap-southeast-2a` `ap-southeast-2b` `ap-southeast-2c`
| ap-south-1         | Mumbai            | `ap-south-1a` `ap-south-1b`
| sa-east-1	         | Sao Paulo	       | `sa-east-1a` `sa-east-1b` `sa-east-1c`

\* *To ensure that resources are distributed across the Availability Zones for these regions, they may differ for each AWS account. You can run `aws ec2 describe-availability-zones --region $REGION` to be sure which ones are available to you.*


### 1. AWS Account Creation:

a. Click on below given URL to create a new AWS Account.

https://signin.aws.amazon.com/signin?redirect_uri=https%3A%2F%2Fportal.aws.amazon.com%2Fbilling%2Fsignup%3Fredirect_url%3Dhttps%253A%252F%252Faws.amazon.com%252Fregistration-confirmation%26state%3DhashArgs%2523%26isauthcode%3Dtrue&client_id=arn%3Aaws%3Aiam%3A%3A015428540659%3Auser%2Fawssignupportal&forceMobileApp=0

b. Provide the necessary information as like below screenshot for creating a new account.

![image](https://user-images.githubusercontent.com/16596464/110150822-b023bb00-7e05-11eb-9950-757a3dc9ab7b.png)
![image](https://user-images.githubusercontent.com/16596464/110150884-c92c6c00-7e05-11eb-8242-396f573055a1.png)
![image](https://user-images.githubusercontent.com/16596464/110151055-fe38be80-7e05-11eb-9248-eba22e69c567.png)
![image](https://user-images.githubusercontent.com/16596464/110151137-1dcfe700-7e06-11eb-8359-b0aed00a75ee.png)

After providing Contact information, provide Debit / Credit Card Information in Payment Information tab.
d. On 4th Step, Identity Verification needs to be carried out by typing PIN on your mobile after receiving a call from AWS.
e. Choose the Support Plan as Basic and Click to proceed further.
f. Sometimes, Account registration would take 24 hours of time and 2Rs INR would be deducted from your bank and it would be credited back to your account.


### IAM -> Add user -> Assign groups -> Add permissions & copy the onetime generated 

`aws_access_key_id = **********`
`aws_secret_access_key = *************************`

### AWS CLI commands: https://docs.aws.amazon.com/cli/latest/reference/ 

![image](https://user-images.githubusercontent.com/16596464/110151603-ae0e2c00-7e06-11eb-8128-192fc77e51d8.png)
![image](https://user-images.githubusercontent.com/16596464/110151671-c4b48300-7e06-11eb-8ddc-73aeb64337de.png)
![image](https://user-images.githubusercontent.com/16596464/110151687-c8e0a080-7e06-11eb-8d93-25bf2745bf99.png)
![image](https://user-images.githubusercontent.com/16596464/110151702-ced68180-7e06-11eb-9727-a5150ffa2bfb.png)
![image](https://user-images.githubusercontent.com/16596464/110151717-d39b3580-7e06-11eb-86c0-de14e6c7b256.png)
![image](https://user-images.githubusercontent.com/16596464/110151726-d6962600-7e06-11eb-96a1-3d0fbcd91d4e.png)
![image](https://user-images.githubusercontent.com/16596464/110151742-d9911680-7e06-11eb-8c4e-7bb15871d7f7.png)
![image](https://user-images.githubusercontent.com/16596464/110151754-dc8c0700-7e06-11eb-8bd3-bd24bbc9fa37.png)
![image](https://user-images.githubusercontent.com/16596464/110151766-e01f8e00-7e06-11eb-8e3c-d81f24f400bd.png)
![image](https://user-images.githubusercontent.com/16596464/110151778-e4e44200-7e06-11eb-9ae5-b3d9d3d69a65.png)

### Note: After Sign in, it would prompt to change the password. Provide the new password for this sub account and proceed with next steps.

## IAM -> Amazon Resource Name -> through CLI.

### create user

`aws iam create-user --user-name raj`

{
    "User": {
        "Path": "/",
        "UserName": "raj",
        "UserId": "***************",
        "Arn": "arn:aws:iam::********:user/raj",
        "CreateDate": "2021-03-04T17:09:58Z"
    }
}

### Create Login credentials

`aws iam create-login-profile --generate-cli-skeleton > create-login-profile.json`

`aws iam create-login-profile --cli-input-json file://create-login-profile.json`

{
    "LoginProfile": {
        "UserName": "raj",
        "CreateDate": "2021-03-04T17:12:02Z",
        "PasswordResetRequired": true
    }
}

### Access Key
`aws iam create-access-key --user-name raj`

{
    "AccessKey": {
        "UserName": "raj",
        "AccessKeyId": "************",
        "Status": "Active",
        "SecretAccessKey": "*************",
        "CreateDate": "2021-03-04T17:10:20Z"
    }
}

### Group
`aws iam add-user-to-group --user-name raj --group-name AdminAccess`

### Policy
`aws iam attach-user-policy --policy-arn arn:aws:iam:ACCOUNT-ID:aws:policy/AdministratorAccess --user-name Alice (optional)`

### Note: Dont add user to the policy add user to Group instead.

### to list the users

aws iam list-users

{
    "Users": [
        {
            "Path": "/",
            "UserName": "raj",
            "UserId": "***********",
            "Arn": "arn:aws:iam::********:user/raj",
            "CreateDate": "2021-03-04T17:09:58Z"
        },
        {
            "Path": "/",
            "UserName": "sathya",
            "UserId": "**********",
            "Arn": "arn:aws:iam::*********:user/sathya",
            "CreateDate": "2021-03-04T16:57:33Z"
        }
    ]
}


# EC2 

## EC2 Overview 

### EC2 instance types

![image](https://user-images.githubusercontent.com/16596464/110200976-c6be2680-7e86-11eb-91b6-e24ff9ad4f11.png)

 
## General Purpose (CPU HDD)

### t2(tiny) instance type: 

`learning & start of development, some basic CPU and memory usage applications`

### m5(medium) instance type: 

`more consistent workloads, solid state drives (SSD)`

# Compute Optimized (CPU SSD)

### c5(compute) instance type:

`scientific modelling, intensive machine learning, or multiplayer gaming SSD backed`

# Memory Optimized (CPU SSD)

### r4 (RAM) instance type:

`in-memory databases, real-time processing of unstructured big data, or Hadoop/Spark clusters`

### x1e(xtreme) instance type:

`full in-memory application or a big data processing engine like Apache Spark or Presto.`

# Accelerated Computing (GPU)

### p3(pictures) instance type:

`computational fluid dynamics, computational finance, seismic analysis, speech recognition, autonomous vehicles`

# Storage Optimized

### h1(HDD) instance type: 

`distributed file systems, network file systems, or data processing applications.`

### i3(IOPS) instance type: 
`SSD backed,  NoSQL databases, in-memory databases, Elasticsearch`

## Note: to check a IOPS of a disk run the below commands

### sudo hdparm -Tt /dev/sda

/dev/sda:
 Timing cached reads:   20132 MB in  1.99 seconds = 10092.59 MB/sec
 Timing buffered disk reads: 564 MB in  3.01 seconds = 187.55 MB/sec
 
### dd if=/dev/zero of=/tmp/output bs=8k count=10k; rm -f /tmp/output

1024+0 records in
1024+0 records out
402653184 bytes (403 MB, 384 MiB) copied, 3.0272 s, 133 MB/s

### d2(dense) instance type:

`Massively Parallel Processing (MPP), MapReduce and Hadoop distributed computing`

### Creating, displaying, and deleting Amazon EC2 key pairs

![image](https://user-images.githubusercontent.com/16596464/111019637-ae9a5a00-83e6-11eb-82f8-c36453952895.png)

![image](https://user-images.githubusercontent.com/16596464/111019638-b3f7a480-83e6-11eb-8a48-b232f0dc4195.png)

![image](https://user-images.githubusercontent.com/16596464/111019641-b6f29500-83e6-11eb-8bd8-4dde41ed7d5a.png)

![image](https://user-images.githubusercontent.com/16596464/111019642-b8bc5880-83e6-11eb-8d2e-cffed789a669.png)

![image](https://user-images.githubusercontent.com/16596464/111019644-bbb74900-83e6-11eb-9c17-791bca98f750.png)

![image](https://user-images.githubusercontent.com/16596464/111019646-beb23980-83e6-11eb-8366-596d993b3282.png)

![image](https://user-images.githubusercontent.com/16596464/111019648-c1ad2a00-83e6-11eb-892d-721529046ade.png)

![image](https://user-images.githubusercontent.com/16596464/111019650-c376ed80-83e6-11eb-9290-aac5ff7ead1a.png)

![image](https://user-images.githubusercontent.com/16596464/111019653-cc67bf00-83e6-11eb-885e-4e4ab46a4dd1.png)

![image](https://user-images.githubusercontent.com/16596464/111019658-ceca1900-83e6-11eb-8ef0-90d8a8063894.png)

![image](https://user-images.githubusercontent.com/16596464/111019663-d689bd80-83e6-11eb-90bf-f64441e95098.png)

![image](https://user-images.githubusercontent.com/16596464/111019665-d984ae00-83e6-11eb-861f-9b47dffd7d1b.png)

![image](https://user-images.githubusercontent.com/16596464/111019670-de496200-83e6-11eb-9a06-36486254b0e4.png)

![image](https://user-images.githubusercontent.com/16596464/111019673-e0abbc00-83e6-11eb-9840-ab1f47a61ee3.png)

![image](https://user-images.githubusercontent.com/16596464/111019678-e99c8d80-83e6-11eb-8f48-e1730df357b3.png)

![image](https://user-images.githubusercontent.com/16596464/111019689-eef9d800-83e6-11eb-9137-664f56513275.png)

![image](https://user-images.githubusercontent.com/16596464/111019694-f1f4c880-83e6-11eb-9c69-0b669908c24a.png)

![image](https://user-images.githubusercontent.com/16596464/111019695-f4572280-83e6-11eb-87ff-a9bb1d16fc1b.png)

![image](https://user-images.githubusercontent.com/16596464/111019696-f6b97c80-83e6-11eb-9580-fba8899dd330.png)

![image](https://user-images.githubusercontent.com/16596464/111019699-f9b46d00-83e6-11eb-892c-e0702585acc6.png)

![image](https://user-images.githubusercontent.com/16596464/111019701-fb7e3080-83e6-11eb-8fe5-34340dd3e267.png)

![image](https://user-images.githubusercontent.com/16596464/111019704-ff11b780-83e6-11eb-9993-2ce0a82bc3b6.png)

![image](https://user-images.githubusercontent.com/16596464/111019705-00db7b00-83e7-11eb-81eb-b21476807d23.png)

![image](https://user-images.githubusercontent.com/16596464/111019708-033dd500-83e7-11eb-86e5-b388ff4f2fcf.png)

![image](https://user-images.githubusercontent.com/16596464/111019711-06d15c00-83e7-11eb-9fe9-616351d36fc8.png)

![image](https://user-images.githubusercontent.com/16596464/111019716-09cc4c80-83e7-11eb-9337-69f36c0a74c1.png)

![image](https://user-images.githubusercontent.com/16596464/111019714-089b1f80-83e7-11eb-85ef-533be2876082.png)

![image](https://user-images.githubusercontent.com/16596464/111019719-105ac400-83e7-11eb-8c63-306887a43595.png)

![image](https://user-images.githubusercontent.com/16596464/111019727-19e42c00-83e7-11eb-90cb-bc052d6fa0ba.png)

![image](https://user-images.githubusercontent.com/16596464/111019735-1ea8e000-83e7-11eb-9f00-869f9c398e37.png)

![image](https://user-images.githubusercontent.com/16596464/111019722-1355b480-83e7-11eb-9c74-1c6cfde0f5f0.png)

![image](https://user-images.githubusercontent.com/16596464/111019734-1d77b300-83e7-11eb-9c3d-ee39d6e88de5.png)

![image](https://user-images.githubusercontent.com/16596464/111019733-1d77b300-83e7-11eb-87c5-6965a347e1b0.png)

![image](https://user-images.githubusercontent.com/16596464/111019739-236d9400-83e7-11eb-93d7-3123995dfa6b.png)

![image](https://user-images.githubusercontent.com/16596464/111019723-1486e180-83e7-11eb-8715-ae4013282a40.png)

![image](https://user-images.githubusercontent.com/16596464/111019750-28cade80-83e7-11eb-8516-a18d72a71504.png)

![image](https://user-images.githubusercontent.com/16596464/111019742-249ec100-83e7-11eb-8896-e5bb25a0f866.png)

![image](https://user-images.githubusercontent.com/16596464/111019746-26688480-83e7-11eb-8b06-749ec60ddb45.png)

## AWS CLI

### to create a keypair

`aws ec2 create-key-pair --key-name bestvm-key --query 'KeyMaterial' --output text > bestvm-key.pem`

### permission change

`chmod 400 bestvm-key.pem`

### list keypairs

`aws ec2 describe-key-pairs --key-name bestvm-key`

{
    "KeyPairs": [
        {
            "KeyPairId": "key-******",
            "KeyFingerprint": "**********",
            "KeyName": "bestvm-key",
            "Tags": []
        }
    ]
}


### delete a keypair

`aws ec2 delete-key-pair --key-name bestvm-key`

### Creating, configuring, and deleting security groups for Amazon EC2

### create Security Group

`aws ec2 create-security-group --group-name ec2-sg --description "Sathya security group"`


{
    "GroupId": "sg-*******"
}


`aws ec2 describe-security-groups --group-names ec2-sg`

{
    "SecurityGroups": [
        {
            "Description": "Sathya security group",
            "GroupName": "ec2-sg",
            "IpPermissions": [],
            "OwnerId": "*******",
            "GroupId": "sg-**********",
            "IpPermissionsEgress": [
                {
                    "IpProtocol": "-1",
                    "IpRanges": [
                        {
                            "CidrIp": "0.0.0.0/0"
                        }
                    ],
                    "Ipv6Ranges": [],
                    "PrefixListIds": [],
                    "UserIdGroupPairs": []
                }
            ],
            "VpcId": "vpc-*****"
        }
    ]
}

### check your ip for CIDR subnetting

`curl https://checkip.amazonaws.com`

60.243.65.159

### create inbound rules ingress & egress

`aws ec2 authorize-security-group-ingress --group-id sg-038e0cde087d0c2c6 --protocol tcp --port 22 --cidr 60.243.65.0/24 `

### list security group information

`aws ec2 describe-security-groups --group-names ec2-sg`

{
    "SecurityGroups": [
        {
            "Description": "Sathya security group",
            "GroupName": "ec2-sg",
            "IpPermissions": [
                {
                    "FromPort": 22,
                    "IpProtocol": "tcp",
                    "IpRanges": [
                        {
                            "CidrIp": "60.243.65.0/24"
                        }
                    ],
                    "Ipv6Ranges": [],
                    "PrefixListIds": [],
                    "ToPort": 22,
                    "UserIdGroupPairs": []
                }
            ],
            "OwnerId": "*****",
            "GroupId": "sg-*******",
            "IpPermissionsEgress": [
                {
                    "IpProtocol": "-1",
                    "IpRanges": [
                        {
                            "CidrIp": "0.0.0.0/0"
                        }
                    ],
                    "Ipv6Ranges": [],
                    "PrefixListIds": [],
                    "UserIdGroupPairs": []
                }
            ],
            "VpcId": "vpc-*****"
        }
    ]
}

### to delete a security group

`aws ec2 delete-security-group --group-id `

`aws ec2 delete-security-group --group-name`

### Launching, listing, and terminating Amazon EC2 instances

### create a EC2 instance:

`aws ec2 run-instances --image-id ami-****** --count 1 --instance-type t2.micro --key-name bestvm-key --security-group-ids sg-******`

{
    "Groups": [],
    "Instances": [
        {
            "AmiLaunchIndex": 0,
            "ImageId": "ami-0eeb03e72075b9bcc",
            "InstanceId": "i-*******",
            "InstanceType": "t2.micro",
            "KeyName": "bestvm-key",
            "LaunchTime": "2021-03-04T17:59:43.000Z",
            "Monitoring": {
                "State": "disabled"
            },
            "Placement": {
                "AvailabilityZone": "ap-south-1a",
                "GroupName": "",
                "Tenancy": "default"
            },
            "PrivateDnsName": "ip-********.ap-south-1.compute.internal",
            "PrivateIpAddress": "********",
            "ProductCodes": [],
            "PublicDnsName": "",
            "State": {
                "Code": 0,
                "Name": "pending"
            },
            "StateTransitionReason": "",
            "SubnetId": "subnet-******",
            "VpcId": "vpc-*****",
            "Architecture": "x86_64",
            "BlockDeviceMappings": [],
            "ClientToken": "*************",
            "EbsOptimized": false,
            "EnaSupport": true,
            "Hypervisor": "xen",
            "NetworkInterfaces": [
                {
                    "Attachment": {
                        "AttachTime": "2021-03-04T17:59:43.000Z",
                        "AttachmentId": "eni-attach-******",
                        "DeleteOnTermination": true,
                        "DeviceIndex": 0,
                        "Status": "attaching"
                    },
                    "Description": "",
                    "Groups": [
                        {
                            "GroupName": "ec2-sg",
                            "GroupId": "sg-*********"
                        }
                    ],
                    "Ipv6Addresses": [],
                    "MacAddress": "********",
                    "NetworkInterfaceId": "eni-*******",
                    "OwnerId": "*********",
                    "PrivateDnsName": "ip-*******.ap-south-1.compute.internal",
                    "PrivateIpAddress": "************",
                    "PrivateIpAddresses": [
                        {
                            "Primary": true,
                            "PrivateDnsName": "ip-*****.ap-south-1.compute.internal",
                            "PrivateIpAddress": "**********"
                        }
                    ],
                    "SourceDestCheck": true,
                    "Status": "in-use",
                    "SubnetId": "subnet-******",
                    "VpcId": "vpc-*******",
                    "InterfaceType": "interface"
                }
            ],
            "RootDeviceName": "/dev/xvda",
            "RootDeviceType": "ebs",
            "SecurityGroups": [
                {
                    "GroupName": "ec2-sg",
                    "GroupId": "sg-**********"
                }
            ],
            "SourceDestCheck": true,
            "StateReason": {
                "Code": "pending",
                "Message": "pending"
            },
            "VirtualizationType": "hvm",
            "CpuOptions": {
                "CoreCount": 1,
                "ThreadsPerCore": 1
            },
            "CapacityReservationSpecification": {
                "CapacityReservationPreference": "open"
            },
            "MetadataOptions": {
                "State": "pending",
                "HttpTokens": "optional",
                "HttpPutResponseHopLimit": 1,
                "HttpEndpoint": "enabled"
            }
        }
    ],
    "OwnerId": "********",
    "ReservationId": "r-********"
}

### tag & name creation for the ec2 instance

`aws ec2 create-tags --resources i-0c254c9fe5f585deb --tags Key=Name,Value=SathyaLinux`

### list ec2 instances by filtering

`aws ec2 describe-instances --filters "Name=instance-type,Values=t2.micro" --query "Reservations[].Instances[].InstanceId"`


`aws ec2 describe-instances --filters "Name=tag:Name,Values=SathyaLinux"`

`aws ec2 terminate-instances --instance-ids i-0c254c9fe5f585deb`


### yet to do

`aws ec2

aws ec2 describe-instances

aws ec2 modify-instance-attribute

aws ec2 start-instances

aws ec2 stop-instances

aws ec2 wait instance-running

aws ec2 wait instance-stopped`
