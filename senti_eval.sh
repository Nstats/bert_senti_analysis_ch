#!/usr/bin/env bash
for i in 20000 22937;
do
python senti_analysis.py \
  --do_eval=True \
  --max_seq_length=64 \
  --eval_batch_size=512 \
  --bert_config_file='./data/pretrained_model/chinese_L-12_H-768_A-12/bert_config.json' \
  --vocab_file='./data/pretrained_model/chinese_L-12_H-768_A-12/vocab.txt' \
  --init_checkpoint='./data/pretrained_model/chinese_L-12_H-768_A-12/bert_model.ckpt' \
  --eval_checkpoint_path='./data/sentiment/output/model.ckpt-'$i \
  --eval_result_filename='eval_results_'$i + '.txt' \
  --dev_dir='train_mix.tsv'
done

:<<annotation
annotation
