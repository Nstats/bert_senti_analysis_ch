'''
Cleaning training dataset and turn original training set to .tsv file which is BERT needed.

we get:
    train_title.tsv: training set with only title only.
    train_content.tsv: training set with content only.
    train_mix.tsv: training set with both title and content.
and:
    test_title.tsv
    test_content.tsv
    test_mix.tsv
'''
import pandas as pd

dev_size = 1000

original_train_content_dir = './data/sentiment/original_train_test/Train_DataSet.csv'
original_train_title_dir = './data/sentiment/original_train_test/Train_DataSet_Label.csv'
original_test_dir = './data/sentiment/original_train_test/Test_DataSet.csv'

train_tsv_title_dir = './data/sentiment/train_title.tsv'
train_tsv_content_dir = './data/sentiment/train_content.tsv'
train_tsv_mix_dir = './data/sentiment/train_mix.tsv'

test_tsv_title_dir = './data/sentiment/test_title.tsv'
test_tsv_content_dir = './data/sentiment/test_content.tsv'
test_tsv_mix_dir = './data/sentiment/test_mix.tsv'


if __name__ == '__main__':
    # now preparing our training set.
    train_content_df = pd.DataFrame(pd.read_csv(original_train_content_dir))
    train_title_df = pd.DataFrame(pd.read_csv(original_train_title_dir))
    # train_content_df.shape # (7345, 3)
    # train_title_df # (7355, 2)
    train_df = pd.merge(train_content_df, train_title_df, on='id')
    # train_df.shape # (7340, 4)
    id = train_df['id']
    title = train_df['title']
    content = train_df['content']
    label = train_df['label']

    fin_title = open(train_tsv_title_dir, 'w', encoding='utf-8')
    fin_content = open(train_tsv_content_dir, 'w', encoding='utf-8')
    fin_mix = open(train_tsv_mix_dir, 'w', encoding='utf-8')
    for i in range(train_df.shape[0]):
        title_clean = str(title[i]).replace('\n', ' ', 10000).replace('\t', ' ', 10000)
        content_clean = str(content[i]).replace('\n', ' ', 10000).replace('\t', ' ', 10000)
        fin_title.write(str(label[i])+'\t'+str(id[i])+'\t'+str(title_clean)+'\n')
        fin_content.write(str(label[i])+'\t'+str(id[i])+'\t'+str(content_clean)+'\n')
        fin_mix.write(str(label[i])+'\t'+str(id[i])+'\t'+str(title_clean)+str(content_clean)+'\n')
    fin_title.close()
    fin_content.close()
    fin_mix.close()

    ############################################################################################

    # now preparing our test set.
    test_df = pd.DataFrame(pd.read_csv(original_test_dir))
    # test_df.shape # (7356, 3)
    id_test = test_df['id']
    title_test = test_df['title']
    content_test = test_df['content']

    fin_test_title = open(test_tsv_title_dir, 'w', encoding='utf-8')
    fin_test_content = open(test_tsv_content_dir, 'w', encoding='utf-8')
    fin_test_mix = open(test_tsv_mix_dir, 'w', encoding='utf-8')
    for i in range(test_df.shape[0]):
        title_clean = str(title_test[i]).replace('\n', ' ', 10000).replace('\t', ' ', 10000)
        content_clean = str(content_test[i]).replace('\n', ' ', 10000).replace('\t', ' ', 10000)
        fin_test_title.write(''+'\t'+str(id_test[i])+'\t'+str(title_clean)+'\n')
        fin_test_content.write(''+'\t'+str(id_test[i])+'\t'+str(content_clean)+'\n')
        fin_test_mix.write(''+'\t'+str(id_test[i])+'\t'+str(title_clean)+str(content_clean)+'\n')
    fin_test_title.close()
    fin_test_content.close()
    fin_test_mix.close()
