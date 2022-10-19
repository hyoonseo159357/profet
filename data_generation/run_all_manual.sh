for model in VGGSmall LeNet5
do
  sudo python3 /home/ubuntu/profet/data_generation/workload/profile_workload.py --model $model
done
