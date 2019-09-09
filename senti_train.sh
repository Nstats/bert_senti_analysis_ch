#!/usr/bin/env bash
python senti_analysis.py \
  --do_train=True \
  --do_predict=True \
  --max_seq_length=300 \
  --train_batch_size=24 \
  --learning_rate=2e-5 \
  --num_train_epochs=40.0 \
  --save_checkpoints_steps=1000 \
  --keep_checkpoint_max=1 \
  --save_summary_steps=100 \
  --classifier='seq_out_MLP' \
  --rnn_layers=1 \
  --output_dir='./data/sentiment/output_wwm_ext_seq_out_MLP' \
  --bert_config_file='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/bert_config.json' \
  --vocab_file='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/vocab.txt' \
  --init_checkpoint='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/bert_model.ckpt' \
  --train_dir='train_mix_balanced.tsv' \
  --test_dir='test_mix.tsv' \
  --test_checkpoint_path='./data/sentiment/output_wwm_ext_seq_out_MLP/model.ckpt-18258'; \

python senti_analysis.py \
  --do_train=True \
  --do_predict=True \
  --max_seq_length=300 \
  --train_batch_size=24 \
  --learning_rate=2e-5 \
  --num_train_epochs=40.0 \
  --save_checkpoints_steps=1000 \
  --keep_checkpoint_max=1 \
  --save_summary_steps=100 \
  --classifier='BiGRU' \
  --rnn_layers=1 \
  --output_dir='./data/sentiment/output_wwm_ext_BiGRU_2' \
  --bert_config_file='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/bert_config.json' \
  --vocab_file='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/vocab.txt' \
  --init_checkpoint='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/bert_model.ckpt' \
  --train_dir='train_mix_balanced.tsv' \
  --test_dir='test_mix.tsv' \
  --test_checkpoint_path='./data/sentiment/output_wwm_ext_BiGRU_2/model.ckpt-18258'; \

python senti_analysis.py \
  --do_train=True \
  --do_predict=True \
  --max_seq_length=300 \
  --train_batch_size=24 \
  --learning_rate=2e-5 \
  --num_train_epochs=40.0 \
  --save_checkpoints_steps=1000 \
  --keep_checkpoint_max=1 \
  --save_summary_steps=100 \
  --classifier='BiGRU' \
  --rnn_layers=2 \
  --output_dir='./data/sentiment/output_wwm_ext_2lBiGRU_2' \
  --bert_config_file='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/bert_config.json' \
  --vocab_file='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/vocab.txt' \
  --init_checkpoint='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/bert_model.ckpt' \
  --train_dir='train_mix_balanced.tsv' \
  --test_dir='test_mix.tsv' \
  --test_checkpoint_path='./data/sentiment/output_wwm_ext_2lBiGRU_2/model.ckpt-18258'; \

:<<annotation
annotation
