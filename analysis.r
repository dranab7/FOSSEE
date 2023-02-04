library(igraph)
Full_Graph <- make_full_graph(8, directed = FALSE)
plot(Full_Graph)


library(igraph)
Ring_Graph <- make_ring(12, directed = FALSE, mutual = FALSE, circular = TRUE)
plot(Ring_Graph)

library(igraph)
Star_Graph <- make_star(10, center = 1)
plot(Star_Graph)


library(igraph)
gnp_Graph <- sample_gnp(20, 0.3, directed = FALSE, loops = FALSE)
plot(gnp_Graph)


library(igraph)
gnp_Graph <- sample_gnp(7, 0.4, directed = FALSE, loops = FALSE)
plot(gnp_Graph)
degree(gnp_Graph)


library(igraph)
gnp_Graph <- sample_gnp(7, 0.4, directed = FALSE, loops = FALSE)
plot(gnp_Graph)
betweenness(gnp_Graph)


library(igraph)
sample_graph <- sample_gnp(10, 0.3, directed = FALSE)
plot(sample_graph)
sample_density <- edge_density(sample_graph, loops = FALSE)
sample_density


library(igraph)
sample_graph <- sample_gnp(20, 0.3, directed = FALSE, loops = FALSE)
plot(sample_graph)
clique_num(sample_graph, min=4)


library(igraph)
sample_graph <- sample_gnp(30, 0.07, directed = FALSE, loops = FALSE)
plot(sample_graph)
components(sample_graph)


library(igraph)
sample_graph <- sample_gnp(30, 0.07, directed = FALSE, loops = FALSE)
plot(sample_graph)
random_walk(sample_graph, 8, 10, stuck = "return")


library(igraph)
mat <- cor(t(mtcars[,c(1,3:6)]))
mat[mat<0.995] <- 0
network <- graph_from_adjacency_matrix( mat, weighted=T, mode="undirected", diag=F)
plot(network)



library(RColorBrewer)
coul <- brewer.pal(nlevels(as.factor(mtcars$cyl)), "Set2")
my_color <- coul[as.numeric(as.factor(mtcars$cyl))]
par(bg="grey13", mar=c(0,0,0,0))
set.seed(4)
plot(network, 
     vertex.size=12,
     vertex.color=my_color, 
     vertex.label.cex=0.7,
     vertex.label.color="white",
     vertex.frame.color="transparent"
)
text(0,0,"mtcars network",col="white", cex=1.5)
legend(x=-0.2, y=-0.12, 
       legend=paste( levels(as.factor(mtcars$cyl)), " cylinders", sep=""), 
       col = coul , 
       bty = "n", pch=20 , pt.cex = 2, cex = 1,
       text.col="white" , horiz = F)



plot(network,
     edge.color=rep(c("red","pink"),5),           # Edge color
     edge.width=seq(1,10),                        # Edge width, defaults to 1
     edge.arrow.size=1,                           # Arrow size, defaults to 1
     edge.arrow.width=1,                          # Arrow width, defaults to 1
     edge.lty=c("solid")                           # Line type, could be 0 or "blank", 1 or "solid", 2 or "dashed", 3 or "dotted", 4 or "dotdash", 5 or "longdash", 6 or "twodash"
     #edge.curved=c(rep(0,5), rep(1,5))            # Edge curvature, range 0-1 (FALSE sets it to 0, TRUE to 0.5)
)
par(bg="black")

plot(network,
     
     # === vertex
     vertex.color = rgb(0.8,0.4,0.3,0.8),          # Node color
     vertex.frame.color = "white",                 # Node border color
     vertex.shape="circle",                        # One of "none", "circle", "square", "csquare", "rectangle" "crectangle", "vrectangle", "pie", "raster", or "sphere"
     vertex.size=14,                               # Size of the node (default is 15)
     vertex.size2=NA,                              # The second size of the node (e.g. for a rectangle)
     
     # === vertex label
     vertex.label=LETTERS[1:10],                   # Character vector used to label the nodes
     vertex.label.color="white",
     vertex.label.family="Times",                  # Font family of the label (e.g."Times", "Helvetica")
     vertex.label.font=2,                          # Font: 1 plain, 2 bold, 3, italic, 4 bold italic, 5 symbol
     vertex.label.cex=1,                           # Font size (multiplication factor, device-dependent)
     vertex.label.dist=0,                          # Distance between the label and the vertex
     vertex.label.degree=0 ,                       # The position of the label in relation to the vertex (use pi)
     
     # === Edge
     edge.color="white",                           # Edge color
     edge.width=4,                                 # Edge width, defaults to 1
     edge.arrow.size=1,                            # Arrow size, defaults to 1
     edge.arrow.width=1,                           # Arrow width, defaults to 1
     edge.lty="solid",                             # Line type, could be 0 or "blank", 1 or "solid", 2 or "dashed", 3 or "dotted", 4 or "dotdash", 5 or "longdash", 6 or "twodash"
     edge.curved=0.3    ,                          # Edge curvature, range 0-1 (FALSE sets it to 0, TRUE to 0.5)
)