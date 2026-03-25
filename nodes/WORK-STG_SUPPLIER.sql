@id("stg-supplier-001")
@nodeType("Stage")
SELECT
    S_SUPPKEY,
    S_NAME,
    S_ADDRESS,
    S_NATIONKEY,
    S_PHONE,
    S_ACCTBAL,
    S_COMMENT
FROM {{ ref("SAMPLE", "SUPPLIER") }}
