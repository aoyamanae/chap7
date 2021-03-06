SQLコマンド上
select * from product;                                         全部見る
select * from product where name='カシューナッツ';              カシューナッツの行見る
select * from product where name like '%ナッツ%';               ナッツを含む行見る
select * from product where name like ?;                       SQLに含ユーザーが入力する
insert into product values (null, 'バターピーナッツ', 200);      バターピーナッツ追加
insert into product values (null, ?, ?);                       SQLに含ユーザーが入力する

update product set name='高級松の実', price=900 where id=1;     1行目のデータの更新
delete from product where id=1 ;                               1行目のデータを削除

絞り込み
select * from product where price<200;                         200円以下のもの
select * from product where name like '%ナッツ%' and price<200;    

並べ替え
select * from product order by price;                          価格安い順 昇順
select * from product order by price desc;                     価格高い順 降順
select * from product where name like '%ナッツ%' order by price;  