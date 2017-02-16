#!/bin/bash
#source ~/tf11/bin/activate
mkdir multigpu-trained
start=`date +%s.%N`
CUDA_VISIBLE_DEVICES=$deviceId python fcn5_mnist_multi_gpu.py  --batch_size=$batch_size --epochs=$epochs --device_ids=$deviceId --num_gpus=${gpu_count}
end=`date +%s.%N`
runtime=$( echo "$end - $start" | bc -l )
echo "finished with execute time: ${runtime}" 
rm -rf multigpu-trained
#deactivate
