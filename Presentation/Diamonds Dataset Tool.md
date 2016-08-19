Diamonds Dataset Tool
========================================================
author: Scott Keefer
date: 8/19/2016
autosize: true

Tools Used for Development
========================================================

This application will allow you to explore the **Diamonds** dataset included in the *ggplot2* package available for RStudio.

- Shiny has been used to create this application.

- R-Presentation has been used to develop this presentation pitch.

Diamonds Dataset Application
========================================================

The Diamonds Dataset application will allow you to compare the carat size to the quality of the cut. In addition, you will be able to create individuals graphs in one view on all other fields, including:

- Clarity
- Depth
- Table
- Price

Diamonds Dataset
========================================================

This dataset is included with the popular ggplot2 package available for RStudio. This particular dataset has several fields which can be used to analyze the data in intriguing ways.

The source code for the tool is available on [GitHub](https://github.com/zonda600/DevelopingDataProducts/tree/master/Shiny_App)

Diamonds Dataset Example
========================================================

```r
library(ggplot2)
head(diamonds)
```

```
  carat       cut color clarity depth table price    x    y    z
1  0.23     Ideal     E     SI2  61.5    55   326 3.95 3.98 2.43
2  0.21   Premium     E     SI1  59.8    61   326 3.89 3.84 2.31
3  0.23      Good     E     VS1  56.9    65   327 4.05 4.07 2.31
4  0.29   Premium     I     VS2  62.4    58   334 4.20 4.23 2.63
5  0.31      Good     J     SI2  63.3    58   335 4.34 4.35 2.75
6  0.24 Very Good     J    VVS2  62.8    57   336 3.94 3.96 2.48
```
