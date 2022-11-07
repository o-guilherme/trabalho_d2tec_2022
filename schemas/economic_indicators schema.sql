CREATE EXTERNAL TABLE `economic_indicators`(
  `index` bigint COMMENT '', 
  `calendar_date` date COMMENT '', 
  `taxa selic` double COMMENT '', 
  `ipca` double COMMENT '', 
  `igp-m` double COMMENT '', 
  `inpc` double COMMENT '', 
  `desemprego pnadc` double COMMENT '')
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY ',' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  's3://trabalho-ifsp-campinas-d2tec-2022-2/datasets/economic_indicators/'
TBLPROPERTIES (
  'CrawlerSchemaDeserializerVersion'='1.0', 
  'CrawlerSchemaSerializerVersion'='1.0', 
  'UPDATED_BY_CRAWLER'='d2tec-crawler', 
  'areColumnsQuoted'='false', 
  'averageRecordSize'='42', 
  'classification'='csv', 
  'columnsOrdered'='true', 
  'compressionType'='none', 
  'delimiter'=',', 
  'objectCount'='1', 
  'recordCount'='3855', 
  'sizeKey'='161949', 
  'skip.header.line.count'='1', 
  'typeOfData'='file')