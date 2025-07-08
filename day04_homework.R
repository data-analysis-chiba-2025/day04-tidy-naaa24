# DAY 4 HOMEWORK
#
# Name: Nanami Mikawa

library(tidyverse)
# For this week's homework, the answer to each question should be a dataframe
# (tibble)

# 1. Load the "gapminder" dataset and save it to an object called gapminder
#
# HINT: This repo includes the gapminder.csv file in the data_raw folder
# HINT: I've written some of the code for you.

gapminder <- gapminder <- read_csv("data_raw/gapminder.csv")

# 2. Sort the data so that the country with the highest per capita GDP
# (gdpPercap) is at the top. Save the result to answer_2
arrange(gapminder, desc(gdpPercap))
answer_2 <- arrange(gapminder, desc(gdpPercap))


# 3. Filter the gapminder data to the most recent year in the
# dataset, then select only the country and population columns. DO NOT use the
# pipe for this. Save the result to answer_3

answer_3 <- select(filter(gapminder, year == max(year)),country, pop)
check_answer_3 <- select(filter(gapminder, year == max(year)),country, pop, year)

# 4. Answer question 4 again, but this time USE the pipe (|>). Save the
# result to answer_4

answer_4 <- gapminder |>
  filter(year == max(year)) |>
  select(country, pop)

# 5. Calculate the mean life expectancy for each country in
# Asia only. Save the result to answer_5
#
# HINT: use the combination of `group_by()` and `summarize()` to calculate
# a mean value by group

answer_5 <- gapminder |>
  filter(continent == "Asia") |>
  group_by(country) |>
  summarize(mean_lifeExp = mean(lifeExp))
