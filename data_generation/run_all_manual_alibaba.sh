for model in VGGSmall LeNet5 VGG11 VGG13 VGG16 VGG19 ResNetSmall ResNet18 ResNet34 ResNet50 MNIST_CNN CIFAR10_CNN FLOWER_CNN AlexNet InceptionV3 InceptionResNetV2 Xception EfficientNetB0 MobileNetV2
do
  for dataset in  32 64 128 224 256
  do
    for batchsize in 16 32 64 128 256 
    do
      for prof_or_latency in profiling latency
      do
        sudo python3 /root/profet/data_generation/workload/profile_workload.py --model $model --dataset $dataset --batch_size $batchsize --prof_or_latency $prof_or_latency
      done
    done
  done
done

for model in VGGSmall LeNet5 VGG11 VGG13 VGG16 VGG19 ResNetSmall ResNet18 ResNet34 ResNet50 MNIST_CNN CIFAR10_CNN FLOWER_CNN AlexNet InceptionV3 InceptionResNetV2 Xception EfficientNetB0 MobileNetV2
do
  for dataset in  32 64 128 224 256
  do
    for batchsize in 16 32 64 128 256 
    do
      for prof_or_latency in profiling latency
      do
        sudo python3 /root/profet/data_generation/workload/profile_workload2.py --model $model --dataset $dataset --batch_size $batchsize --prof_or_latency $prof_or_latency
      done
    done
  done
done

for model in VGGSmall LeNet5 VGG11 VGG13 VGG16 VGG19 ResNetSmall ResNet18 ResNet34 ResNet50 MNIST_CNN CIFAR10_CNN FLOWER_CNN AlexNet InceptionV3 InceptionResNetV2 Xception EfficientNetB0 MobileNetV2
do
  for dataset in  32 64 128 224 256
  do
    for batchsize in 16 32 64 128 256 
    do
      for prof_or_latency in profiling latency
      do
        sudo python3 /root/profet/data_generation/workload/profile_workload3.py --model $model --dataset $dataset --batch_size $batchsize --prof_or_latency $prof_or_latency
      done
    done
  done
done

for model in VGGSmall LeNet5 VGG11 VGG13 VGG16 VGG19 ResNetSmall ResNet18 ResNet34 ResNet50 MNIST_CNN CIFAR10_CNN FLOWER_CNN AlexNet InceptionV3 InceptionResNetV2 Xception EfficientNetB0 MobileNetV2
do
  for dataset in  32 64 128 224 256
  do
    for batchsize in 16 32 64 128 256 
    do
      for prof_or_latency in profiling latency
      do
        sudo python3 /root/profet/data_generation/workload/profile_workload4.py --model $model --dataset $dataset --batch_size $batchsize --prof_or_latency $prof_or_latency
      done
    done
  done
done

for model in VGGSmall LeNet5 VGG11 VGG13 VGG16 VGG19 ResNetSmall ResNet18 ResNet34 ResNet50 MNIST_CNN CIFAR10_CNN FLOWER_CNN AlexNet InceptionV3 InceptionResNetV2 Xception EfficientNetB0 MobileNetV2
do
  for dataset in  32 64 128 224 256
  do
    for batchsize in 16 32 64 128 256 
    do
      for prof_or_latency in profiling latency
      do
        sudo python3 /root/profet/data_generation/workload/profile_workload5.py --model $model --dataset $dataset --batch_size $batchsize --prof_or_latency $prof_or_latency
      done
    done
  done
done
