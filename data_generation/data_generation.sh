#!/bin/bash
# Get arguments
INSTANCE_TYPE=$1
MODEL_NAME=$2
PIXEL_SIZE=$3
BATCH_SIZE=$4
USING_GPU_NUM=$5
PROF_MODE=$6

# 버지니아기준
IMAGE_ID="ami-0ea8263cbf553488e". 
AWS_KEY="ys"
SUBNET_ID="subnet-f791a893"
SG_ID="sg-0f2dfaeaef1c8f808"

# Launch instance & get informations
echo 'launch instance'
LAUNCH_INFO=$(aws ec2 run-instances --image-id $IMAGE_ID --count 1 --instance-type $INSTANCE_TYPE \
--key-name $AWS_KEY --subnet-id $SUBNET_ID --security-group-ids $SG_ID)
sleep 60
echo 'get instance info'
INSTANCE_ID=$(echo $LAUNCH_INFO | jq -r '. | .Instances[0].InstanceId')
INSTANCE_DNS=$(aws ec2 describe-instances --instance-ids $INSTANCE_ID | jq -r '. | .Reservations[0].Instances[0].PublicDnsName')
echo $INSTANCE_DNS

# Instance setting
sleep 60
echo 'git clone and setting instance'
AWS_KEY="ys-oregon2.pem"
ssh -o "StrictHostKeyChecking no" -i $AWS_KEY ubuntu@$INSTANCE_DNS 'git clone https://github.com/hyoonseo159357/profet.git'
ssh -i $AWS_KEY -t ubuntu@$INSTANCE_DNS 'cd /home/ubuntu/profet/data_generation/;sudo bash ./settings.sh'

# # Run Experiments
# sleep 10
# echo 'start experiment'
# EXP_CMD="cd /home/ubuntu/profet/data_generation/;sudo bash ./run_single_workload.sh $INSTANCE_TYPE $PROF_MODE"
# ssh -i $AWS_KEY -t ubuntu@$INSTANCE_DNS $EXP_CMD

# # Run tensorboard & scraping profiling results
# sleep 10
# echo 'start tensorboard'
# TB_CMD="cd /home/ubuntu/profet/data_generation/;sudo bash ./get_tensorboard.sh $INSTANCE_TYPE"
# ssh -i $AWS_KEY -t ubuntu@$INSTANCE_DNS $TB_CMD

# # Get profiling results
# sleep 10
# mkdir $INSTANCE_TYPE
# scp -i $AWS_KEY \
# ubuntu@$INSTANCE_DNS:~/profet/data_generation/tensorstats/* ./$INSTANCE_TYPE/

# # Terminate instance
# sleep 10
# echo 'terminate instance'
# TERMINATE_INFO=$(aws ec2 terminate-instances --instance-ids $INSTANCE_ID)
# echo $TERMINATE_INFO
