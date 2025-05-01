varunrajasekaran@MacBookAir terraformer % ./terraformer import aws --profile dev --resources=acm,api_gateway,api_gatewayv2,appsync,batch,cloud9,cloudhsm,cloudtrail,cloudwatch,customer_gateway,datapipeline,devicefarm,docdb,dx,ebs,ec2_instance,ecr,ecrpublic,ecs,efs,eip,eks,elastic_beanstalk,elasticache,elb,emr,eni,es,identitystore,igw,kms,nacl,nat,opsworks,qldb,route_table,secretsmanager,ses,sfn,sg,sns,sqs,ssm,subnet,swf,transit_gateway,vpc,vpc_endpoint,vpc_peering,vpn_connection,vpn_gateway,workspaces

2025/04/30 11:58:20 aws importing default region
2025/04/30 11:58:22 aws importing... acm
2025/04/30 11:58:22 aws done importing acm
2025/04/30 11:58:22 aws importing... api_gateway
2025/04/30 11:58:23 aws done importing api_gateway
2025/04/30 11:58:23 aws importing... api_gatewayv2
2025/04/30 11:58:23 aws done importing api_gatewayv2
2025/04/30 11:58:23 aws importing... appsync
2025/04/30 11:58:24 aws done importing appsync
2025/04/30 11:58:24 aws importing... batch
2025/04/30 11:58:24 aws done importing batch
2025/04/30 11:58:24 aws importing... cloud9
2025/04/30 11:58:24 aws error initializing resources in service cloud9, err: operation error Cloud9: ListEnvironments, https response error StatusCode: 400, RequestID: f31fa398-4efb-4b33-b43c-2288431ece09, api error AccessDeniedException: This account does not have access to the Cloud9 service
2025/04/30 11:58:24 aws importing... cloudhsm
2025/04/30 11:58:25 aws done importing cloudhsm
2025/04/30 11:58:25 aws importing... cloudtrail
2025/04/30 11:58:25 aws done importing cloudtrail
2025/04/30 11:58:25 aws importing... cloudwatch
2025/04/30 11:58:26 aws done importing cloudwatch
2025/04/30 11:58:26 aws importing... customer_gateway
2025/04/30 11:58:26 aws done importing customer_gateway
2025/04/30 11:58:26 aws importing... datapipeline
2025/04/30 11:58:26 aws done importing datapipeline
2025/04/30 11:58:26 aws importing... devicefarm
2025/04/30 11:58:26 aws done importing devicefarm
2025/04/30 11:58:26 aws importing... docdb
2025/04/30 11:58:27 aws done importing docdb
2025/04/30 11:58:27 aws importing... dx
2025/04/30 11:58:28 aws done importing dx
2025/04/30 11:58:28 aws importing... ebs
2025/04/30 11:58:28 aws done importing ebs
2025/04/30 11:58:28 aws importing... ec2_instance
2025/04/30 11:58:29 aws done importing ec2_instance
2025/04/30 11:58:29 aws importing... ecr
2025/04/30 11:58:30 aws done importing ecr
2025/04/30 11:58:30 aws importing... ecrpublic
2025/04/30 11:58:30 aws done importing ecrpublic
2025/04/30 11:58:30 aws importing... ecs
2025/04/30 11:58:31 aws done importing ecs
2025/04/30 11:58:31 aws importing... efs
2025/04/30 11:58:31 aws done importing efs
2025/04/30 11:58:31 aws importing... eip
2025/04/30 11:58:32 aws done importing eip
2025/04/30 11:58:32 aws importing... eks
2025/04/30 11:58:32 aws done importing eks
2025/04/30 11:58:32 aws importing... elastic_beanstalk
2025/04/30 11:58:32 aws done importing elastic_beanstalk
2025/04/30 11:58:32 aws importing... elasticache
2025/04/30 11:58:33 aws done importing elasticache
2025/04/30 11:58:33 aws importing... elb
2025/04/30 11:58:33 aws done importing elb
2025/04/30 11:58:33 aws importing... emr
2025/04/30 11:58:34 aws done importing emr
2025/04/30 11:58:34 aws importing... eni
2025/04/30 11:58:34 aws done importing eni
2025/04/30 11:58:34 aws importing... es
2025/04/30 11:58:34 aws done importing es
2025/04/30 11:58:34 aws importing... identitystore
2025/04/30 11:58:35 aws done importing identitystore
2025/04/30 11:58:35 aws importing... igw
2025/04/30 11:58:35 aws done importing igw
2025/04/30 11:58:35 aws importing... kms
2025/04/30 11:58:36 aws done importing kms
2025/04/30 11:58:36 aws importing... nacl
2025/04/30 11:58:36 aws done importing nacl
2025/04/30 11:58:36 aws importing... nat
2025/04/30 11:58:36 aws done importing nat
2025/04/30 11:58:36 aws importing... opsworks
2025/04/30 11:58:37 aws error initializing resources in service opsworks, err: operation error OpsWorks: DescribeStacks, https response error StatusCode: 400, RequestID: ab5382bc-6944-427d-99a9-45df0c1a8e2b, api error AccessDeniedException: AWS OpsWorks Stacks is no longer accepting new customers
2025/04/30 11:58:37 aws importing... qldb
2025/04/30 11:58:37 aws done importing qldb
2025/04/30 11:58:37 aws importing... route_table
2025/04/30 11:58:37 aws done importing route_table
2025/04/30 11:58:37 aws importing... secretsmanager
2025/04/30 11:58:37 aws done importing secretsmanager
2025/04/30 11:58:37 aws importing... ses
2025/04/30 11:58:38 aws done importing ses
2025/04/30 11:58:38 aws importing... sfn
2025/04/30 11:58:39 aws done importing sfn
2025/04/30 11:58:39 aws importing... sg
2025/04/30 11:58:39 aws done importing sg
2025/04/30 11:58:39 aws importing... sns
2025/04/30 11:58:39 aws done importing sns
2025/04/30 11:58:39 aws importing... sqs
2025/04/30 11:58:40 aws done importing sqs
2025/04/30 11:58:40 aws importing... ssm
2025/04/30 11:58:40 aws done importing ssm
2025/04/30 11:58:40 aws importing... subnet
2025/04/30 11:58:40 aws done importing subnet
2025/04/30 11:58:40 aws importing... swf
2025/04/30 11:58:41 aws done importing swf
2025/04/30 11:58:41 aws importing... transit_gateway
2025/04/30 11:58:41 aws done importing transit_gateway
2025/04/30 11:58:41 aws importing... vpc
2025/04/30 11:58:42 aws done importing vpc
2025/04/30 11:58:42 aws importing... vpc_endpoint
2025/04/30 11:58:42 aws done importing vpc_endpoint
2025/04/30 11:58:42 aws importing... vpc_peering
2025/04/30 11:58:42 aws done importing vpc_peering
2025/04/30 11:58:42 aws importing... vpn_connection
2025/04/30 11:58:43 aws done importing vpn_connection
2025/04/30 11:58:43 aws importing... vpn_gateway
2025/04/30 11:58:43 aws done importing vpn_gateway
2025/04/30 11:58:43 aws importing... workspaces
2025/04/30 11:58:43 aws done importing workspaces
2025/04/30 11:58:43 Number of resources for service batch: 0
2025/04/30 11:58:43 Number of resources for service docdb: 0
2025/04/30 11:58:43 Number of resources for service eks: 0
2025/04/30 11:58:43 Number of resources for service secretsmanager: 0
2025/04/30 11:58:43 Number of resources for service ses: 0
2025/04/30 11:58:43 Number of resources for service transit_gateway: 0
2025/04/30 11:58:43 Number of resources for service vpc: 1
2025/04/30 11:58:43 Number of resources for service api_gatewayv2: 0
2025/04/30 11:58:43 Number of resources for service elb: 0
2025/04/30 11:58:43 Number of resources for service sg: 1
2025/04/30 11:58:43 Number of resources for service vpc_endpoint: 0
2025/04/30 11:58:43 Number of resources for service vpn_connection: 0
2025/04/30 11:58:43 Number of resources for service appsync: 0
2025/04/30 11:58:43 Number of resources for service ebs: 0
2025/04/30 11:58:43 Number of resources for service ecrpublic: 0
2025/04/30 11:58:43 Number of resources for service nacl: 1
2025/04/30 11:58:43 Number of resources for service route_table: 2
2025/04/30 11:58:43 Number of resources for service ssm: 0
2025/04/30 11:58:43 Number of resources for service api_gateway: 0
2025/04/30 11:58:43 Number of resources for service cloudwatch: 0
2025/04/30 11:58:43 Number of resources for service ec2_instance: 2
2025/04/30 11:58:43 Number of resources for service elasticache: 0
2025/04/30 11:58:43 Number of resources for service igw: 1
2025/04/30 11:58:43 Number of resources for service vpn_gateway: 0
2025/04/30 11:58:43 Number of resources for service workspaces: 0
2025/04/30 11:58:43 Number of resources for service acm: 1
2025/04/30 11:58:43 Number of resources for service dx: 0
2025/04/30 11:58:43 Number of resources for service ecs: 0
2025/04/30 11:58:43 Number of resources for service efs: 0
2025/04/30 11:58:43 Number of resources for service identitystore: 0
2025/04/30 11:58:43 Number of resources for service qldb: 0
2025/04/30 11:58:43 Number of resources for service subnet: 6
2025/04/30 11:58:43 Number of resources for service vpc_peering: 0
2025/04/30 11:58:43 Number of resources for service cloudtrail: 0
2025/04/30 11:58:43 Number of resources for service customer_gateway: 0
2025/04/30 11:58:43 Number of resources for service devicefarm: 0
2025/04/30 11:58:43 Number of resources for service elastic_beanstalk: 0
2025/04/30 11:58:43 Number of resources for service emr: 0
2025/04/30 11:58:43 Number of resources for service sns: 0
2025/04/30 11:58:43 Number of resources for service sqs: 0
2025/04/30 11:58:43 Number of resources for service eni: 2
2025/04/30 11:58:43 Number of resources for service es: 0
2025/04/30 11:58:43 Number of resources for service sfn: 0
2025/04/30 11:58:43 Number of resources for service cloudhsm: 0
2025/04/30 11:58:43 Number of resources for service datapipeline: 0
2025/04/30 11:58:43 Number of resources for service ecr: 0
2025/04/30 11:58:43 Number of resources for service eip: 0
2025/04/30 11:58:43 Number of resources for service kms: 0
2025/04/30 11:58:43 Number of resources for service nat: 0
2025/04/30 11:58:43 Number of resources for service swf: 0
2025/04/30 11:58:43 Refreshing state... aws_instance.tfer--i-014cc7e6a8e1bd98e_VM_QA_Server
2025/04/30 11:58:43 Refreshing state... aws_main_route_table_association.tfer--vpc-0b4f99dadd49228d5
2025/04/30 11:58:43 Refreshing state... aws_network_interface.tfer--eni-0b30f1ba2f92d4db1
2025/04/30 11:58:43 Refreshing state... aws_subnet.tfer--subnet-0a8e8ecafe7b85621
2025/04/30 11:58:43 Refreshing state... aws_network_interface.tfer--eni-0b38509d9703ce44c
2025/04/30 11:58:43 Refreshing state... aws_subnet.tfer--subnet-0cb85af59666c350d
2025/04/30 11:58:43 Refreshing state... aws_subnet.tfer--subnet-0d20367914a9e1442
2025/04/30 11:58:43 Refreshing state... aws_instance.tfer--i-035fccbba40fcacf0_Dev_VM1
2025/04/30 11:58:43 Refreshing state... aws_subnet.tfer--subnet-0927cff1399a2a533
2025/04/30 11:58:43 Refreshing state... aws_security_group.tfer--default_sg-0c0672823b686a51c
2025/04/30 11:58:43 Refreshing state... aws_acm_certificate.tfer--aebd6b4d-f50c-42b7-a4b5-93aac0d1cb83_vicertify-002E-us
2025/04/30 11:58:43 Refreshing state... aws_subnet.tfer--subnet-0ac9f289223056a32
2025/04/30 11:58:43 Refreshing state... aws_route_table.tfer--rtb-060a5d874b07ee3b4
2025/04/30 11:58:43 Refreshing state... aws_vpc.tfer--vpc-0b4f99dadd49228d5
2025/04/30 11:58:43 Refreshing state... aws_subnet.tfer--subnet-015455fbea2314629
2025/04/30 11:58:44 Refreshing state... aws_internet_gateway.tfer--igw-04e1c66cb64db2b20
2025/04/30 11:58:44 Refreshing state... aws_default_network_acl.tfer--acl-0facf07eb6c55b6da
2025/04/30 11:58:45 Filtered number of resources for service vpn_connection: 0
2025/04/30 11:58:45 Filtered number of resources for service appsync: 0
2025/04/30 11:58:45 Filtered number of resources for service ebs: 0
2025/04/30 11:58:45 Filtered number of resources for service ecrpublic: 0
2025/04/30 11:58:45 Filtered number of resources for service nacl: 1
2025/04/30 11:58:45 Filtered number of resources for service route_table: 2
2025/04/30 11:58:45 Filtered number of resources for service ssm: 0
2025/04/30 11:58:45 Filtered number of resources for service api_gateway: 0
2025/04/30 11:58:45 Filtered number of resources for service cloudwatch: 0
2025/04/30 11:58:45 Filtered number of resources for service ec2_instance: 2
2025/04/30 11:58:45 Filtered number of resources for service elasticache: 0
2025/04/30 11:58:45 Filtered number of resources for service igw: 1
2025/04/30 11:58:45 Filtered number of resources for service vpn_gateway: 0
2025/04/30 11:58:45 Filtered number of resources for service workspaces: 0
2025/04/30 11:58:45 Filtered number of resources for service acm: 1
2025/04/30 11:58:45 Filtered number of resources for service dx: 0
2025/04/30 11:58:45 Filtered number of resources for service ecs: 0
2025/04/30 11:58:45 Filtered number of resources for service efs: 0
2025/04/30 11:58:45 Filtered number of resources for service identitystore: 0
2025/04/30 11:58:45 Filtered number of resources for service qldb: 0
2025/04/30 11:58:45 Filtered number of resources for service subnet: 6
2025/04/30 11:58:45 Filtered number of resources for service vpc_peering: 0
2025/04/30 11:58:45 Filtered number of resources for service cloudtrail: 0
2025/04/30 11:58:45 Filtered number of resources for service customer_gateway: 0
2025/04/30 11:58:45 Filtered number of resources for service devicefarm: 0
2025/04/30 11:58:45 Filtered number of resources for service elastic_beanstalk: 0
2025/04/30 11:58:45 Filtered number of resources for service emr: 0
2025/04/30 11:58:45 Filtered number of resources for service sns: 0
2025/04/30 11:58:45 Filtered number of resources for service sqs: 0
2025/04/30 11:58:45 Filtered number of resources for service eni: 2
2025/04/30 11:58:45 Filtered number of resources for service es: 0
2025/04/30 11:58:45 Filtered number of resources for service sfn: 0
2025/04/30 11:58:45 Filtered number of resources for service cloudhsm: 0
2025/04/30 11:58:45 Filtered number of resources for service datapipeline: 0
2025/04/30 11:58:45 Filtered number of resources for service ecr: 0
2025/04/30 11:58:45 Filtered number of resources for service eip: 0
2025/04/30 11:58:45 Filtered number of resources for service kms: 0
2025/04/30 11:58:45 Filtered number of resources for service nat: 0
2025/04/30 11:58:45 Filtered number of resources for service swf: 0
2025/04/30 11:58:45 Filtered number of resources for service batch: 0
2025/04/30 11:58:45 Filtered number of resources for service docdb: 0
2025/04/30 11:58:45 Filtered number of resources for service eks: 0
2025/04/30 11:58:45 Filtered number of resources for service secretsmanager: 0
2025/04/30 11:58:45 Filtered number of resources for service ses: 0
2025/04/30 11:58:45 Filtered number of resources for service transit_gateway: 0
2025/04/30 11:58:45 Filtered number of resources for service vpc: 1
2025/04/30 11:58:45 Filtered number of resources for service api_gatewayv2: 0
2025/04/30 11:58:45 Filtered number of resources for service elb: 0
2025/04/30 11:58:45 Filtered number of resources for service sg: 1
2025/04/30 11:58:45 Filtered number of resources for service vpc_endpoint: 0
2025/04/30 11:58:45 aws Connecting.... 
2025/04/30 11:58:45 aws save subnet
2025/04/30 11:58:45 aws save tfstate for subnet
2025/04/30 11:58:45 aws save transit_gateway
2025/04/30 11:58:45 aws save tfstate for transit_gateway
2025/04/30 11:58:45 aws save api_gatewayv2
2025/04/30 11:58:45 aws save tfstate for api_gatewayv2
2025/04/30 11:58:45 aws save ec2_instance
2025/04/30 11:58:45 aws save tfstate for ec2_instance
2025/04/30 11:58:45 aws save datapipeline
2025/04/30 11:58:45 aws save tfstate for datapipeline
2025/04/30 11:58:45 aws save eks
2025/04/30 11:58:45 aws save tfstate for eks
2025/04/30 11:58:45 aws save sns
2025/04/30 11:58:45 aws save tfstate for sns
2025/04/30 11:58:45 aws save customer_gateway
2025/04/30 11:58:45 aws save tfstate for customer_gateway
2025/04/30 11:58:45 aws save elb
2025/04/30 11:58:45 aws save tfstate for elb
2025/04/30 11:58:45 aws save kms
2025/04/30 11:58:45 aws save tfstate for kms
2025/04/30 11:58:45 aws save nat
2025/04/30 11:58:45 aws save tfstate for nat
2025/04/30 11:58:45 aws save vpn_gateway
2025/04/30 11:58:45 aws save tfstate for vpn_gateway
2025/04/30 11:58:45 aws save ses
2025/04/30 11:58:45 aws save tfstate for ses
2025/04/30 11:58:45 aws save sqs
2025/04/30 11:58:45 aws save tfstate for sqs
2025/04/30 11:58:45 aws save devicefarm
2025/04/30 11:58:45 aws save tfstate for devicefarm
2025/04/30 11:58:45 aws save sg
2025/04/30 11:58:45 aws save tfstate for sg
2025/04/30 11:58:45 aws save eni
2025/04/30 11:58:45 aws save tfstate for eni
2025/04/30 11:58:45 aws save emr
2025/04/30 11:58:45 aws save tfstate for emr
2025/04/30 11:58:45 aws save acm
2025/04/30 11:58:45 aws save tfstate for acm
2025/04/30 11:58:45 aws save elastic_beanstalk
2025/04/30 11:58:45 aws save tfstate for elastic_beanstalk
2025/04/30 11:58:45 aws save ssm
2025/04/30 11:58:45 aws save tfstate for ssm
2025/04/30 11:58:45 aws save igw
2025/04/30 11:58:45 aws save tfstate for igw
2025/04/30 11:58:45 aws save ecr
2025/04/30 11:58:45 aws save tfstate for ecr
2025/04/30 11:58:45 aws save identitystore
2025/04/30 11:58:45 aws save tfstate for identitystore
2025/04/30 11:58:45 aws save appsync
2025/04/30 11:58:45 aws save tfstate for appsync
2025/04/30 11:58:45 aws save ecs
2025/04/30 11:58:45 aws save tfstate for ecs
2025/04/30 11:58:45 aws save route_table
2025/04/30 11:58:45 aws save tfstate for route_table
2025/04/30 11:58:45 aws save ecrpublic
2025/04/30 11:58:45 aws save tfstate for ecrpublic
2025/04/30 11:58:45 aws save sfn
2025/04/30 11:58:45 aws save tfstate for sfn
2025/04/30 11:58:45 aws save api_gateway
2025/04/30 11:58:45 aws save tfstate for api_gateway
2025/04/30 11:58:45 aws save nacl
2025/04/30 11:58:45 aws save tfstate for nacl
2025/04/30 11:58:45 aws save ebs
2025/04/30 11:58:45 aws save tfstate for ebs
2025/04/30 11:58:45 aws save workspaces
2025/04/30 11:58:45 aws save tfstate for workspaces
2025/04/30 11:58:45 aws save qldb
2025/04/30 11:58:45 aws save tfstate for qldb
2025/04/30 11:58:45 aws save dx
2025/04/30 11:58:45 aws save tfstate for dx
2025/04/30 11:58:45 aws save elasticache
2025/04/30 11:58:45 aws save tfstate for elasticache
2025/04/30 11:58:45 aws save docdb
2025/04/30 11:58:45 aws save tfstate for docdb
2025/04/30 11:58:45 aws save vpc
2025/04/30 11:58:45 aws save tfstate for vpc
2025/04/30 11:58:45 aws save efs
2025/04/30 11:58:45 aws save tfstate for efs
2025/04/30 11:58:45 aws save secretsmanager
2025/04/30 11:58:45 aws save tfstate for secretsmanager
2025/04/30 11:58:45 aws save swf
2025/04/30 11:58:45 aws save tfstate for swf
2025/04/30 11:58:45 aws save cloudhsm
2025/04/30 11:58:45 aws save tfstate for cloudhsm
2025/04/30 11:58:45 aws save vpc_peering
2025/04/30 11:58:45 aws save tfstate for vpc_peering
2025/04/30 11:58:45 aws save cloudwatch
2025/04/30 11:58:45 aws save tfstate for cloudwatch
2025/04/30 11:58:45 aws save vpc_endpoint
2025/04/30 11:58:45 aws save tfstate for vpc_endpoint
2025/04/30 11:58:45 aws save batch
2025/04/30 11:58:45 aws save tfstate for batch
2025/04/30 11:58:45 aws save eip
2025/04/30 11:58:45 aws save tfstate for eip
2025/04/30 11:58:45 aws save es
2025/04/30 11:58:45 aws save tfstate for es
2025/04/30 11:58:45 aws save vpn_connection
2025/04/30 11:58:45 aws save tfstate for vpn_connection
2025/04/30 11:58:45 aws save cloudtrail
2025/04/30 11:58:45 aws save tfstate for cloudtrail




varunrajasekaran@MacBookAir terraformer % ./terraformer import aws --resources=iam,route53                                                                                                                                                                 
2025/04/30 12:00:22 aws importing default region
2025/04/30 12:00:24 aws importing... iam
2025/04/30 12:00:29 aws done importing iam
2025/04/30 12:00:29 aws importing... route53
2025/04/30 12:00:30 aws done importing route53
2025/04/30 12:00:30 Number of resources for service iam: 38
2025/04/30 12:00:30 Number of resources for service route53: 4
2025/04/30 12:00:30 Refreshing state... aws_route53_record.tfer--Z05801763B81TE4WSRN6U_vicertify-002E-us-002E-_NS_
2025/04/30 12:00:30 Refreshing state... aws_iam_user_group_membership.tfer--Sivaramakrishnan-002E-Iyyamperumal-0040-infinite-002E-com-002F-VI_Certify_Dev
2025/04/30 12:00:30 Refreshing state... aws_iam_user.tfer--AIDA3JC63EGW7Q7US62BS
2025/04/30 12:00:30 Refreshing state... aws_iam_user_group_membership.tfer--ganesh-002E-vinaitheerthan-0040-infinite-002E-com-002F-VI_Certify_Admin
2025/04/30 12:00:30 Refreshing state... aws_iam_user.tfer--AIDA3JC63EGWYK44TMLNE
2025/04/30 12:00:30 Refreshing state... aws_route53_zone.tfer--Z05801763B81TE4WSRN6U_vicertify-002E-us
2025/04/30 12:00:30 Refreshing state... aws_iam_user_group_membership.tfer--Senthilkumar-002E-Rajendran-0040-infinite-002E-com-002F-VI_Certify_Admin
2025/04/30 12:00:30 Refreshing state... aws_iam_role_policy_attachment.tfer--AWSServiceRoleForTrustedAdvisor_AWSTrustedAdvisorServiceRolePolicy
2025/04/30 12:00:30 Refreshing state... aws_iam_group.tfer--VI_Certify_Admin
2025/04/30 12:00:30 Refreshing state... aws_iam_group_policy_attachment.tfer--VI_Certify_Dev_AmazonEC2FullAccess
2025/04/30 12:00:30 Refreshing state... aws_route53_record.tfer--Z05801763B81TE4WSRN6U_vicertify-002E-us-002E-_SOA_
2025/04/30 12:00:30 Refreshing state... aws_iam_user.tfer--AIDA3JC63EGWWTQ4H5C3Z
2025/04/30 12:00:30 Refreshing state... aws_iam_group_policy_attachment.tfer--VI_Certify_Dev_AmazonWorkMailFullAccess
2025/04/30 12:00:30 Refreshing state... aws_iam_user_group_membership.tfer--Anju-002E-Singh-0040-infinite-002E-com-002F-VI_Certify_Dev
2025/04/30 12:00:30 Refreshing state... aws_iam_role_policy_attachment.tfer--OrganizationAccountAccessRole_AdministratorAccess
2025/04/30 12:00:30 Refreshing state... aws_iam_group.tfer--VI_Certify_Dev
2025/04/30 12:00:30 Refreshing state... aws_iam_access_key.tfer--AKIA3JC63EGWRWWKMDMV
2025/04/30 12:00:30 Refreshing state... aws_iam_user_group_membership.tfer--Varun-002E-rajasekaran-0040-infinite-002E-com-002F-Vi_Infra_Admin
2025/04/30 12:00:30 Refreshing state... aws_iam_role.tfer--AWSServiceRoleForOrganizations
2025/04/30 12:00:30 Refreshing state... aws_iam_role.tfer--AWSServiceRoleForTrustedAdvisor
2025/04/30 12:00:30 Refreshing state... aws_iam_user_group_membership.tfer--vamsikr-0040-infinite-002E-com-002F-VI_Automation_QA
2025/04/30 12:00:30 Refreshing state... aws_iam_user.tfer--AIDA3JC63EGW625ROMSHV
2025/04/30 12:00:30 Refreshing state... aws_iam_user_policy_attachment.tfer--Senthilkumar-002E-Rajendran-0040-infinite-002E-com_AdministratorAccess
2025/04/30 12:00:30 Refreshing state... aws_iam_group_policy_attachment.tfer--VI_Certify_Dev_AmazonWorkMailMessageFlowFullAccess
2025/04/30 12:00:30 Refreshing state... aws_iam_group_policy_attachment.tfer--Vi_Infra_Admin_AdministratorAccess
2025/04/30 12:00:30 Refreshing state... aws_iam_user.tfer--AIDA3JC63EGWT7S2AC53H
2025/04/30 12:00:30 Refreshing state... aws_iam_role.tfer--AWSServiceRoleForSupport
2025/04/30 12:00:30 Refreshing state... aws_iam_group_policy_attachment.tfer--VI_Certify_Dev_AmazonEC2ContainerServiceRole
2025/04/30 12:00:30 Refreshing state... aws_iam_group_policy_attachment.tfer--VI_Automation_QA_AmazonEC2FullAccess
2025/04/30 12:00:30 Refreshing state... aws_iam_role_policy_attachment.tfer--AWSServiceRoleForSupport_AWSSupportServiceRolePolicy
2025/04/30 12:00:30 Refreshing state... aws_iam_group.tfer--Vi_Infra_Admin
2025/04/30 12:00:30 Refreshing state... aws_iam_group.tfer--VI_Automation_QA
2025/04/30 12:00:30 Refreshing state... aws_iam_role_policy_attachment.tfer--AWSServiceRoleForOrganizations_AWSOrganizationsServiceTrustPolicy
2025/04/30 12:00:30 Refreshing state... aws_iam_user.tfer--AIDA3JC63EGWZORFZAJ52
2025/04/30 12:00:30 Refreshing state... aws_iam_group_policy_attachment.tfer--VI_Certify_Admin_AdministratorAccess
2025/04/30 12:00:30 Refreshing state... aws_iam_user_group_membership.tfer--Sindhukavir-0040-infinite-002E-com-002F-VI_Automation_QA
2025/04/30 12:00:30 Refreshing state... aws_iam_user_group_membership.tfer--Senthilkumar-002E-Rajendran-0040-infinite-002E-com-002F-Vi_Infra_Admin
2025/04/30 12:00:30 Refreshing state... aws_iam_group_policy_attachment.tfer--VI_Automation_QA_AmazonEC2ContainerServiceRole
2025/04/30 12:00:30 Refreshing state... aws_route53_record.tfer--Z05801763B81TE4WSRN6U_www-002E-vicertify-002E-us-002E-_A_
2025/04/30 12:00:30 Refreshing state... aws_iam_user_group_membership.tfer--Senthilkumar-002E-Rajendran-0040-infinite-002E-com-002F-VI_Certify_Dev
2025/04/30 12:00:30 Refreshing state... aws_iam_role.tfer--OrganizationAccountAccessRole
2025/04/30 12:00:30 Refreshing state... aws_iam_user.tfer--AIDA3JC63EGWVQS7EUNJ6
2025/04/30 12:00:30 Filtered number of resources for service iam: 38
2025/04/30 12:00:30 Filtered number of resources for service route53: 4
2025/04/30 12:00:30 aws Connecting.... 
2025/04/30 12:00:30 aws save iam
2025/04/30 12:00:30 aws save tfstate for iam
2025/04/30 12:00:30 aws save route53
2025/04/30 12:00:30 aws save tfstate for route53
