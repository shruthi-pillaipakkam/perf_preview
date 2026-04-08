@id("9f746116-230a-4478-8202-c20e3ba4a84b")
@nodeType("49")
SELECT nation.n_nationkey
FROM {{ ref('SAMPLE', 'NATION') }}