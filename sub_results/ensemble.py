import pandas as pd
import numpy as np

id_dir = '0.7936_wwm_ext.csv'

original_dir = '0.7887_original_prob.tsv'
wwm_dir = '0.7936_wwm_ext_prob.tsv'
rmrb_b_dir = '0.7940_rmrb_balanced_prob.tsv'
wwm_b_dir = '0.7976_wwm_ext_balanced_prob.tsv'
RoBERTa_MLP_b_dir = '0.7863_RoBERTa_MLP_balanced_prob.tsv'
wwm_b_BiGRU_dir = '0.7959_wwm_ext_BiGRU_prob.tsv'

original = pd.DataFrame(pd.read_csv(original_dir, sep='\t', header=None))
original.columns = ['0','1','2']
original_0 = original['0']
original_1 = original['1']
original_2 = original['2']

RoBERTa_MLP_b = pd.DataFrame(pd.read_csv(RoBERTa_MLP_b_dir, sep='\t', header=None))
RoBERTa_MLP_b.columns = ['0','1','2']
RoBERTa_MLP_b_0 = RoBERTa_MLP_b['0']
RoBERTa_MLP_b_1 = RoBERTa_MLP_b['1']
RoBERTa_MLP_b_2 = RoBERTa_MLP_b['2']

wwm_b = pd.DataFrame(pd.read_csv(wwm_b_dir, sep='\t', header=None))
wwm_b.columns = ['0','1','2']
wwm_b_0 = wwm_b['0']
wwm_b_1 = wwm_b['1']
wwm_b_2 = wwm_b['2']

rmrb_b = pd.DataFrame(pd.read_csv(rmrb_b_dir, sep='\t', header=None))
rmrb_b.columns = ['0','1','2']
rmrb_b_0 = rmrb_b['0']
rmrb_b_1 = rmrb_b['1']
rmrb_b_2 = rmrb_b['2']

wwm_b_BiGRU = pd.DataFrame(pd.read_csv(wwm_b_BiGRU_dir, sep='\t', header=None))
wwm_b_BiGRU.columns = ['0', '1', '2']
wwm_b_BiGRU_0 = wwm_b_BiGRU['0']
wwm_b_BiGRU_1 = wwm_b_BiGRU['1']
wwm_b_BiGRU_2 = wwm_b_BiGRU['2']

final_0 = (rmrb_b_0+wwm_b_0+wwm_b_BiGRU_0)/3.0
final_1 = (rmrb_b_0+wwm_b_1+wwm_b_BiGRU_1)/3.0
final_2 = (rmrb_b_0+wwm_b_2+wwm_b_BiGRU_2)/3.0

final = pd.concat([final_0, final_1, final_2], axis=1)
label = pd.DataFrame(np.argmax(final.as_matrix(), axis=1), columns=['label'])
id = pd.DataFrame(pd.read_csv(id_dir, sep=','))['id']

df = pd.concat([id, label], axis=1)
df_prob = pd.concat([id, final], axis=1)
df.to_csv('submission.csv', index=False)
df_prob.to_csv('probs.csv', sep='\t', index=False)
