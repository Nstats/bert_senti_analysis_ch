#!/usr/bin/env bash
python senti_analysis.py \
  --do_train=True \
  --max_seq_length=256 \
  --train_batch_size=72 \
  --learning_rate=2e-5 \
  --num_train_epochs=100.0 \
  --save_checkpoints_steps=5000 \
  --keep_checkpoint_max=3 \
  --save_summary_steps=100 \
  --output_dir='./data/sentiment/output' \
  --bert_config_file='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/bert_config.json' \
  --vocab_file='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/vocab.txt' \
  --init_checkpoint='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/bert_model.ckpt' \
  --train_dir='train_mix.tsv' \

:<<annotation
python senti_analysis.py \
  --do_train=True \
  --max_seq_length=64 \
  --train_batch_size=128 \
  --learning_rate=2e-5 \
  --num_train_epochs=100.0 \
  --save_checkpoints_steps=5000 \
  --keep_checkpoint_max=3 \
  --save_summary_steps=100 \
  --output_dir='./data/sentiment/output64_128' \
  --bert_config_file='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/bert_config.json' \
  --vocab_file='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/vocab.txt' \
  --init_checkpoint='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/bert_model.ckpt' \
  --train_dir='train_mix.tsv'; \

python senti_analysis.py \
  --do_train=True \
  --max_seq_length=128 \
  --train_batch_size=32 \
  --learning_rate=2e-5 \
  --num_train_epochs=100.0 \
  --save_checkpoints_steps=5000 \
  --keep_checkpoint_max=3 \
  --save_summary_steps=100 \
  --output_dir='./data/sentiment/output128_32' \
  --bert_config_file='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/bert_config.json' \
  --vocab_file='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/vocab.txt' \
  --init_checkpoint='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/bert_model.ckpt' \
  --train_dir='train_mix.tsv'; \

python senti_analysis.py \
  --do_train=True \
  --max_seq_length=128 \
  --train_batch_size=64 \
  --learning_rate=2e-5 \
  --num_train_epochs=100.0 \
  --save_checkpoints_steps=5000 \
  --keep_checkpoint_max=3 \
  --save_summary_steps=100 \
  --output_dir='./data/sentiment/output128_64' \
  --bert_config_file='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/bert_config.json' \
  --vocab_file='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/vocab.txt' \
  --init_checkpoint='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/bert_model.ckpt' \
  --train_dir='train_mix.tsv'; \

python senti_analysis.py \
  --do_train=True \
  --max_seq_length=256 \
  --train_batch_size=16 \
  --learning_rate=2e-5 \
  --num_train_epochs=100.0 \
  --save_checkpoints_steps=5000 \
  --keep_checkpoint_max=3 \
  --save_summary_steps=100 \
  --output_dir='./data/sentiment/output256_16' \
  --bert_config_file='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/bert_config.json' \
  --vocab_file='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/vocab.txt' \
  --init_checkpoint='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/bert_model.ckpt' \
  --train_dir='train_mix.tsv'; \

python senti_analysis.py \
  --do_train=True \
  --max_seq_length=256 \
  --train_batch_size=32 \
  --learning_rate=2e-5 \
  --num_train_epochs=100.0 \
  --save_checkpoints_steps=5000 \
  --keep_checkpoint_max=3 \
  --save_summary_steps=100 \
  --output_dir='./data/sentiment/output256_32' \
  --bert_config_file='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/bert_config.json' \
  --vocab_file='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/vocab.txt' \
  --init_checkpoint='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/bert_model.ckpt' \
  --train_dir='train_mix.tsv'; \

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
  --train_dir='train_mix.tsv'; \

python senti_analysis.py \
  --do_train=True \
  --max_seq_length=512 \
  --train_batch_size=32 \
  --learning_rate=2e-5 \
  --num_train_epochs=100.0 \
  --save_checkpoints_steps=5000 \
  --keep_checkpoint_max=3 \
  --save_summary_steps=100 \
  --output_dir='./data/sentiment/output512_32' \
  --bert_config_file='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/bert_config.json' \
  --vocab_file='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/vocab.txt' \
  --init_checkpoint='./data/pretrained_model/chinese_wwm_ext_L-12_H-768_A-12/bert_model.ckpt' \
  --train_dir='train_mix.tsv' \
annotation
