select 'Table Columns Compared,All Data DB Owner is &2,  Adding Data DB Owner is  &1' from dual;
select atcol.owner,
       atcol.TABLE_NAME,
       atcol.COLUMN_NAME,
       atcol.DATA_TYPE,
       atcol.DATA_LENGTH,
       atcol.DATA_PRECISION,
       atcol.NULLABLE
  from all_tab_columns atcol
 where atcol.owner = '&1' and atcol.TABLE_NAME like '&3%'
   and (atcol.TABLE_NAME || atcol.COLUMN_NAME || atcol.DATA_TYPE ||
       atcol.DATA_LENGTH || atcol.DATA_PRECISION || atcol.NULLABLE) not in
       (select comp_col.TABLE_NAME || comp_col.COLUMN_NAME ||
               comp_col.DATA_TYPE || comp_col.DATA_LENGTH ||
               comp_col.DATA_PRECISION || comp_col.NULLABLE
          from all_tab_columns comp_col
         where comp_col.owner = '&2' and  comp_col.TABLE_NAME like '&3%')
 order by atcol.TABLE_NAME;
