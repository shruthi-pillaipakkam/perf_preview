@id("0b60acd1-32c8-4c6b-8447-59e618fcb108")
@nodeType("53")
@materializationType('table')
@insertStrategy("TRUNCATE")
@preSQL('select 1')
@postSQL('select 2')
@testsEnabled
@tests("select * from {{ this }} where C_NAME like 'JEFF' ", "select * from {{ this }} where C_NAME like 'Cust%'")
SELECT
     "C_CUSTKEY" AS "C_CUSTKEY",
     "C_NAME" AS "C_NAME",
     "C_ADDRESS" AS "C_ADDRESS",
     "C_NATIONKEY" AS "C_NATIONKEY",
     "C_PHONE" AS "C_PHONE",
     "C_ACCTBAL" AS "C_ACCTBAL",
     "C_MKTSEGMENT" AS "C_MKTSEGMENT",
     "C_COMMENT" AS "C_COMMENT"
FROM {{ ref('SAMPLE', 'CUSTOMER') }} "CUSTOMER"