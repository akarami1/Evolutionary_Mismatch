# Loading packages
library(bootnet)
library(psychonetric)



#Estimate a network with correction
evolution_network <- estimateNetwork(Evolution4,default = "EBICglasso",
                                     corMethod = "cor_auto", 
                                     tuning = 0.5,)


#Obtain weights matrix
evolution_network$graph

#Plot network
plot(evolution_network,layout = "spring",
     nodeNames = Names,
     legend.cex = 0.3,
     groups = Grouping,
     theme = "colorblind",
     vsize = 4,
     GLratio = 1.5,
     filetype = "pdf",
     filename = "first network")



# Names
Names <- c("Little interest or pleasure in doing things",
           "Feeling down, depressed, or hopeless",
           "Trouble falling or staying asleep, or sleeping too much",
           "Feeling tired or having little energy",
           "Poor appetite or overeating",
           "Feeling bad about yourself",
           "Trouble concentrating on things",
           "Moving or speaking so slowly that other people could have noticed - Or the opposite",
           "Thoughts that you would be better off dead, or of hurting yourself in some way",
           "Sleep",
           "Lack of movement",
           "Processed food",
           "Unhealthy habits",
           "Medicine (mis)use",
           "Health",
           "Lack of green environment and being outside",
           "Lack of joy",
           "Worrying",
           "Aberrant childhood",
           "Lack of freedom/autonomy",
           "Lack of time",
           "Social bonding",
           "Materialism",
           "Perfectionism",
           "Individualism",
           "Social media use",
           sep = "\n")

#Grouping
Grouping <- 1:26
Grouping[1:9] <- "Depression Items"
Grouping[10:26] <- "Mismatch Factors"

#Centrality measures
library(qgraph)
centralityPlot(evolution_network)