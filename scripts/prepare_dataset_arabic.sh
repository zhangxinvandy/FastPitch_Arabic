set -e

: ${DATA_DIR:=./}
: ${ARGS="--extract-mels"}

python prepare_dataset.py \
    --wav-text-filelists filelists/arabic_audio_text_train.txt \
                        filelists/arabic_audio_text_val.txt \
    --n-workers 16 \
    --batch-size 1 \
    --dataset-path $DATA_DIR \
    --extract-pitch \
    --f0-method pyin \
    --symbol_set arabic_basic \
    $ARGS

echo "Extracting pitch... OK"