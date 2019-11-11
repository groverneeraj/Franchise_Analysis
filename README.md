# Franchise Analysis
Visualization for the highest grossing media franchises 


Browsing through the internet this weekend I stumbled onto this article on the Highest Grossing Media Franchises (https://w.wiki/Bpx) 

I was fascinated seeing how most franchises didn't make the highest amount of money from what made them famous and rather made money on retailing and merchandising 

The kids franchise Cars is a good example, making mostly mediocre movies (according to Rotten Tomatoes), but it does sell a lot of toys, which generated huge revenue.

I decided to make a quick visualization using R & ggplot 2

Some code-bits:

1. I used scale_fill_colorblind so that the chart would be easier to read for colorblind people
2. I really like the WSJ insipred theme form ggthemes, it does have that dotted horizontal line though, so to adjust my label position above it I used both hjust and vjust properties
3. I tried with a bunch of fonts (reason I used showtext library) but ended up with using mac inbuit SF Compact
4. Gettting the legend in one row took me a little bit more time than I expected, eventually legend.box = "horizontal" and guides(fill=guide_legend(nrow=1,byrow=TRUE)) helped.
