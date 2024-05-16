SELECT 

    ID,
    ID_USER,
    DS_STATUS,
    DS_TEXT,
    DS_SOURCE
    DT_UPDATED_AT,
    DS_TYPE,
    DT_CREATED_AT,
    DS_DELETED,
    DS_USED
FROM `uol_projects.gold_cats_project.tb_cats_facts_analytics`
    WHERE EXTRACT(YEAR FROM DT_UPDATED_AT) = 2020
    AND EXTRACT(MONTH FROM DT_UPDATED_AT) = 8;
