# Markdown cheatsheet
## Headers
    # H1
    ## H2
    ### H3

## TOC

## Table of Contents

	1. [Header1](#H1)
	2. [Header2](#H2)
	
1. [Header1](#H1)
2. [Header2](#H2)

## Formatting

	*italic*
	**bold**

*italic*

**bold**

## Lists
### Unordered lists
	*first level
	*first level
		*second level
* first level
* first level
	* second level

### Ordered lists
	1. first level
	2. first level
		1. second level
1. first level
2. first level
	1. second level

## Links
	[link](http://google.dk)
[http://google.dk](http://google.dk)

## Images
	![Google logo](https://www.google.dk/images/srpr/logo11w.png)
![Google logo](https://www.google.dk/images/srpr/logo11w.png)

## Quotes
	> Quote
> Quote

## Code
### Single line
	`<code>`
 `<code>` 

### Blocks
> Start each line in block with 4 spaces or tab

    public void HelloWorld()
	{
		Console.WriteLine("Hello world!")
	}

For Github flavored Markdown you get syntax highlighting by using 3 backticks (`) and specifying the language

	```c# 
	 var x = 4;
	```

```c# 
 var x = 4;
```

See all [languages supported](https://github.com/github/linguist/blob/master/lib/linguist/languages.yml)

## Raw html
	<span style="color: red">Red text</span>
<span style="color: red">Red text</span>
