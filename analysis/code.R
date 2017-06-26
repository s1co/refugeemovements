rm(list=ls(all=TRUE))
setwd("~/Dropbox/Capstone DEZA/6 - Weltkarte/Lisa")
options(stringsAsFactors = F)
library(countrycode)
library(dplyr)
library(plyr)
library(foreign)

#net change in refugee population

marbach = read.csv("wrd.csv")
head(marbach)
#########################################################################
# calculate flows, not stocks
# calculate the changes compared to the previous values
# http://stackoverflow.com/questions/22084118/r-calculating-the-change-in-a-value-from-one-observation-to-the-next-within-a-d


# create a new originasylum variable
marbach$origin_asylum = paste(marbach$origin, marbach$asylum)

marbach$deltaimp = with(marbach, 
                        ave(tot_compl,
                            c(origin_asylum),
                            FUN = function(x) c(NA,diff(x), NA)))


# transform negatives to 0
marbach$deltaimp2 = marbach$deltaimp
marbach$deltaimp2[marbach$deltaimp2 < 0] = NA

marbach$deltaimp <- round(marbach$deltaimp)
marbach$deltaimp2 <- round(marbach$deltaimp2)

write.csv(marbach, file = "flowsforregula.csv")


wrd <- marbach

wrd$X <- NULL
wrd$tot_orig <- NULL
wrd$tot_imp <- NULL
wrd$imput <- NULL
wrd$tot_compl <- NULL

wrd <- data.frame(marbach$origin_ccode, marbach$asylum_ccode, marbach$year, marbach$deltaimp2, marbach$origin, marbach$asylum)
colnames(wrd) <- c("origin_ccode", "asylum_ccode", "year", "tot_compl", "origin", "asylum")


##### new variables ####

## Regions

wrd$or_region <- countrycode(wrd$origin_ccode, "cown", "region", warn = F)
wrd$as_region <- countrycode(wrd$asylum_ccode, "cown", "region", warn = F)

# check regions
#unique(countrycode(wrd$origin_ccode, "cown", "region", warn = F))

#### rearrange regions ####

# UK to Western Europe
wrd$or_region[wrd$origin=="United Kingdom"] <- "Western Europe"
wrd$as_region[wrd$asylum=="United Kingdom"] <- "Western Europe"

# Ireland to Western Europe
wrd$or_region[wrd$origin=="Ireland"] <- "Western Europe"
wrd$as_region[wrd$asylum=="Ireland"] <- "Western Europe"

# Cyprus to South Europe
wrd$or_region[wrd$origin=="Cyprus"] <- "Southern Europe"
wrd$as_region[wrd$asylum=="Cyprus"] <- "Southern Europe"

# Balkan States to Eastern Europe
# Slovenia
wrd$or_region[wrd$origin=="Slovenia"] <- "Eastern Europe"
wrd$as_region[wrd$asylum=="Slovenia"] <- "Eastern Europe"

# Bosnia and Herzegovina
wrd$or_region[wrd$origin=="Bosnia and Herzegovina"] <- "Eastern Europe"
wrd$as_region[wrd$asylum=="Bosnia and Herzegovina"] <- "Eastern Europe"

# Croatia
wrd$or_region[wrd$origin=="Croatia"] <- "Eastern Europe"
wrd$as_region[wrd$asylum=="Croatia"] <- "Eastern Europe"

# Macedonia, the former Yugoslav Republic of
wrd$or_region[wrd$origin=="Macedonia, the former Yugoslav Republic of"] <- "Eastern Europe"
wrd$as_region[wrd$asylum=="Macedonia, the former Yugoslav Republic of"] <- "Eastern Europe"

# Montenegro
wrd$or_region[wrd$origin=="Montenegro"] <- "Eastern Europe"
wrd$as_region[wrd$asylum=="Montenegro"] <- "Eastern Europe"

# Albania
wrd$or_region[wrd$origin=="Albania"] <- "Eastern Europe"
wrd$as_region[wrd$asylum=="Albania"] <- "Eastern Europe"

# Serbia
wrd$or_region[wrd$origin=="Republic of Serbia"] <- "Eastern Europe"
wrd$as_region[wrd$asylum=="Republic of Serbia"] <- "Eastern Europe"

# Yugoslavia
wrd$or_region[wrd$origin=="Yugoslavia"] <- "Eastern Europe"
wrd$as_region[wrd$asylum=="Yugoslavia"] <- "Eastern Europe"

# Kosovo
wrd$or_region[wrd$origin=="Kosovo"] <- "Eastern Europe"
wrd$as_region[wrd$asylum=="Kosovo"] <- "Eastern Europe"

# Sudan to Eastern Africa
wrd$or_region[wrd$origin=="Sudan"] <- "Eastern Africa"
wrd$as_region[wrd$asylum=="Sudan"] <- "Eastern Africa"

# South Sudan to Eastern Africa
wrd$or_region[wrd$origin=="South Sudan"] <- "Eastern Africa"
wrd$as_region[wrd$asylum=="South Sudan"] <- "Eastern Africa"

# Zambia to Southern Africa
wrd$or_region[wrd$origin=="Zambia"] <- "Southern Africa"
wrd$as_region[wrd$asylum=="Zambia"] <- "Southern Africa"

# Mozambique to Southern Africa
wrd$or_region[wrd$origin=="Mozambique"] <- "Southern Africa"
wrd$as_region[wrd$asylum=="Mozambique"] <- "Southern Africa"

# Malawi to Southern Africa
wrd$or_region[wrd$origin=="Malawi"] <- "Southern Africa"
wrd$as_region[wrd$asylum=="Malawi"] <- "Southern Africa"

# Zimbabwe to Southern Africa
wrd$or_region[wrd$origin=="Zimbabwe"] <- "Southern Africa"
wrd$as_region[wrd$asylum=="Zimbabwe"] <- "Southern Africa"

# Madagascar to Southern Africa
wrd$or_region[wrd$origin=="Madagascar"] <- "Southern Africa"
wrd$as_region[wrd$asylum=="Madagascar"] <- "Southern Africa"

# Comoros to Southern Africa
wrd$or_region[wrd$origin=="Comoros"] <- "Southern Africa"
wrd$as_region[wrd$asylum=="Comoros"] <- "Southern Africa"

# Mauritius to Southern Africa
wrd$or_region[wrd$origin=="Mauritius"] <- "Southern Africa"
wrd$as_region[wrd$asylum=="Mauritius"] <- "Southern Africa"

# Taiwan to Eastern Asia
wrd$or_region[wrd$origin=="Taiwan, Province of China"] <- "Eastern Asia"
wrd$as_region[wrd$asylum=="Taiwan, Province of China"] <- "Eastern Asia"

# Afghanistan to Central Asia
wrd$or_region[wrd$origin=="Afghanistan"] <- "Central Asia"
wrd$as_region[wrd$asylum=="Afghanistan"] <- "Central Asia"

# Iran to Central Asia
wrd$or_region[wrd$origin=="Iran, Islamic Republic of"] <- "Central Asia"
wrd$as_region[wrd$asylum=="Iran, Islamic Republic of"] <- "Central Asia"

# Australia to Oceania
wrd$or_region[wrd$or_region=="Australia and New Zealand"] <- "Oceania"
wrd$as_region[wrd$as_region=="Australia and New Zealand"] <- "Oceania"

# Melanesia to Oceania
wrd$or_region[wrd$or_region=="Melanesia"] <- "Oceania"
wrd$as_region[wrd$as_region=="Melanesia"] <- "Oceania"

# #667 to Western Asia
wrd$or_region[wrd$origin_ccode==667] <- "Western Asia"
wrd$as_region[wrd$asylum_ccode==667] <- "Western Asia"

# FRG to Western Europe
wrd$or_region[wrd$origin=="Federal Republic of Germany"] <- "Western Europe"
wrd$as_region[wrd$asylum=="Federal Republic of Germany"] <- "Western Europe"

# GDR to Eastern Europe
wrd$or_region[wrd$origin=="German Democratic Republic"] <- "Eastern Europe"
wrd$as_region[wrd$asylum=="German Democratic Republic"] <- "Eastern Europe"

# Czechoslovakia to Eastern Europe
wrd$or_region[wrd$origin=="Czechoslovakia"] <- "Eastern Europe"
wrd$as_region[wrd$asylum=="Czechoslovakia"] <- "Eastern Europe"

# Yemen People's Rep to Western Asia
wrd$or_region[wrd$origin=="Yemen People's Republic"] <- "Western Asia"
wrd$as_region[wrd$asylum=="Yemen People's Republic"] <- "Western Asia"

# Yemen Arab Rep to Western Asia
wrd$or_region[wrd$origin=="Yemen Arab Republic"] <- "Western Asia"
wrd$as_region[wrd$asylum=="Yemen Arab Republic"] <- "Western Asia"



#### renaming the regions (delete space) ####

wrd$or_region[wrd$or_region=="Northern America"] <- "NorthernAmerica"
wrd$as_region[wrd$as_region=="Northern America"] <- "NorthernAmerica"

wrd$or_region[wrd$or_region=="Central America"] <- "CentralAmerica"
wrd$as_region[wrd$as_region=="Central America"] <- "CentralAmerica"

wrd$or_region[wrd$or_region=="South America"] <- "SouthAmerica"
wrd$as_region[wrd$as_region=="South America"] <- "SouthAmerica"

wrd$or_region[wrd$or_region=="Northern Europe"] <- "NorthernEurope"
wrd$as_region[wrd$as_region=="Northern Europe"] <- "NorthernEurope"

wrd$or_region[wrd$or_region=="Western Europe"] <- "WesternEurope"
wrd$as_region[wrd$as_region=="Western Europe"] <- "WesternEurope"

wrd$or_region[wrd$or_region=="Southern Europe"] <- "SouthernEurope"
wrd$as_region[wrd$as_region=="Southern Europe"] <- "SouthernEurope"

wrd$or_region[wrd$or_region=="Eastern Europe"] <- "EasternEurope"
wrd$as_region[wrd$as_region=="Eastern Europe"] <- "EasternEurope"

wrd$or_region[wrd$or_region=="Western Asia"] <- "WesternAsia"
wrd$as_region[wrd$as_region=="Western Asia"] <- "WesternAsia"

wrd$or_region[wrd$or_region=="Western Africa"] <- "WesternAfrica"
wrd$as_region[wrd$as_region=="Western Africa"] <- "WesternAfrica"

wrd$or_region[wrd$or_region=="Middle Africa"] <- "MiddleAfrica"
wrd$as_region[wrd$as_region=="Middle Africa"] <- "MiddleAfrica"

wrd$or_region[wrd$or_region=="Eastern Africa"] <- "EasternAfrica"
wrd$as_region[wrd$as_region=="Eastern Africa"] <- "EasternAfrica"

wrd$or_region[wrd$or_region=="Southern Africa"] <- "SouthernAfrica"
wrd$as_region[wrd$as_region=="Southern Africa"] <- "SouthernAfrica"

wrd$or_region[wrd$or_region=="Northern Africa"] <- "NorthernAfrica"
wrd$as_region[wrd$as_region=="Northern Africa"] <- "NorthernAfrica"

wrd$or_region[wrd$or_region=="Southern Asia"] <- "SouthernAsia"
wrd$as_region[wrd$as_region=="Southern Asia"] <- "SouthernAsia"

wrd$or_region[wrd$or_region=="Central Asia"] <- "CentralAsia"
wrd$as_region[wrd$as_region=="Central Asia"] <- "CentralAsia"

wrd$or_region[wrd$or_region=="Eastern Asia"] <- "EasternAsia"
wrd$as_region[wrd$as_region=="Eastern Asia"] <- "EasternAsia"

wrd$or_region[wrd$or_region=="South-Eastern Asia"] <- "South-EasternAsia"
wrd$as_region[wrd$as_region=="South-Eastern Asia"] <- "South-EasternAsia"



# create iso codes
wrd$or_iso3c <- countrycode(wrd$origin_ccode, "cown", "iso3c", warn = F)
wrd$as_iso3c <- countrycode(wrd$asylum_ccode, "cown", "iso3c", warn = F)

# rename Yugoslavia/Serbia
wrd$or_iso3c[wrd$or_iso3c=="YUG" & wrd$year>=1992] <- "SRB"
wrd$as_iso3c[wrd$as_iso3c=="YUG" & wrd$year>=1992] <- "SRB"

wrd$origin[wrd$origin=="Yugoslavia" & wrd$year>=1992] <- "Republic of Serbia"
wrd$asylum[wrd$asylum=="Yugoslavia" & wrd$year>=1992] <- "Republic of Serbia"


# 1. Datensatz (Regionen)

regions <- aggregate(tot_compl ~ or_region + as_region + year, wrd, FUN = sum)

#### adding coordinates ####

regions$or_lat[regions$or_region=="NorthernAmerica"] <- 45
regions$or_long[regions$or_region=="NorthernAmerica"] <- -100
regions$as_lat[regions$as_region=="NorthernAmerica"] <- 45
regions$as_long[regions$as_region=="NorthernAmerica"] <- -100

regions$or_lat[regions$or_region=="Caribbean"] <- 21
regions$or_long[regions$or_region=="Caribbean"] <- -78
regions$as_lat[regions$as_region=="Caribbean"] <- 21
regions$as_long[regions$as_region=="Caribbean"] <- -78

regions$or_lat[regions$or_region=="CentralAmerica"] <- 16
regions$or_long[regions$or_region=="CentralAmerica"] <- -93
regions$as_lat[regions$as_region=="CentralAmerica"] <- 16
regions$as_long[regions$as_region=="CentralAmerica"] <- -93

regions$or_lat[regions$or_region=="SouthAmerica"] <- -25
regions$or_long[regions$or_region=="SouthAmerica"] <- -65
regions$as_lat[regions$as_region=="SouthAmerica"] <- -25
regions$as_long[regions$as_region=="SouthAmerica"] <- -65

regions$or_lat[regions$or_region=="WesternEurope"] <- 50
regions$or_long[regions$or_region=="WesternEurope"] <- 5
regions$as_lat[regions$as_region=="WesternEurope"] <- 50
regions$as_long[regions$as_region=="WesternEurope"] <- 5

regions$or_lat[regions$or_region=="SouthernEurope"] <- 40
regions$or_long[regions$or_region=="SouthernEurope"] <- 9
regions$as_lat[regions$as_region=="SouthernEurope"] <- 40
regions$as_long[regions$as_region=="SouthernEurope"] <- 9

regions$or_lat[regions$or_region=="EasternEurope"] <- 51
regions$or_long[regions$or_region=="EasternEurope"] <- 39
regions$as_lat[regions$as_region=="EasternEurope"] <- 51
regions$as_long[regions$as_region=="EasternEurope"] <- 39

regions$or_lat[regions$or_region=="NorthernEurope"] <- 59
regions$or_long[regions$or_region=="NorthernEurope"] <- 15
regions$as_lat[regions$as_region=="NorthernEurope"] <- 59
regions$as_long[regions$as_region=="NorthernEurope"] <- 15

regions$or_lat[regions$or_region=="WesternAsia"] <- 24
regions$or_long[regions$or_region=="WesternAsia"] <- 42
regions$as_lat[regions$as_region=="WesternAsia"] <- 24
regions$as_long[regions$as_region=="WesternAsia"] <- 42

regions$or_lat[regions$or_region=="WesternAfrica"] <- 11
regions$or_long[regions$or_region=="WesternAfrica"] <- 1
regions$as_lat[regions$as_region=="WesternAfrica"] <- 11
regions$as_long[regions$as_region=="WesternAfrica"] <- 1

regions$or_lat[regions$or_region=="MiddleAfrica"] <- 1
regions$or_long[regions$or_region=="MiddleAfrica"] <- 17
regions$as_lat[regions$as_region=="MiddleAfrica"] <- 1
regions$as_long[regions$as_region=="MiddleAfrica"] <- 17

regions$or_lat[regions$or_region=="EasternAfrica"] <- 3
regions$or_long[regions$or_region=="EasternAfrica"] <- 40
regions$as_lat[regions$as_region=="EasternAfrica"] <- 3
regions$as_long[regions$as_region=="EasternAfrica"] <- 40

regions$or_lat[regions$or_region=="SouthernAfrica"] <- -23
regions$or_long[regions$or_region=="SouthernAfrica"] <- 30
regions$as_lat[regions$as_region=="SouthernAfrica"] <- -23
regions$as_long[regions$as_region=="SouthernAfrica"] <- 30

regions$or_lat[regions$or_region=="NorthernAfrica"] <- 29
regions$or_long[regions$or_region=="NorthernAfrica"] <- 9
regions$as_lat[regions$as_region=="NorthernAfrica"] <- 29
regions$as_long[regions$as_region=="NorthernAfrica"] <- 9

regions$or_lat[regions$or_region=="CentralAsia"] <- 42
regions$or_long[regions$or_region=="CentralAsia"] <- 67
regions$as_lat[regions$as_region=="CentralAsia"] <- 42
regions$as_long[regions$as_region=="CentralAsia"] <- 67

regions$or_lat[regions$or_region=="EasternAsia"] <- 41
regions$or_long[regions$or_region=="EasternAsia"] <- 116
regions$as_lat[regions$as_region=="EasternAsia"] <- 41
regions$as_long[regions$as_region=="EasternAsia"] <- 116

regions$or_lat[regions$or_region=="SouthernAsia"] <- 23
regions$or_long[regions$or_region=="SouthernAsia"] <- 79
regions$as_lat[regions$as_region=="SouthernAsia"] <- 23
regions$as_long[regions$as_region=="SouthernAsia"] <- 79

regions$or_lat[regions$or_region=="South-EasternAsia"] <- 3
regions$or_long[regions$or_region=="South-EasternAsia"] <- 114
regions$as_lat[regions$as_region=="South-EasternAsia"] <- 3
regions$as_long[regions$as_region=="South-EasternAsia"] <- 114

regions$or_lat[regions$or_region=="Oceania"] <- -20
regions$or_long[regions$or_region=="Oceania"] <- 135
regions$as_lat[regions$as_region=="Oceania"] <- -20
regions$as_long[regions$as_region=="Oceania"] <- 135


#### creating subsets #### 

inner.regions <- subset(regions, or_region == as_region)

regions <- regions[regions$or_region!=regions$as_region,]

# subset for iso3c per region

iso3c <- subset(wrd, select = c("or_region","or_iso3c"))
iso3c <- iso3c[!duplicated(iso3c), ]

iso3c <- rename(iso3c, c("or_region"="region", "or_iso3c"="id"))
iso3c <- iso3c[order(iso3c$id),]

# writing csv files
write.csv(regions, file = "regions.csv")
write.csv(inner.regions, file = "inner_regions.csv")
write.csv(iso3c, file = "pre_iso3.csv")




#### 2. Datensatz FROM  Regions####
agg_from <- aggregate(tot_compl ~ or_region + asylum + as_region + as_iso3c + year,wrd, FUN = sum)

agg_from$tot_compl[agg_from$tot_compl<50] <- NA

agg_from <- na.omit(agg_from)

output <- data.frame()

## Northern America ##
nam <- subset(agg_from, or_region=="NorthernAmerica")
years <-unique(nam$year)

for (i in 1:length(years)) {
  out <- subset(nam, year==years[i])
  head <- out[order(-out$tot_compl),]
  output <- rbind(output, head(head, n=5L))
}


## Caribbean ##
cari <- subset(agg_from, or_region=="Caribbean")
years <-unique(cari$year)

for (i in 1:length(years)) {
  out <- subset(cari, year==years[i])
  head <- out[order(-out$tot_compl),]
  output <- rbind(output, head(head, n=5L))
}


## Central America ##
cam <- subset(agg_from, or_region=="CentralAmerica")
years <-unique(cam$year)

for (i in 1:length(years)) {
  out <- subset(cam, year==years[i])
  head <- out[order(-out$tot_compl),]
  output <- rbind(output, head(head, n=5L))
}


## South America ##
sam <- subset(agg_from, or_region=="SouthAmerica")
years <-unique(sam$year)

for (i in 1:length(years)) {
  out <- subset(sam, year==years[i])
  head <- out[order(-out$tot_compl),]
  output <- rbind(output, head(head, n=5L))
}


## Western Europe ##
weu <- subset(agg_from, or_region=="WesternEurope")
years <-unique(weu$year)

for (i in 1:length(years)) {
  out <- subset(weu, year==years[i])
  head <- out[order(-out$tot_compl),]
  output <- rbind(output, head(head, n=5L))
}


## Southern Europe ##
seu <- subset(agg_from, or_region=="SouthernEurope")
years <-unique(seu$year)

for (i in 1:length(years)) {
  out <- subset(seu, year==years[i])
  head <- out[order(-out$tot_compl),]
  output <- rbind(output, head(head, n=5L))
}


## Eastern Europe ##
eeu <- subset(agg_from, or_region=="EasternEurope")
years <-unique(eeu$year)

for (i in 1:length(years)) {
  out <- subset(eeu, year==years[i])
  head <- out[order(-out$tot_compl),]
  output <- rbind(output, head(head, n=5L))
}


## Northern Europe ##
neu <- subset(agg_from, or_region=="NorthernEurope")
years <-unique(neu$year)

for (i in 1:length(years)) {
  out <- subset(neu, year==years[i])
  head <- out[order(-out$tot_compl),]
  output <- rbind(output, head(head, n=5L))
}


## Western Asia ##
was <- subset(agg_from, or_region=="WesternAsia")
years <-unique(was$year)

for (i in 1:length(years)) {
  out <- subset(was, year==years[i])
  head <- out[order(-out$tot_compl),]
  output <- rbind(output, head(head, n=5L))
}


## Western Africa ##
waf <- subset(agg_from, or_region=="WesternAfrica")
years <-unique(waf$year)

for (i in 1:length(years)) {
  out <- subset(waf, year==years[i])
  head <- out[order(-out$tot_compl),]
  output <- rbind(output, head(head, n=5L))
}


## Middle Africa ##
maf <- subset(agg_from, or_region=="MiddleAfrica")
years <-unique(maf$year)

for (i in 1:length(years)) {
  out <- subset(maf, year==years[i])
  head <- out[order(-out$tot_compl),]
  output <- rbind(output, head(head, n=5L))
}


## Eastern Africa ##
eaf <- subset(agg_from, or_region=="EasternAfrica")
years <-unique(eaf$year)

for (i in 1:length(years)) {
  out <- subset(eaf, year==years[i])
  head <- out[order(-out$tot_compl),]
  output <- rbind(output, head(head, n=5L))
}


## Southern Africa ##
saf <- subset(agg_from, or_region=="SouthernAfrica")
years <-unique(saf$year)

for (i in 1:length(years)) {
  out <- subset(saf, year==years[i])
  head <- out[order(-out$tot_compl),]
  output <- rbind(output, head(head, n=5L))
}


## Northern Africa ##
naf <- subset(agg_from, or_region=="NorthernAfrica")
years <-unique(naf$year)

for (i in 1:length(years)) {
  out <- subset(naf, year==years[i])
  head <- out[order(-out$tot_compl),]
  output <- rbind(output, head(head, n=5L))
}


## Central Asia ##
cas <- subset(agg_from, or_region=="CentralAsia")
years <-unique(cas$year)

for (i in 1:length(years)) {
  out <- subset(cas, year==years[i])
  head <- out[order(-out$tot_compl),]
  output <- rbind(output, head(head, n=5L))
}


## Eastern Asia ##
eas <- subset(agg_from, or_region=="EasternAsia")
years <-unique(eas$year)

for (i in 1:length(years)) {
  out <- subset(eas, year==years[i])
  head <- out[order(-out$tot_compl),]
  output <- rbind(output, head(head, n=5L))
}


## Southern Asia ##
sas <- subset(agg_from, or_region=="SouthernAsia")
years <-unique(sas$year)

for (i in 1:length(years)) {
  out <- subset(sas, year==years[i])
  head <- out[order(-out$tot_compl),]
  output <- rbind(output, head(head, n=5L))
}


## Southern-Eastern Asia ##
sea <- subset(agg_from, or_region=="South-EasternAsia")
years <-unique(sea$year)

for (i in 1:length(years)) {
  out <- subset(sea, year==years[i])
  head <- out[order(-out$tot_compl),]
  output <- rbind(output, head(head, n=5L))
}


## Oceania ##
oce <- subset(agg_from, or_region=="Oceania")
years <-unique(oce$year)

for (i in 1:length(years)) {
  out <- subset(oce, year==years[i])
  head <- out[order(-out$tot_compl),]
  output <- rbind(output, head(head, n=5L))
}


# creating dataframe and csv file
top5from <- output
write.csv(top5from, file = "top5from_region.csv")



######################
#### 3. Datensatz ####
######################

agg_to <- aggregate(tot_compl ~ as_region + origin + or_region + or_iso3c + year,wrd, FUN = sum)

agg_to$tot_compl[agg_to$tot_compl<50] <- NA

agg_to <- na.omit(agg_to)

output <- data.frame()

## Northern America ##
nam <- subset(agg_to, as_region=="NorthernAmerica")
years <-unique(nam$year)
output <- data.frame()

for (i in 1:length(years)) {
  out <- subset(nam, year==years[i])
  head <- out[order(-out$tot_compl),]
  output <- rbind(output, head(head, n=5L))
}


## Caribbean ##
cari <- subset(agg_to, as_region=="Caribbean")
years <-unique(cari$year)

for (i in 1:length(years)) {
  out <- subset(cari, year==years[i])
  head <- out[order(-out$tot_compl),]
  output <- rbind(output, head(head, n=5L))
}


## Central America ##
cam <- subset(agg_to, as_region=="CentralAmerica")
years <-unique(cam$year)

for (i in 1:length(years)) {
  out <- subset(cam, year==years[i])
  head <- out[order(-out$tot_compl),]
  output <- rbind(output, head(head, n=5L))
}


## South America ##
sam <- subset(agg_to, as_region=="SouthAmerica")
years <-unique(sam$year)

for (i in 1:length(years)) {
  out <- subset(sam, year==years[i])
  head <- out[order(-out$tot_compl),]
  output <- rbind(output, head(head, n=5L))
}


## Western Europe ##
weu <- subset(agg_to, as_region=="WesternEurope")
years <-unique(weu$year)

for (i in 1:length(years)) {
  out <- subset(weu, year==years[i])
  head <- out[order(-out$tot_compl),]
  output <- rbind(output, head(head, n=5L))
}


## Southern Europe ##
seu <- subset(agg_to, as_region=="SouthernEurope")
years <-unique(seu$year)

for (i in 1:length(years)) {
  out <- subset(seu, year==years[i])
  head <- out[order(-out$tot_compl),]
  output <- rbind(output, head(head, n=5L))
}


## Eastern Europe ##
eeu <- subset(agg_to, as_region=="EasternEurope")
years <-unique(eeu$year)

for (i in 1:length(years)) {
  out <- subset(eeu, year==years[i])
  head <- out[order(-out$tot_compl),]
  output <- rbind(output, head(head, n=5L))
}


## Northern Europe ##
neu <- subset(agg_to, as_region=="NorthernEurope")
years <-unique(neu$year)

for (i in 1:length(years)) {
  out <- subset(neu, year==years[i])
  head <- out[order(-out$tot_compl),]
  output <- rbind(output, head(head, n=5L))
}


## Western Asia ##
was <- subset(agg_to, as_region=="WesternAsia")
years <-unique(was$year)

for (i in 1:length(years)) {
  out <- subset(was, year==years[i])
  head <- out[order(-out$tot_compl),]
  output <- rbind(output, head(head, n=5L))
}


## Western Africa ##
waf <- subset(agg_to, as_region=="WesternAfrica")
years <-unique(waf$year)

for (i in 1:length(years)) {
  out <- subset(waf, year==years[i])
  head <- out[order(-out$tot_compl),]
  output <- rbind(output, head(head, n=5L))
}


## Middle Africa ##
maf <- subset(agg_to, as_region=="MiddleAfrica")
years <-unique(maf$year)

for (i in 1:length(years)) {
  out <- subset(maf, year==years[i])
  head <- out[order(-out$tot_compl),]
  output <- rbind(output, head(head, n=5L))
}


## Eastern Africa ##
eaf <- subset(agg_to, as_region=="EasternAfrica")
years <-unique(eaf$year)

for (i in 1:length(years)) {
  out <- subset(eaf, year==years[i])
  head <- out[order(-out$tot_compl),]
  output <- rbind(output, head(head, n=5L))
}


## Southern Africa ##
saf <- subset(agg_to, as_region=="SouthernAfrica")
years <-unique(saf$year)

for (i in 1:length(years)) {
  out <- subset(saf, year==years[i])
  head <- out[order(-out$tot_compl),]
  output <- rbind(output, head(head, n=5L))
}


## Northern Africa ##
naf <- subset(agg_to, as_region=="NorthernAfrica")
years <-unique(naf$year)

for (i in 1:length(years)) {
  out <- subset(naf, year==years[i])
  head <- out[order(-out$tot_compl),]
  output <- rbind(output, head(head, n=5L))
}


## Central Asia ##
cas <- subset(agg_to, as_region=="CentralAsia")
years <-unique(cas$year)

for (i in 1:length(years)) {
  out <- subset(cas, year==years[i])
  head <- out[order(-out$tot_compl),]
  output <- rbind(output, head(head, n=5L))
}


## Eastern Asia ##
eas <- subset(agg_to, as_region=="EasternAsia")
years <-unique(eas$year)

for (i in 1:length(years)) {
  out <- subset(eas, year==years[i])
  head <- out[order(-out$tot_compl),]
  output <- rbind(output, head(head, n=5L))
}


## Southern Asia ##
sas <- subset(agg_to, as_region=="SouthernAsia")
years <-unique(sas$year)

for (i in 1:length(years)) {
  out <- subset(sas, year==years[i])
  head <- out[order(-out$tot_compl),]
  output <- rbind(output, head(head, n=5L))
}


## Southern-Eastern Asia ##
sea <- subset(agg_to, as_region=="South-EasternAsia")
years <-unique(sea$year)

for (i in 1:length(years)) {
  out <- subset(sea, year==years[i])
  head <- out[order(-out$tot_compl),]
  output <- rbind(output, head(head, n=5L))
}


## Oceania ##
oce <- subset(agg_to, as_region=="Oceania")
years <-unique(oce$year)

for (i in 1:length(years)) {
  out <- subset(oce, year==years[i])
  head <- out[order(-out$tot_compl),]
  output <- rbind(output, head(head, n=5L))
}


# creating dataframe and csv file
top5to <- output
write.csv(top5to, file = "top5to_region.csv")
