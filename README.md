<!-- README.md is generated from README.Rmd. Please edit that file -->

OpenCaseStudies
===============

[![Build
Status](https://travis-ci.org/opencasestudies/ocs-bp-co2-emissions.svg?branch=master)](https://travis-ci.org/opencasestudies/ocs-bp-co2-emissions)

### Important links

-   HTML:
    <a href="https://www.opencasestudies.org/ocs-bp-co2-emissions" class="uri">https://www.opencasestudies.org/ocs-bp-co2-emissions</a>
-   GitHub:
    <a href="https://github.com//opencasestudies/ocs-bp-co2-emissions" class="uri">https://github.com//opencasestudies/ocs-bp-co2-emissions</a>
-   Bloomberg American Health Initiative:
    <a href="https://americanhealth.jhu.edu/open-case-studies" class="uri">https://americanhealth.jhu.edu/open-case-studies</a>

### Disclaimer

The purpose of the [Open Case
Studies](https://opencasestudies.github.io) project is **to demonstrate
the use of various data science methods, tools, and software in the
context of messy, real-world data**. A given case study does not cover
all aspects of the research process, is not claiming to be the most
appropriate way to analyze a given dataset, and should not be used in
the context of making policy decisions without external consultation
from scientific experts.

### License

This case study is part of the
[OpenCaseStudies](https://opencasestudies.github.io) project. This work
is licensed under the Creative Commons Attribution-NonCommercial 3.0
([CC BY-NC 3.0](https://creativecommons.org/licenses/by-nc/3.0/us/))
United States License.

### Citation

To cite this case study:

Wright, Carrie and Ontiveros, Michael and Jager, Leah and Taub, Margaret
and Hicks, Stephanie. (2020).
<a href="https://github.com/opencasestudies/ocs-bp-co2-emissions" class="uri">https://github.com/opencasestudies/ocs-bp-co2-emissions</a>.
Exploring CO2 emissions across time (Version v1.0.0).

### Acknowledgments

We would like to acknowledge [Megan
Latshaw](https://www.jhsph.edu/faculty/directory/profile/1708/megan-weil-latshaw)
for assisting in framing the major direction of the case study.

We would also like to acknowledge the [Bloomberg American Health
Initiative](https://americanhealth.jhu.edu/) for funding this work.

### Title

Exploring CO2 emissions across time

### Motivation

C02 emissions have been on the rise for many countries. CO2 emissions
trap heat in the atmosphere which can lead to increased global
temperatures which can cause vast influences on the health of people and
our planet. In this case study we explore national differences in CO2
emissions overtime. We evaluate the relationship between CO2 emissions
and average annual temperatures in the US. And we also examine the
relationship between emissions and natural disasters, as well as other
factors that may influence, be influenced by CO2 emissions.

### Motivating questions

1.  How have global CO2 emission rates changed over time? In particular
    for the US, and how does the US compare to other countries?
2.  Are CO2 emissions in the US, global temperatures, and natural
    disaster rates in the US associated?

### Data

In this case study we will be using data related to CO2 emissions, as
well as other data that may influence, be influenced or relate to CO2
emissions.

This case study uses data from
<a href="https://www.gapminder.org/data/" target="_blank">Gapminder</a>
that was originally obtained from the
<a href="https://www.worldbank.org/en/what-we-do" target="_blank">World Bank</a>.

In addition, we will use some data that is specific to the United States
from the
<a href="https://www.noaa.gov/" target="_blank">National Oceanic and Atmospheric Administration (NOAA)</a>,
which is an agency that collects weather and climate data.

#### Learning Objectives

The skills, methods, and concepts that students will be familiar with by
the end of this case study are:

<u>**Data Science Learning Objectives:**</u>

1.  Importing data from various types of Excel files and CSV files
2.  Apply action verbs in `dplyr` for data wrangling
3.  How to pivot between “long” and “wide” datasets
4.  Joining together multiple datasets using `dplyr`
5.  How to create effective longitudinal data visualizations with
    `ggplot2`
6.  How to add text, color, and labels to `ggplot2` plots
7.  How to create faceted `ggplot2` plots

<u>**Statistical Learning Objectives:**</u>

1.  Introduction to correlation coefficient as a summary statistic
2.  Relationship between correlation and linear regression
3.  Correlation is not causation

#### Data import

Data from several .xlsx files and a couple of .csv files were imported
using `readxl` and `readr` respectively.

#### Data wrangling

This case study particularly focuses on renaming variables, modifying
variables, creating new variables, and modifying the shape of the data
using fuctions from the `dplyr` package such as: `rename()`, `mutate()`,
`pivot_longer()`, and `pivot_wider()`.

This case study also covers combining data with `bind_rows()` and
`full_join()` of the `dplyr` package, including a comparison of the two
functions.

We also cover filtering with the`filter()` function of the `dplyr`
package, removing NA values with the `drop_na()` function of the `tidyr`
package, arrange data with the `arrange()` function of the `dplyr`
package, as well as grouping and summarizing data with the `group_by()`
and `summarize()` functions of the `dplyr` package.

#### Data Visualization

We include a thorough and introductory explanation of ggplot2 including
how to add color, facets and labels to plots.

### Analysis

In this case study we look at the correaltion between CO2 emissions and
annual average temperatures in the US. We also evaluate the assocation
between the two using a linear regression. We discuss the relationship
between correlation and linear regression and how we interpret the
findings.

### Other notes and resources

<a href="https://www.tidyverse.org/" target="_blank">Tidyverse</a>  
<a href="https://rstudio.com/resources/cheatsheets/" target="_blank">RStudio cheatsheets</a>
<a href="https://www.mathsisfun.com/data/correlation.html" target="_blank">Introduction to correlation</a>
<a href="https://rafalab.github.io/dsbook/regression.html#corr-coefl" target="_blank">Correlation coefficient</a>  
<a href="https://dfrieds.com/math/correlation-does-not-imply-causation.html" target="_blank">Correlation does not imply causation</a>  
<a href="https://rafalab.github.io/dsbook/regression.html" target="_blank">Regression</a>  
<a href="https://en.wikipedia.org/wiki/Local_regression" target="_blank">Locally estimated scatterplot smoothing</a>  
<a href="https://en.wikipedia.org/wiki/Local_regression" target="_blank">Local polynomial regression</a>  
<a href="https://en.wikipedia.org/wiki/Autocorrelation" target="_blank">Autocorrleation</a>  
<a href="https://en.wikipedia.org/wiki/Time_series" target="_blank">Time series</a>  
<a href="https://online.stat.psu.edu/stat462/node/188/" target="_blank">Methods to account for autocorrelation</a>  
<a href="https://www.epa.gov/sites/production/files/2020-04/documents/us-ghg-inventory-2020-main-text.pdf" target="_blank">US Environmental Protection Agency (EPA) Inventory of U.S. Greenhouse Gas Emissions and Sinks 2020 Report</a>  
<a href="https://data.globalchange.gov/report/nca3-overview" target="_blank">National Climate Assessment Report</a>  
<a href="https://www.epa.gov/report-environment/greenhouse-gases" target="_blank">Greenhouse gases</a>
<a href="https://world101.cfr.org/global-era-issues/climate-change/climate-change-adaptations" target="_blank">Climate change</a>

<u>**Packages used in this case study:** </u>

<table>
<colgroup>
<col style="width: 43%" />
<col style="width: 56%" />
</colgroup>
<thead>
<tr class="header">
<th>Package</th>
<th>Use in this case study</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><a href="https://github.com/jennybc/here_here" target="_blank">here</a></td>
<td>to easily load and save data</td>
</tr>
<tr class="even">
<td><a href="https://readxl.tidyverse.org/" target="_blank">readxl</a></td>
<td>to import the excel file data</td>
</tr>
<tr class="odd">
<td><a href="https://readr.tidyverse.org/" target="_blank">readr</a></td>
<td>to import the csv file data</td>
</tr>
<tr class="even">
<td><a href="https://dplyr.tidyverse.org/" target="_blank">dplyr</a></td>
<td>o view and wrangle the data, by modifying variables, renaming variables, selecting variables, creating variables, and arranging values within a variable</td>
</tr>
<tr class="odd">
<td><a href="https://cran.r-project.org/web/packages/magrittr/vignettes/magrittr.html" target="_blank">magrittr</a></td>
<td>to use and reassign data objects using the <code>%&lt;&gt;%</code>pipe operator</td>
</tr>
<tr class="even">
<td><a href="https://stringr.tidyverse.org/" target="_blank">stringr</a></td>
<td>to select only the first 4 characters of date data</td>
</tr>
<tr class="odd">
<td><a href="https://purrr.tidyverse.org/" target="_blank">purrr</a></td>
<td>to apply a function on a list of tibbles (tibbles are the tidyverse version of a data frame)</td>
</tr>
<tr class="even">
<td><a href="https://tidyr.tidyverse.org/" target="_blank">tidyr</a></td>
<td>to drop rows with <code>NA</code> values from a tibble</td>
</tr>
<tr class="odd">
<td><a href="https://forcats.tidyverse.org/" target="_blank">forcats</a></td>
<td>to reorder the levels of a factor</td>
</tr>
<tr class="even">
<td><a href="https://ggplot2.tidyverse.org/" target="_blank">ggplot2</a></td>
<td>to make visualizations</td>
</tr>
<tr class="odd">
<td><a href="http://directlabels.r-forge.r-project.org/docs/index.html" target="_blank">directlabels</a></td>
<td>to add labels to plots easily</td>
</tr>
<tr class="even">
<td><a href="https://cran.r-project.org/web/packages/ggrepel/vignettes/ggrepel.html" target="_blank">ggrepel</a></td>
<td>to add labels that don’t overlap to plots</td>
</tr>
<tr class="odd">
<td><a href="https://www.tidyverse.org/blog/2018/07/broom-0-5-0/">broom</a></td>
<td>to make the output form statistical tests easier to work with</td>
</tr>
<tr class="even">
<td><a href="https://github.com/thomasp85/patchwork" target="_blank">patchwork</a></td>
<td>to combine plots</td>
</tr>
</tbody>
</table>

#### For users

There is a [`Makefile`](Makefile) in this folder that allows you to type
`make` to knit the case study contained in the `index.Rmd` to
`index.html` and it will also knit the [`README.Rmd`](README.Rmd) to a
markdown file (`README.md`). Users can start at any section after the
“What are the data?” section, however some aspects about the code may be
explained in an earlier section.

#### For instructors

Instructors can start at any section after the “What are the data?”
section. There is additional data about mortality over time in different
countries from the World Bank in the `extra` subdirectory of the `data`
directory. This could be used for additional analyses.

#### Target audience

This case study is appropriate for those new to R programming and new to
statistics. It is also appropriate for more advanced R users who are new
to the Tidyverse.

#### Suggested homework

Ask students to create a plot with labels showing the countries with the
lowest CO2 emission levels.

Ask students to plot CO2 emissions and other variables (e.g. energy use)
on a scatter plot, calculate the Pearson’s correlation coefficient, and
discuss results.
