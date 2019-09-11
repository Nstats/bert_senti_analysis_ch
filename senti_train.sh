#!/usr/bin/env bash
python senti_analysis.py \
  --do_train=True \
  --do_predict=True \
  --max_seq_length=300 \
  --train_batch_size=24 \
  --learning_rate=2e-5 \
  --num_train_epochs=20.0 \
  --save_checkpoints_steps=1000 \
  --keep_checkpoint_max=1 \
  --save_summary_steps=100 \
  --classifier='MLP' \
  --rnn_layers=1 \
  --output_dir='./data/sentiment/tdt_wwm_ext_MLP' \
  --bert_config_file='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/bert_config.json' \
  --vocab_file='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/vocab.txt' \
  --init_checkpoint='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/bert_model.ckpt' \
  --train_dir='tdt_train_mix_balanced.tsv' \
  --test_dir='tdt_test_mix.tsv' \
  --test_checkpoint_path='./data/sentiment/tdt_wwm_ext_MLP/model.ckpt-18258'; \

python senti_analysis.py \
  --do_train=True \
  --do_predict=True \
  --max_seq_length=300 \
  --train_batch_size=24 \
  --learning_rate=2e-5 \
  --num_train_epochs=20.0 \
  --save_checkpoints_steps=1000 \
  --keep_checkpoint_max=1 \
  --save_summary_steps=100 \
  --classifier='BiGRU' \
  --rnn_layers=1 \
  --output_dir='./data/sentiment/tdt_wwm_ext_BiGRU' \
  --bert_config_file='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/bert_config.json' \
  --vocab_file='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/vocab.txt' \
  --init_checkpoint='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/bert_model.ckpt' \
  --train_dir='tdt_train_mix_balanced.tsv' \
  --test_dir='tdt_test_mix.tsv' \
  --test_checkpoint_path='./data/sentiment/tdt_wwm_ext_BiGRU/model.ckpt-18258'; \

python senti_analysis.py \
  --do_train=True \
  --do_predict=True \
  --max_seq_length=300 \
  --train_batch_size=24 \
  --learning_rate=2e-5 \
  --num_train_epochs=20.0 \
  --save_checkpoints_steps=1000 \
  --keep_checkpoint_max=1 \
  --save_summary_steps=100 \
  --classifier='BiGRU_highway' \
  --rnn_layers=1 \
  --output_dir='./data/sentiment/tdt_wwm_ext_BiGRU_highway' \
  --bert_config_file='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/bert_config.json' \
  --vocab_file='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/vocab.txt' \
  --init_checkpoint='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/bert_model.ckpt' \
  --train_dir='tdt_train_mix_balanced.tsv' \
  --test_dir='tdt_test_mix.tsv' \
  --test_checkpoint_path='./data/sentiment/tdt_wwm_ext_BiGRU_highway/model.ckpt-18258'; \

python senti_analysis.py \
  --do_train=True \
  --do_predict=True \
  --max_seq_length=300 \
  --train_batch_size=24 \
  --learning_rate=2e-5 \
  --num_train_epochs=20.0 \
  --save_checkpoints_steps=1000 \
  --keep_checkpoint_max=1 \
  --save_summary_steps=100 \
  --classifier='MLP' \
  --rnn_layers=1 \
  --output_dir='./data/sentiment/output_RoBERTa_large_MLP' \
  --bert_config_file='./data/pretrained_model/roberta_zh_L-24_H-1024_A-16/bert_config.json' \
  --vocab_file='./data/pretrained_model/roberta_zh_L-24_H-1024_A-16/vocab.txt' \
  --init_checkpoint='./data/pretrained_model/roberta_zh_L-24_H-1024_A-16/bert_model.ckpt' \
  --train_dir='train_mix_balanced.tsv' \
  --test_dir='test_mix.tsv' \
  --test_checkpoint_path='./data/sentiment/output_RoBERTa_large_MLP/model.ckpt-9129'; \

python senti_analysis.py \
  --do_train=True \
  --do_predict=True \
  --max_seq_length=300 \
  --train_batch_size=24 \
  --learning_rate=2e-5 \
  --num_train_epochs=20.0 \
  --save_checkpoints_steps=1000 \
  --keep_checkpoint_max=1 \
  --save_summary_steps=100 \
  --classifier='BiGRU' \
  --rnn_layers=1 \
  --output_dir='./data/sentiment/output_RoBERTa_large_BiGRU' \
  --bert_config_file='./data/pretrained_model/roberta_zh_L-24_H-1024_A-16/bert_config.json' \
  --vocab_file='./data/pretrained_model/roberta_zh_L-24_H-1024_A-16/vocab.txt' \
  --init_checkpoint='./data/pretrained_model/roberta_zh_L-24_H-1024_A-16/bert_model.ckpt' \
  --train_dir='train_mix_balanced.tsv' \
  --test_dir='test_mix.tsv' \
  --test_checkpoint_path='./data/sentiment/output_RoBERTa_large_BiGRU/model.ckpt-9129'; \

python senti_analysis.py \
  --do_train=True \
  --do_predict=True \
  --max_seq_length=300 \
  --train_batch_size=24 \
  --learning_rate=2e-5 \
  --num_train_epochs=20.0 \
  --save_checkpoints_steps=1000 \
  --keep_checkpoint_max=1 \
  --save_summary_steps=100 \
  --classifier='BiGRU_highway' \
  --rnn_layers=1 \
  --output_dir='./data/sentiment/output_RoBERTa_large_BiGRU_highway' \
  --bert_config_file='./data/pretrained_model/roberta_zh_L-24_H-1024_A-16/bert_config.json' \
  --vocab_file='./data/pretrained_model/roberta_zh_L-24_H-1024_A-16/vocab.txt' \
  --init_checkpoint='./data/pretrained_model/roberta_zh_L-24_H-1024_A-16/bert_model.ckpt' \
  --train_dir='train_mix_balanced.tsv' \
  --test_dir='test_mix.tsv' \
  --test_checkpoint_path='./data/sentiment/output_RoBERTa_large_BiGRU_highway/model.ckpt-9129'; \

python senti_analysis.py \
  --do_train=True \
  --do_predict=True \
  --max_seq_length=300 \
  --train_batch_size=24 \
  --learning_rate=2e-5 \
  --num_train_epochs=20.0 \
  --save_checkpoints_steps=1000 \
  --keep_checkpoint_max=1 \
  --save_summary_steps=100 \
  --classifier='MLP' \
  --rnn_layers=1 \
  --output_dir='./data/sentiment/tdt_RoBERTa_large_MLP' \
  --bert_config_file='./data/pretrained_model/roberta_zh_L-24_H-1024_A-16/bert_config.json' \
  --vocab_file='./data/pretrained_model/roberta_zh_L-24_H-1024_A-16/vocab.txt' \
  --init_checkpoint='./data/pretrained_model/roberta_zh_L-24_H-1024_A-16/bert_model.ckpt' \
  --train_dir='tdt_train_mix_balanced.tsv' \
  --test_dir='tdt_test_mix.tsv' \
  --test_checkpoint_path='./data/sentiment/tdt_RoBERTa_large_MLP/model.ckpt-9129'; \

python senti_analysis.py \
  --do_train=True \
  --do_predict=True \
  --max_seq_length=300 \
  --train_batch_size=24 \
  --learning_rate=2e-5 \
  --num_train_epochs=20.0 \
  --save_checkpoints_steps=1000 \
  --keep_checkpoint_max=1 \
  --save_summary_steps=100 \
  --classifier='BiGRU' \
  --rnn_layers=1 \
  --output_dir='./data/sentiment/tdt_RoBERTa_large_BiGRU' \
  --bert_config_file='./data/pretrained_model/roberta_zh_L-24_H-1024_A-16/bert_config.json' \
  --vocab_file='./data/pretrained_model/roberta_zh_L-24_H-1024_A-16/vocab.txt' \
  --init_checkpoint='./data/pretrained_model/roberta_zh_L-24_H-1024_A-16/bert_model.ckpt' \
  --train_dir='tdt_train_mix_balanced.tsv' \
  --test_dir='tdt_test_mix.tsv' \
  --test_checkpoint_path='./data/sentiment/tdt_RoBERTa_large_BiGRU/model.ckpt-9129'; \

python senti_analysis.py \
  --do_train=True \
  --do_predict=True \
  --max_seq_length=300 \
  --train_batch_size=24 \
  --learning_rate=2e-5 \
  --num_train_epochs=20.0 \
  --save_checkpoints_steps=1000 \
  --keep_checkpoint_max=1 \
  --save_summary_steps=100 \
  --classifier='BiGRU_highway' \
  --rnn_layers=1 \
  --output_dir='./data/sentiment/tdt_RoBERTa_large_BiGRU_highway' \
  --bert_config_file='./data/pretrained_model/roberta_zh_L-24_H-1024_A-16/bert_config.json' \
  --vocab_file='./data/pretrained_model/roberta_zh_L-24_H-1024_A-16/vocab.txt' \
  --init_checkpoint='./data/pretrained_model/roberta_zh_L-24_H-1024_A-16/bert_model.ckpt' \
  --train_dir='tdt_train_mix_balanced.tsv' \
  --test_dir='tdt_test_mix.tsv' \
  --test_checkpoint_path='./data/sentiment/tdt_RoBERTa_large_BiGRU_highway/model.ckpt-9129'; \

:<<annotation
annotation
