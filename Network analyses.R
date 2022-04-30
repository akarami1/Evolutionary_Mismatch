# Loading packages
library(bootnet)
library(psychonetric)

#Rename mismatch columns
names(Evolution4)[names(Evolution4) == 'sleep'] <- 'M1'
names(Evolution4)[names(Evolution4) == 'exercise'] <- 'M2'
names(Evolution4)[names(Evolution4) == 'diet'] <- 'M3'
names(Evolution4)[names(Evolution4) == 'unhealthy'] <- 'M4'
names(Evolution4)[names(Evolution4) == 'medication'] <- 'M5'
names(Evolution4)[names(Evolution4) == 'health'] <- 'M6'
names(Evolution4)[names(Evolution4) == 'nature'] <- 'M7'
names(Evolution4)[names(Evolution4) == 'joy'] <- 'M8'
names(Evolution4)[names(Evolution4) == 'worrying'] <- 'M9'
names(Evolution4)[names(Evolution4) == 'childhood'] <- 'M10'
names(Evolution4)[names(Evolution4) == 'freedom'] <- 'M11'
names(Evolution4)[names(Evolution4) == 'time'] <- 'M12'
names(Evolution4)[names(Evolution4) == 'social'] <- 'M13'
names(Evolution4)[names(Evolution4) == 'materialism'] <- 'M14'
names(Evolution4)[names(Evolution4) == 'perfectionism'] <- 'M15'
names(Evolution4)[names(Evolution4) == 'individualism'] <- 'M16'
names(Evolution4)[names(Evolution4) == 'socialmedia'] <- 'M17'

#Estimate a network with correction
evolution_network <- estimateNetwork(Evolution4,default = "EBICglasso",
                                     corMethod = "cor_auto", 
                                     tuning = 0.5,)


#Obtain weights matrix
evolution_network$graph

#Plot network
plot(evolution_network,layout = "spring",
     groups = Grouping,
     theme = "colorblind",
     vsize = 5,
     GLratio = 1.5,
     filetype = "pdf",
     filename = "names")

# Plot without saving 
plot(evolution_network,layout = "spring",
     groups = Grouping,
     theme = "colorblind",
     vsize = 8,
     GLratio = 1.5)

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
centralityPlot(evolution_network,include = 
                 c("Strength","Betweenness","Closeness",
                   orderBy = "default"))


##Test for stability of centrality indices
CentralStability <- bootnet(evolution_network, nBoots = 1000, type = "case",statistics = c("strength", "betweenness", "closeness"))

# Get CS coeffcients
corStability(CentralStability)

# Plot stability of centrality indices 
plot(CentralStability, statistics = c("strength", "betweenness", "closeness"))

# Test fo differences in centrality 
plot(CentralStability,
     plot = "difference",
     onlyNonZero = TRUE,
     order = "sample"
)

##Test for edege weight accuracy 
EdgeWgt <- bootnet(evolution_network, nBoots = 500)

#Summary table of results of edge weight accuracy 
f <- summary(EdgeWgt) 
View(f)

#Plot edge weight accuracy
plot(EdgeWgt, labels = FALSE, order = "sample")

#Plot edge differences
plot(EdgeWgt,
     plot = "difference",
     onlyNonZero = TRUE,
     order = "sample"
     )