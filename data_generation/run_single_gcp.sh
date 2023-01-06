or model in ResNet18
do
  for dataset in  32
  do
    for batchsize in 16
    do
      for prof_or_latency in profiling latency
      do
        sudo python3 /home/kmubigdatagcp/profet/data_generation/workload/profile_workload5.py --model $model --dataset $dataset --batch_size $batchsize --prof_or_latency $prof_or_latency
      done
    done
  done
done
