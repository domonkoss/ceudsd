# CONDITIONAL LOGIC 

## CASE

Form

```
CASE expression
    WHEN test THEN result
    …
    ELSE otherResult
END
```


```
SELECT country_name, continent, country_code, surface_area,
    CASE 
        WHEN surface_area  > 2000000
            THEN 'large'
        WHEN  surface_area > 350000 AND surface_area <2000000
            THEN 'medium'
        ELSE 
            'small'
    END
    AS geosize_group   
FROM  countries
```
