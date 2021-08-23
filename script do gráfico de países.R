## Gráfico 1  ####
library(tidyr)
library(ggplot2)

Objc <- data.frame (Anos = c(2014,2016,	2018, "Médiaf."), 
                    Brasil=	c(6.37,	6.67,	6.89,	6.39),
                    Uruguai	=	c(8.03,8.1,7.65,7.52),
                    Guatemala =	c(2.65,	3.88,	4.07, 3.59),
                    El_Salvador =	c(3.85,	4.08,	4.4, 3.12)) 

gath

Objc.1 <- Objc %>% gather(Países, Médias_tolerância, -Anos)

Gra3 <- ggplot(data = Objc.1, aes(x= Anos, y= Médias_tolerância, 
                                  group = Países))+
  geom_line(aes(colour = Países), size = 1) + geom_point(aes(shape = Países))

Gra3

Gra3 + theme_bw()+ theme(legend.position = "bottom")
  

#Local: "bottom", "top", "left", ou "right" 
  
  
