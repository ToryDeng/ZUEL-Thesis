import numpy as np
import pandas as pd

df = pd.DataFrame(data=[[1, 2], [3, 4]], index=['a', 'b'])
print(df)
ss = pd.Series([5, 6, 7], index=['b', 'a', 'c'])
print(ss)
df.loc[:, '1'] = ss
print(df)
