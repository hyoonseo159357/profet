# warm start 용도
for model in LeNet5
do
  sudo python3 /home/ubuntu/profet/data_generation/workload/profile_workload.py --model $model
done
sudo rm -r logs
mkdir logs
