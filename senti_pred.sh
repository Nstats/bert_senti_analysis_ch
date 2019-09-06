#!/usr/bin/env bash
python senti_analysis.py \
  --do_predict=True \
  --max_seq_length=300 \
  --predict_batch_size=512 \
  --classifier='seq_out_MLP' \
  --test_dir='test_mix.tsv' \
  --output_dir='./data/sentiment/output_wwm_ext_seq_out_MLP' \
  --test_checkpoint_path='./data/sentiment/output_wwm_ext_seq_out_MLP/model.ckpt-18258' \
  --bert_config_file='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/bert_config.json' \
  --vocab_file='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/vocab.txt' \
  --init_checkpoint='./data/pretrained_model/chinese_L-12_H-768_A-12/bert_model.ckpt'; \
:<<annotation
python senti_analysis.py \
  --do_predict=True \
  --max_seq_length=300 \
  --predict_batch_size=512 \
  --classifier='BiLSTM' \
  --test_dir='test_mix.tsv' \
  --output_dir='./data/sentiment/output_webqa' \
  --test_checkpoint_path='./data/sentiment/output_webqa/model.ckpt-6553' \
  --bert_config_file='./data/pretrained_model/bert_ch_webqa/bert_config.json' \
  --vocab_file='./data/pretrained_model/bert_ch_webqa/vocab.txt' \
  --init_checkpoint='./data/pretrained_model/chinese_L-12_H-768_A-12/bert_model.ckpt'; \

python senti_analysis.py \
  --do_predict=True \
  --max_seq_length=300 \
  --predict_batch_size=512 \
  --classifier='BiLSTM' \
  --test_dir='test_mix.tsv' \
  --output_dir='./data/sentiment/output_rmrb' \
  --test_checkpoint_path='./data/sentiment/output_rmrb/model.ckpt-6553' \
  --bert_config_file='./data/pretrained_model/bert_ch_rmrb/bert_config.json' \
  --vocab_file='./data/pretrained_model/bert_ch_rmrb/vocab.txt' \
  --init_checkpoint='./data/pretrained_model/chinese_L-12_H-768_A-12/bert_model.ckpt'; \

python senti_analysis.py \
  --do_predict=True \
  --max_seq_length=300 \
  --predict_batch_size=512 \
  --classifier='BiLSTM' \
  --test_dir='test_mix.tsv' \
  --output_dir='./data/sentiment/output_bert_original_balanced' \
  --test_checkpoint_path='./data/sentiment/output_bert_original_balanced/model.ckpt-9781' \
  --bert_config_file='./data/pretrained_model/chinese_L-12_H-768_A-12/bert_config.json' \
  --vocab_file='./data/pretrained_model/chinese_L-12_H-768_A-12/vocab.txt' \
  --init_checkpoint='./data/pretrained_model/chinese_L-12_H-768_A-12/bert_model.ckpt'; \

python senti_analysis.py \
  --do_predict=True \
  --max_seq_length=300 \
  --predict_batch_size=512 \
  --classifier='BiLSTM' \
  --test_dir='test_mix.tsv' \
  --output_dir='./data/sentiment/output_wwm_ext_balanced' \
  --test_checkpoint_path='./data/sentiment/output_wwm_ext_balanced/model.ckpt-9781' \
  --bert_config_file='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/bert_config.json' \
  --vocab_file='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/vocab.txt' \
  --init_checkpoint='./data/pretrained_model/chinese_L-12_H-768_A-12/bert_model.ckpt'; \

python senti_analysis.py \
  --do_predict=True \
  --max_seq_length=300 \
  --predict_batch_size=512 \
  --classifier='BiLSTM' \
  --test_dir='test_mix.tsv' \
  --output_dir='./data/sentiment/output_rmrb_balanced' \
  --test_checkpoint_path='./data/sentiment/output_rmrb_balanced/model.ckpt-9781' \
  --bert_config_file='./data/pretrained_model/bert_ch_rmrb/bert_config.json' \
  --vocab_file='./data/pretrained_model/bert_ch_rmrb/vocab.txt' \
  --init_checkpoint='./data/pretrained_model/chinese_L-12_H-768_A-12/bert_model.ckpt'; \

python senti_analysis.py \
  --do_predict=True \
  --max_seq_length=300 \
  --predict_batch_size=512 \
  --classifier='BiLSTM' \
  --test_dir='test_mix.tsv' \
  --output_dir='./data/sentiment/output_webqa_balanced' \
  --test_checkpoint_path='./data/sentiment/output_webqa_balanced/model.ckpt-9781' \
  --bert_config_file='./data/pretrained_model/bert_ch_webqa/bert_config.json' \
  --vocab_file='./data/pretrained_model/bert_ch_webqa/vocab.txt' \
  --init_checkpoint='./data/pretrained_model/chinese_L-12_H-768_A-12/bert_model.ckpt'

:<<annotation
annotation
