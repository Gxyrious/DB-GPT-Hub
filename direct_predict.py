import os
from tqdm import tqdm
import sqlite3

# bird
# predict_path = '/root/autodl-tmp/workplace/GraduationProject/DB-GPT-Hub/pred_sql_bird.sql'
# gold_path = '/root/autodl-tmp/workplace/dataset/bird/dev_gold.sql'
# db_root = '/root/autodl-tmp/workplace/dataset/bird/database'

# spider
predict_path = '/root/autodl-tmp/workplace/GraduationProject/DB-GPT-Hub/pred_sql_spider.sql'
gold_path = '/root/autodl-tmp/workplace/dataset/spider/dev_gold.sql'
db_root = '/root/autodl-tmp/workplace/dataset/spider/database'

# fiben
predict_path = '/root/autodl-tmp/workplace/GraduationProject/DB-GPT-Hub/pred_sql_fiben_enhanced.sql'
gold_path = '/root/autodl-tmp/workplace/dataset/fiben/dev_gold.sql'
db_root = '/root/autodl-tmp/workplace/dataset/fiben/database'

def get_sqlite_result(sqls, db_path):
    conn = sqlite3.connect(db_path)
    cursor = conn.cursor()
    results = []
    for idx, sql in enumerate(sqls):
        try:
            # import pdb; pdb.set_trace()
            result = cursor.execute(sql)
            results.append(set(result))
        except Exception as err:
            print(idx, err)
            result = []
            results.append(set(result))
    return results

if __name__ == '__main__':
    acc_n, total_n = 0, 0
    with open(predict_path) as pf, open(gold_path) as gf:
        for idx, (p, g_w_t) in tqdm(enumerate(zip(pf, gf)), total=52):
            p, g_w_t = p.strip(), g_w_t.strip()
            g, t = g_w_t.split('\t')
            db_path = os.path.join(db_root, t, t + '.sqlite')
            result = get_sqlite_result([p, g], db_path)
            assert len(result) == 2
            total_n += 1
            if result[0] == result[1]:
                # import pdb; pdb.set_trace()
                acc_n += 1
    print(f"acc: {acc_n / total_n}")
            
    