In SQL, a common error is caused by implicit type conversion when comparing values of different data types.  For example, comparing a numeric column to a string column can lead to unexpected results, since SQL might attempt to implicitly convert one type to another before performing the comparison. This can lead to incorrect query results.  Consider the following example:

```sql
SELECT * FROM employees WHERE employee_id = '123';
```

If `employee_id` is a numeric column, the string '123' might be implicitly converted to a number, but this conversion could fail if the string contains non-numeric characters.  This can result in unexpected query results, or even unexpected errors.

Another subtle issue is related to `NULL` values. Comparisons involving `NULL` values often yield unexpected results.  For instance, the condition `column_name = NULL` will always return `FALSE`. To properly check for `NULL` values, use the `IS NULL` operator.

```sql
-- Incorrect: Always returns false
SELECT * FROM employees WHERE employee_id = NULL;

-- Correct: Checks for NULL values
SELECT * FROM employees WHERE employee_id IS NULL;
```