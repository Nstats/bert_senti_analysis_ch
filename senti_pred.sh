#!/usr/bin/env bash
python senti_analysis.py \
  --do_predict=True \
  --max_seq_length=300 \
  --predict_batch_size=512 \
  --test_dir='test_mix.tsv' \
  --output_dir='./data/sentiment/output_bert' \
  --test_checkpoint_path='./data/sentiment/output_bert/model.ckpt-6553' \
  --bert_config_file='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/bert_config.json' \
  --vocab_file='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/vocab.txt' \
  --init_checkpoint='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/bert_model.ckpt' \

:<<annotation
python senti_analysis.py \
  --do_predict=True \
  --max_seq_length=64 \
  --predict_batch_size=512 \
  --test_dir='test_mix.tsv' \
  --output_dir='./data/sentiment/output64_128' \
  --test_checkpoint_path='./data/sentiment/output64_128/model.ckpt-5734' \
  --bert_config_file='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/bert_config.json' \
  --vocab_file='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/vocab.txt' \
  --init_checkpoint='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/bert_model.ckpt'; \

python senti_analysis.py \
  --do_predict=True \
  --max_seq_length=128 \
  --predict_batch_size=512 \
  --test_dir='test_mix.tsv' \
  --output_dir='./data/sentiment/output128_32' \
  --test_checkpoint_path='./data/sentiment/output128_32/model.ckpt-22937' \
  --bert_config_file='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/bert_config.json' \
  --vocab_file='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/vocab.txt' \
  --init_checkpoint='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/bert_model.ckpt'; \

python senti_analysis.py \
  --do_predict=True \
  --max_seq_length=128 \
  --predict_batch_size=512 \
  --test_dir='test_mix.tsv' \
  --output_dir='./data/sentiment/output128_64' \
  --test_checkpoint_path='./data/sentiment/output128_64/model.ckpt-11468' \
  --bert_config_file='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/bert_config.json' \
  --vocab_file='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/vocab.txt' \
  --init_checkpoint='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/bert_model.ckpt'; \

python senti_analysis.py \
  --do_predict=True \
  --max_seq_length=256 \
  --predict_batch_size=512 \
  --test_dir='test_mix.tsv' \
  --output_dir='./data/sentiment/output256_16' \
  --test_checkpoint_path='./data/sentiment/output256_16/model.ckpt-45875' \
  --bert_config_file='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/bert_config.json' \
  --vocab_file='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/vocab.txt' \
  --init_checkpoint='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/bert_model.ckpt'; \

python senti_analysis.py \
  --do_predict=True \
  --max_seq_length=256 \
  --predict_batch_size=512 \
  --test_dir='test_mix.tsv' \
  --output_dir='./data/sentiment/output256_32' \
  --test_checkpoint_path='./data/sentiment/output256_32/model.ckpt-22937' \
  --bert_config_file='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/bert_config.json' \
  --vocab_file='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/vocab.txt' \
  --init_checkpoint='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/bert_model.ckpt'; \

python senti_analysis.py \
  --do_predict=True \
  --max_seq_length=256 \
  --predict_batch_size=512 \
  --test_dir='test_mix.tsv' \
  --output_dir='./data/sentiment/output256_64' \
  --test_checkpoint_path='./data/sentiment/output256_64/model.ckpt-11468' \
  --bert_config_file='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/bert_config.json' \
  --vocab_file='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/vocab.txt' \
  --init_checkpoint='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/bert_model.ckpt'; \

python senti_analysis.py \
  --do_predict=True \
  --max_seq_length=512 \
  --predict_batch_size=512 \
  --test_dir='test_mix.tsv' \
  --output_dir='./data/sentiment/output512_16' \
  --test_checkpoint_path='./data/sentiment/output512_16/model.ckpt-45875' \
  --bert_config_file='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/bert_config.json' \
  --vocab_file='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/vocab.txt' \
  --init_checkpoint='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/bert_model.ckpt'; \
annotation
