#!/bin/bash

RECORD=2995
WORKDIR=work_dir/$RECORD
MODELNAME=runs/$RECORD

#CONFIG=./config/uav-cross-subjectv1/test.yaml
CONFIG=./config/uav-cross-subjectv2/test.yaml

WEIGHTS=runs/2302-34-12775.pt


BATCH_SIZE=256

python3 main.py  --config $CONFIG --work-dir $WORKDIR -model_saved_name $MODELNAME --device 0  --batch-size $BATCH_SIZE --test-batch-size $BATCH_SIZE --weights $WEIGHTS
