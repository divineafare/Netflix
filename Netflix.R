install.packages("ggplot2")

library(ggplot2)



df <- read.csv('C:\\Users\\PASSNOWNOW\\netflix_shows_movies.csv')

# Most Watched Genres
genre_counts <- table(unlist(strsplit(df$listed_in, ', ')))
df <- as.data.frame(genre_counts)

ggplot(df, aes(x = Var1, y = Freq)) + 
  geom_bar(stat = 'identity') + 
  coord_flip() +
  labs(title = 'Most Watched Genres', x = 'Genres', y = 'Number of Titles')