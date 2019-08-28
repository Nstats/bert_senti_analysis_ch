'''
Some statistics on training and testing dataset.

1.title & context length quantile statistics. use pandas: df.quantile(q=0.5)
2.Label count.
'''

import pandas as pd
import numpy as np

train_tsv_title_dir = './data/sentiment/train_title.tsv'
train_tsv_content_dir = './data/sentiment/train_content.tsv'
train_tsv_mix_dir = './data/sentiment/train_mix.tsv'

test_tsv_title_dir = './data/sentiment/test_title.tsv'
test_tsv_content_dir = './data/sentiment/test_content.tsv'
test_tsv_mix_dir = './data/sentiment/test_mix.tsv'

#############################################################################################

print('for training set')
pd_train_title = pd.DataFrame(pd.read_csv(train_tsv_title_dir, sep='\t', header=None))
pd_train_title.columns = ['label', 'id', 'title']
pd_train_content = pd.DataFrame(pd.read_csv(train_tsv_content_dir, sep='\t', header=None))
pd_train_content.columns = ['label', 'id', 'content']

train_title = pd_train_title['title']
train_content = pd_train_title['content']
train_label = pd_train_content['id']

