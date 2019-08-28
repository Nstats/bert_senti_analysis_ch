#!/usr/bin/env bash
python senti_analysis.py \
  --do_train=True \
  --max_seq_length=64 \
  --train_batch_size=32 \
  --learning_rate=2e-5 \
  --num_train_epochs=100.0 \
  --save_checkpoints_steps=1000 \
  --keep_checkpoint_max=10 \
  --save_summary_steps=100 \
  --bert_config_file='./data/pretrained_model/chinese_L-12_H-768_A-12/bert_config.json' \
  --vocab_file='./data/pretrained_model/chinese_L-12_H-768_A-12/vocab.txt' \
  --init_checkpoint='./data/pretrained_model/chinese_L-12_H-768_A-12/bert_model.ckpt' \
  --train_dir='train_mix.tsv' \
