####################################################Dot plot 
script############################################################
###Version of R used 4.2.0
library(tidyverse
library(ggplot)
library(readxl)
Dotplot_dataset <- read_excel("path/Dotplot-dataset.xlsx")
View(Dotplot_dataset)
###month data
DF1 <- Dataset_dot_plot %>%
  mutate(Month = factor(Month, levels = c("Jun, 20", "Jul, 20", "Sep, 20", 
"Oct, 20", "Dec, 20", "Jan, 21", "Feb, 21", "Mar, 21", "Apr, 21","May, 
21", "Jun, 21", "Jul, 21", "Aug, 21", "Sep, 21", "Oct, 21", "Nov, 
21","Dec, 21", "Jan, 22", "Feb, 22", "Mar, 22", "Apr, 22", "May, 22", 
"Jun, 22", "Jul, 22", "Aug, 22", "Sep, 22", "Oct, 22", "Nov, 22", "Dec, 
22", "Jan, 23", "Feb, 23")))
DF1$Mutations <- factor(DF1$Mutations, levels = unique(DF1$Mutations))
###Dot plot
ggplot(DF1, aes(x = Month, y = Mutations, size = Number-of-mutations), 
show.legend=FALSE) + geom_point(aes(size = Number-of-mutations)) + 
geom_line(aes(group = Mutations, size = 0.1), color = "#606060", 
show.legend=FALSE) + scale_size_continuous(breaks = c(2, 4, 6, 8, 10, 12, 
14, 16, 18, 20, 22, 24, 26, 28)) +
  scale_colour_manual(values = c("#006600", "firebrick")) +
  geom_point(aes(x = Month, y = Mutations, colour = (Mutations == "S50L" | 
Mutations == "T250S" | Mutations == "P251L" | Mutations == "G257S" | 
Mutations == "A288T" | Mutations == "K444T" | Mutations == "N460K" | 
Mutations == "D627H" | Mutations == "L828F" | Mutations == "T859N")), 
show.legend=FALSE) +
  annotate("text", x = 3.5, y = 1.5, label = "14", size =3.5) +
  annotate("text", x = 3.5, y = 2.5, label = "13", size =3.5) +
  annotate("text", x = 6, y = 3.5, label = "29", size =3.5) +
  annotate("text", x = 7, y = 4.5, label = "30", size =3.5) +
  annotate("text", x = 7, y = 5.5, label = "28", size =3.5) +
  annotate("text", x = 10, y = 6.5, label = "10", size =3.5) +
  annotate("text", x = 9, y = 7.5, label = "46", size =3.5) +
  annotate("text", x = 3.5, y = 8.5, label = "36", size =3.5) +
  annotate("text", x = 4, y = 9.5, label = "13", size =3.5) +
  labs(title = "The prevelance of SAR-CoV-2 mutations found in the spike 
region, in a total number of processed environmental samples (N=325) 
across South Africa", x = "Month", y ="Mutations", size="Prevelance of 
mutations") + theme(plot.title = element_text(size=11)) + 
theme(axis.text.x = element_text(size = 10, angle = 0)) + 
theme(axis.text.y = element_text(size = 10)) + 
theme(legend.title=element_text(size=10)) + 
theme(legend.text=element_text(size=10)) + theme(axis.title.y = 
element_text(size=10)) + theme(axis.title.x = element_text(size=10))

