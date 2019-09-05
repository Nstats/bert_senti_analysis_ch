#!/usr/bin/env bash
:<<annotation
python senti_analysis.py \
  --do_train=True \
  --max_seq_length=300 \
  --train_batch_size=24 \
  --learning_rate=2e-5 \
  --num_train_epochs=40.0 \
  --save_checkpoints_steps=1000 \
  --keep_checkpoint_max=3 \
  --save_summary_steps=100 \
  --classifier='MLP' \
  --rnn_layers=1 \
  --output_dir='./data/sentiment/output_wwm_ext_bs24' \
  --bert_config_file='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/bert_config.json' \
  --vocab_file='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/vocab.txt' \
  --init_checkpoint='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/bert_model.ckpt' \
  --train_dir='train_mix_balanced.tsv'; \

python senti_analysis.py \
  --do_train=True \
  --max_seq_length=300 \
  --train_batch_size=24 \
  --learning_rate=2e-5 \
  --num_train_epochs=40.0 \
  --save_checkpoints_steps=1000 \
  --keep_checkpoint_max=3 \
  --save_summary_steps=100 \
  --classifier='BiGRU' \
  --rnn_layers=1 \
  --output_dir='./data/sentiment/output_wwm_ext_BiGRU' \
  --bert_config_file='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/bert_config.json' \
  --vocab_file='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/vocab.txt' \
  --init_checkpoint='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/bert_model.ckpt' \
  --train_dir='train_mix_balanced.tsv'; \

python senti_analysis.py \
  --do_train=True \
  --max_seq_length=300 \
  --train_batch_size=24 \
  --learning_rate=2e-5 \
  --num_train_epochs=40.0 \
  --save_checkpoints_steps=1000 \
  --keep_checkpoint_max=3 \
  --save_summary_steps=100 \
  --classifier='BiGRU' \
  --rnn_layers=2 \
  --output_dir='./data/sentiment/output_wwm_ext_2lBiGRU' \
  --bert_config_file='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/bert_config.json' \
  --vocab_file='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/vocab.txt' \
  --init_checkpoint='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/bert_model.ckpt' \
  --train_dir='train_mix_balanced.tsv'; \
annotation
:<<annotation
now predict
annotation

python senti_analysis.py \
  --do_predict=True \
  --max_seq_length=300 \
  --predict_batch_size=512 \
  --classifier='MLP' \
  --test_dir='test_mix.tsv' \
  --output_dir='./data/sentiment/output_wwm_ext_bs24' \
  --test_checkpoint_path='./data/sentiment/output_wwm_ext_bs24/model.ckpt-18258' \
  --bert_config_file='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/bert_config.json' \
  --vocab_file='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/vocab.txt' \
  --init_checkpoint='./data/pretrained_model/chinese_L-12_H-768_A-12/bert_model.ckpt'; \
:<<annotation
python senti_analysis.py \
  --do_predict=True \
  --max_seq_length=300 \
  --predict_batch_size=512 \
  --classifier='BiGRU' \
  --test_dir='test_mix.tsv' \
  --output_dir='./data/sentiment/output_wwm_ext_BiGRU' \
  --test_checkpoint_path='./data/sentiment/output_wwm_ext_BiGRU/model.ckpt-18258' \
  --bert_config_file='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/bert_config.json' \
  --vocab_file='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/vocab.txt' \
  --init_checkpoint='./data/pretrained_model/chinese_L-12_H-768_A-12/bert_model.ckpt'; \

python senti_analysis.py \
  --do_predict=True \
  --max_seq_length=300 \
  --predict_batch_size=512 \
  --classifier='2lBiGRU' \
  --test_dir='test_mix.tsv' \
  --output_dir='./data/sentiment/output_wwm_ext_2lBiGRU' \
  --test_checkpoint_path='./data/sentiment/output_wwm_ext_2lBiGRU/model.ckpt-18258' \
  --bert_config_file='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/bert_config.json' \
  --vocab_file='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/vocab.txt' \
  --init_checkpoint='./data/pretrained_model/chinese_L-12_H-768_A-12/bert_model.ckpt'; \
annotation
:<<annotation
python senti_analysis.py \
  --do_train=True \
  --max_seq_length=300 \
  --train_batch_size=56 \
  --learning_rate=2e-5 \
  --num_train_epochs=50.0 \
  --save_checkpoints_steps=1000 \
  --keep_checkpoint_max=5 \
  --save_summary_steps=100 \
  --classifier='MLP' \
  --rnn_layers=1 \
  --output_dir='./data/sentiment/output_bert_original_balanced' \
  --bert_config_file='./data/pretrained_model/chinese_L-12_H-768_A-12/bert_config.json' \
  --vocab_file='./data/pretrained_model/chinese_L-12_H-768_A-12/vocab.txt' \
  --init_checkpoint='./data/pretrained_model/chinese_L-12_H-768_A-12/bert_model.ckpt' \
  --train_dir='train_mix_balanced.tsv'; \

python senti_analysis.py \
  --do_train=True \
  --max_seq_length=300 \
  --train_batch_size=56 \
  --learning_rate=2e-5 \
  --num_train_epochs=50.0 \
  --save_checkpoints_steps=1000 \
  --keep_checkpoint_max=5 \
  --save_summary_steps=100 \
  --classifier='MLP' \
  --rnn_layers=1 \
  --output_dir='./data/sentiment/output_wwm_ext_balanced' \
  --bert_config_file='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/bert_config.json' \
  --vocab_file='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/vocab.txt' \
  --init_checkpoint='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/bert_model.ckpt' \
  --train_dir='train_mix_balanced.tsv'; \

python senti_analysis.py \
  --do_train=True \
  --max_seq_length=300 \
  --train_batch_size=56 \
  --learning_rate=2e-5 \
  --num_train_epochs=50.0 \
  --save_checkpoints_steps=1000 \
  --keep_checkpoint_max=5 \
  --save_summary_steps=100 \
  --classifier='MLP' \
  --rnn_layers=1 \
  --output_dir='./data/sentiment/output_rmrb_balanced' \
  --bert_config_file='./data/pretrained_model/bert_ch_rmrb/bert_config.json' \
  --vocab_file='./data/pretrained_model/bert_ch_rmrb/vocab.txt' \
  --init_checkpoint='./data/pretrained_model/bert_ch_rmrb/bert_model.ckpt' \
  --train_dir='train_mix_balanced.tsv' \

:<<annotation
python senti_analysis.py \
  --do_train=True \
  --max_seq_length=256 \
  --train_batch_size=64 \
  --learning_rate=2e-5 \
  --num_train_epochs=100.0 \
  --save_checkpoints_steps=5000 \
  --keep_checkpoint_max=3 \
  --save_summary_steps=100 \
  --output_dir='./data/sentiment/output256_64' \
  --bert_config_file='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/bert_config.json' \
  --vocab_file='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/vocab.txt' \
  --init_checkpoint='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/bert_model.ckpt' \
  --train_dir='train_mix.tsv'; \

python senti_analysis.py \
  --do_train=True \
  --max_seq_length=512 \
  --train_batch_size=16 \
  --learning_rate=2e-5 \
  --num_train_epochs=100.0 \
  --save_checkpoints_steps=5000 \
  --keep_checkpoint_max=3 \
  --save_summary_steps=100 \
  --output_dir='./data/sentiment/output512_16' \
  --bert_config_file='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/bert_config.json' \
  --vocab_file='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/vocab.txt' \
  --init_checkpoint='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/bert_model.ckpt' \
  --train_dir='train_mix.tsv' \

:<<annotation
annotation
