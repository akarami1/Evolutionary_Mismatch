## Only mismatch factors 


Evolution_5 <- Evolution4[10:26]

#Estimate a network with correction
mismatch_network <- estimateNetwork(Evolution_5,default = "EBICglasso",
                                     corMethod = "cor_auto", 
                                     tuning = 0.5,)


#Obtain weights matrix
mismatch_network$graph

#Plot network
plot(mismatch_network,layout = "spring",
     theme = "colorblind",
     vsize = 6,
     GLratio = 1.5,)

#Centrality measures
library(qgraph)
centralityPlot(mismatch_network)

## Only depression scores
Evolution_6 <- Evolution4[1:9]
depression_network <- estimateNetwork(Evolution_6,default = "EBICglasso",
                                    corMethod = "cor_auto", 
                                    tuning = 0.5,)

#Obtain weights matrix
depression_network$graph

#Plot network
plot(depression_network,layout = "spring",
     theme = "colorblind",
     nodeNames = d_names,
     vsize = 6,
     GLratio = 1.5,
     legend.cex = 0.3)

#Centrality measures
library(qgraph)
centralityPlot(depression_network)

d_names  <- c("Little interest or pleasure in doing things",
                      "Feeling down, depressed, or hopeless",
                      "Trouble falling or staying asleep, or sleeping too much",
                      "Feeling tired or having little energy",
                      "Poor appetite or overeating",
                      "Feeling bad about yourself",
                      "Trouble concentrating on things",
                      "Moving or speaking so slowly that other people could have noticed - Or the opposite",
                      "Thoughts that you would be better off dead, or of hurting yourself in some way")
