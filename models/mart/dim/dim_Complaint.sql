{{ config(
materialized='table'
) }}


SELECT Unique_Key as recordNumber, date(Created_Date) as Date, Complaint_Type, Descriptor as Complaint_Desc, Status
FROM `cis9440-final.311.311_Data`