for model in ResNet18
  for dataset in  32
  do
    for batchsize in 16
    do
      for prof_or_latency in profiling latency
      do
        sudo python3 /home/kmubigdatagcp/profet/data_generation/workload/profile_workload.py --model $model --dataset $dataset --batch_size $batchsize --prof_or_latency $prof_or_latency
      done
    done
  done
done
