{{ config(
materialized='table'
) }}


SELECT Unique_Key as recordNumber, date(Created_Date) as Date, Complaint_Type, Descriptor as Complaint_Desc, Resolution_Description, Status


FROM {{ ref('311_complaint_data')}}
