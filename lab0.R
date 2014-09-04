source("http://www.openintro.org/stat/data/present.R")
plot(x = present$year, y = present$girls)
plot(x = present$year, y = present$girls, type="l")
present$total <- present$boys + present$girls
present %>% arrange(total)
present$p <- present$boys/(present$boys + present$girls)
plot(present$year, present$p, type = "l")
present$boys > present$girls
present$diff <- abs(present$boys - present$girls)
present %>% arrange(diff)