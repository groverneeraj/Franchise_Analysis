library(ggplot2)
library(ggthemes)
library(extrafont)
library(plyr)
library(scales)
library(showtext)
showtext_auto()
data <- read.csv("gmfranchise.csv")
data$category = factor(data$category, levels = c("Other","Literature","Home Entertainment","Card Games","Box Office","Video Games","Retail & Licensing"))

png("test.png", units="in", width=8, height=5, res=300)
> ggplot(data = data, aes(x = reorder(franchise,revenue), y = revenue, fill = factor(category))) +
     geom_bar(stat="identity", position = "stack") +
     geom_text(aes(label = paste0(stat(y),"B"), group = franchise), stat = 'summary', fun.y = sum, hjust = -.2, vjust = -.25, size = 2, family = ".SF Compact Text") +
     theme_wsj() + scale_fill_colorblind() + coord_flip() +
     labs(title = "Highest Grossing Media Franchises", y = "Revenue", x = "Franchise", fill = "Categories", caption = "Data Source: wikipedia | Made by Neeraj Grover") +
     scale_y_continuous(labels = dollar_format(suffix = "B", prefix = "")) +
     theme(legend.position="top", legend.direction="horizontal",legend.title = element_blank(), legend.box = "horizontal") +
     theme(axis.title.x=element_blank(), axis.title.y=element_blank(), text = element_text(size = 9, face="bold", family = ".SF Compact Text"), plot.title = element_text(size = 15),plot.caption = element_text(size = 8)) +
     guides(fill=guide_legend(nrow=1,byrow=TRUE)) +
     guides(shape = guide_legend(override.aes = list(size = 0.5)))
> dev.off()
