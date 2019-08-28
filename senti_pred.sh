#!/usr/bin/env bash
python senti_analysis.py \
  --do_predict=True \
  --max_seq_length=64 \
  --predict_batch_size=512 \
  --test_dir='test_mix.tsv' \
  --test_checkpoint_path='./data/sentiment/output/model.ckpt-22937' \
  --bert_config_file='./data/pretrained_model/chinese_L-12_H-768_A-12/bert_config.json' \
  --vocab_file='./data/pretrained_model/chinese_L-12_H-768_A-12/vocab.txt' \
  --init_checkpoint='./data/pretrained_model/chinese_L-12_H-768_A-12/bert_model.ckpt' \
