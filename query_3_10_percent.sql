bq query \
--external_table_definition=cat_facts::cat_facts.csv \
'SELECT 
    ID,
    ID_USER,
    DS_STATUS,
    DS_TEXT,
    DS_SOURCE,
    DT_UPDATED_AT,
    DS_TYPE,
    DT_CREATED_AT,
    DS_DELETED,
    DS_USED
FROM cat_facts
TABLESAMPLE SYSTEM (10 PERCENT)';
