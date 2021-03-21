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

## Imdb example

> Download data from [imdb](https://www.imdb.com/interfaces/)

```scala
val titles = spark.read
        .format("csv") 
        .option("delimiter", ";|\t")
        .option("header", true) 
        .load("c:/data/imdb/titles.basics.tsv")

val ratings = spark.read
        .format("csv") 
        .option("delimiter", ";|\t")
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