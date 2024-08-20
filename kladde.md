# Kladde / Notes for dbt Case Study - NW
Author: David Maas 
Date: 19.08.2024

## Things to get started

```shell
dbt run --help

#Set project directory correctly
export DBT_PROFILES_DIR=/workspaces/<mydir>/transformation
export DBT_PROJECT_DIR=/workspaces/<mydir>/transformation

#Parse dbt project
dbt parse

#Generate docs
dbt docs generate

#Serve docs on 8080
dbt docs serve

```

## Data Exploration

### Account

<details>
    <summary>Info</summary>

| Attribute    | Value |
| :----- | :-- |
| Schema | <i>raw</i> |
</details>

<details>
    <summary>Details</summary>

| Column | Data Type | Constraints | Tests | More? | Comment / Remark |
|:------ | :-------- | :---------- | :---- | :---- | :--------------- |
| id     | varchar   | none        | not_null, unique| |              |  
</details>


## ToDos
- Do more exploration

## Done

- stg_sqls
    - Added custom test


