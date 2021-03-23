# Apache Spark
> Cheatsheet for Apache Spark scala interface

## Loading data

```scala
val df = spark.read
        .format("csv|json") 
        .option("delimiter", ";|\t")
        .option("encoding", "UTF-8") // Utf-8 is the default encoding
        .option("header", true) // specify if a csv file includes a header row.
        .load("[filePath]")
```

## Writing data
```scala
df.limit(50) // optionally limit the number of rows to write
  .write
  .format("csv")
  .save("[filePath]")
```

## Displaying data
```scala
df.show(10) // displays content of first 10 rows
```

## Spark Optimizations

Logical Plan -> Analyzed Logical Plan -> Optimized Logical Plan-> Physical Plan

### Logical optimizations

```scala
// (dumb) example where the same filter is applied twice
val unoptimizedDf = df
        .filter(col("columnName") === "value")
        .filter(col("columnName") === "value")

df.explain(true) // prints the execution plan for the dataframe
//
// Observe how the optimized plan adds a null check and removes the dublicate filter
//
//  == Parsed Logical Plan ==
//  'Filter ('titleType = short)
//  +- Filter (titleType#17 = short)
//  ...
//  
//  == Optimized Logical Plan ==
//  Filter (isnotnull(titleType#17) AND (titleType#17 = short))
//  ...
```

### Predicate pushdown
Where filters are pushed to the datasource.



```scala
// using a sql server as datasource, 
// Spark will push any possible predicates to the request to the database
val dataframe = spark
.read
.jdbc(url=..., table="tableName", ...)
.filter(col("columnName") ==  "value") // filter predicate will be included in the database query.
```

## Imdb example

> Download data from [imdb](https://www.imdb.com/interfaces/)

### TODO
* Create dataframe with only relevant ratings before joining
* Only join needed columns

```scala
val titles = spark.read
        .format("csv") 
        .option("delimiter", "\t")
        .option("header", true) 
        .load("c:/data/imdb/titles.basics.tsv")

val ratings = spark.read
        .format("csv") 
        .option("delimiter", "\t")
        .option("header", true) 
        .load("c:/data/imdb/titles.ratings.tsv")

val titleWithRatingsDf = ratings
    .join(titles, ratings.col("tconst") === titles.col("tconst"))

// Display top 10 movies after 2000 with more than 100000 votes

titleWithRatingsDf
    .where(col("averageRating") > 7)
    .where(col("numVotes") > 100000)
    .where(col("startYear") > 2000)
    .where(col("titleType") === "movie")
    .orderBy(desc("averageRating"))
    .show(10)
```