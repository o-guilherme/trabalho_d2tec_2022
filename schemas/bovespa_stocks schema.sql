CREATE EXTERNAL TABLE `bovespa_stocks`(
  `index` bigint COMMENT '', 
  `calendar_date` date COMMENT '', 
  `symbol` string COMMENT '', 
  `adj close` double COMMENT '', 
  `close` double COMMENT '', 
  `high` double COMMENT '', 
  `low` double COMMENT '', 
  `open` double COMMENT '', 
  `volume` double COMMENT '')
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY ',' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  's3://trabalho-ifsp-campinas-d2tec-2022-2/datasets/bovespa_stocks/'
TBLPROPERTIES (
  'CrawlerSchemaDeserializerVersion'='1.0', 
  'CrawlerSchemaSerializerVersion'='1.0', 
  'UPDATED_BY_CRAWLER'='d2tec-crawler', 
  'areColumnsQuoted'='false', 
  'averageRecordSize'='95', 
  'classification'='csv', 
  'columnsOrdered'='true', 
  'compressionType'='none', 
  'delimiter'=',', 
  'objectCount'='1', 
  'recordCount'='973384', 
  'sizeKey'='92471569', 
  'skip.header.line.count'='1', 
  'typeOfData'='file')