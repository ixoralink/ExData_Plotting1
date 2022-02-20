# Set working directory
getwd()
setwd('C:\\Users\\Seshadri Family\\Desktop\\coursera\\04_ExDataAnalysis')
list.files()

# Specify url indicated for project
project_url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"

#--------------------------------

#    INITIALZATTION

#--------------------------------

# Give a name for the zip file
zipfile <- "hpc.zip"

# Check if data set folder already exists 
# If folder does not exist, download zip file from url 
# and unzip contents into same folder
# Remove downloaded zip file after file extraction

if (!file.exists("household_power_consumption.txt")) { 
  download.file(project_url, zipfile)
  unzip(zipfile) 
  file.remove(zipfile)
} else { print("File already extracted")}

list.files()

# Read Activity Labels file and give names to the columns
hpc_data = read.table("household_power_consumption.txt", header=T, sep=";",na.strings = "?")

head(hpc_data)
names(hpc_data)

class(hpc_data$Date)
class(hpc_data$Time)
sapply(hpc_subdata,class)

#--------------------------------------------
#    Transform Date class & Subset Data
#--------------------------------------------

# as.Date function to convert Date "character" to "date"
hpc_data$Date <- as.Date(hpc_data$Date, "%d/%m/%Y" )
hpc_data$Date

# Create a subset of data only for specified dates
#hpc_subdata <- subset(hpc_data,hpc_data$Date >=date_start & hpc_data$Date <=date_end)
hpc_subdata <- hpc_data[hpc_data$Date == "2007-02-01" | hpc_data$Date == "2007-02-02", ]

# check data
head(hpc_subdata)
tail(hpc_subdata)

#--------------------------------------------
# Remove Old files and tables to save space
#--------------------------------------------
file.remove("household_power_consumption.txt")
rm(hpc_data)


#----------------------------------
#    Transform Time class
#----------------------------------

class(hpc_subdata$Time)

hpc_subdata$Time <- strptime(paste(hpc_subdata$Date, hpc_subdata$Time), "%Y-%m-%d %H:%M:%S")

head(hpc_subdata$Time)

#----------------------------
#  Generate Plots
#----------------------------


#----------------------------
#  PLOT 1 - 
#----------------------------

# open output device
png("plot1.png", width=480, height=480, units="px")
# generate plot
hist((hpc_subdata$Global_active_power),col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)")
# close output device
dev.off()
