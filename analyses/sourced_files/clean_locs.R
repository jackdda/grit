#file to clean the hobo locs datafile 
locs<-locs[,1:18]

#clean the Pole_No column
locs$Pole_No[grep(" - Jointly Owned",locs$Pole_No)]<-gsub(" - Jointly Owned","",locs$Pole_No[grep(" - Jointly Owned",locs$Pole_No)])
locs$Pole_No[grep(" - Tacoma Power Owned",locs$Pole_No)]<-gsub(" - Tacoma Power Owned","",locs$Pole_No[grep(" - Tacoma Power Owned",locs$Pole_No)])
locs$Pole_No[grep("- Tacoma Power",locs$Pole_No)]<-gsub("- Tacoma Power","",locs$Pole_No[grep("- Tacoma Power",locs$Pole_No)])
locs$Pole_No[grep("Tp",locs$Pole_No)]<-gsub("Tp","TP",locs$Pole_No[grep("Tp",locs$Pole_No)])

#clean Hobo_SN column
locs$Hobo_SN[grep("Bt",locs$Hobo_SN)]<-gsub("Bt","BT",locs$Hobo_SN[grep("Bt",locs$Hobo_SN)])
locs$Hobo_SN[grep("BT ",locs$Hobo_SN)]<-gsub("BT ","BT",locs$Hobo_SN[grep("BT ",locs$Hobo_SN)])
locs$Hobo_SN[locs$Pole_No=="TP25887"]<-"NEEDTOFIX"

