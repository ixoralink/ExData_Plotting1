## Contents

4 R codes for generating each plot and 4 plots corresponding to their specific R codes. Each R code runs independently to generate their corresponding graph. 

plot1.R will generate plot1.png
plot2.R will generate plot2.png
plot3.R will generate plot3.png
plot4.R will generate plot4.png



## Introduction

This assignment uses data from
the <a href="http://archive.ics.uci.edu/ml/">UC Irvine Machine
Learning Repository</a>, a popular repository for machine learning
datasets. In particular, we will be using the "Individual household
electric power consumption Data Set" which I have made available on
the course web site:


* <b>Dataset</b>: <a href="https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip">Electric power consumption</a> [20Mb]

* <b>Description</b>: Measurements of electric power consumption in
one household with a one-minute sampling rate over a period of almost
4 years. Different electrical quantities and some sub-metering values
are available.


The following descriptions of the 9 variables in the dataset are taken
from
the <a href="https://archive.ics.uci.edu/ml/datasets/Individual+household+electric+power+consumption">UCI
web site</a>:

<ol>
<li><b>Date</b>: Date in format dd/mm/yyyy </li>
<li><b>Time</b>: time in format hh:mm:ss </li>
<li><b>Global_active_power</b>: household global minute-averaged active power (in kilowatt) </li>
<li><b>Global_reactive_power</b>: household global minute-averaged reactive power (in kilowatt) </li>
<li><b>Voltage</b>: minute-averaged voltage (in volt) </li>
<li><b>Global_intensity</b>: household global minute-averaged current intensity (in ampere) </li>
<li><b>Sub_metering_1</b>: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered). </li>
<li><b>Sub_metering_2</b>: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light. </li>
<li><b>Sub_metering_3</b>: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.</li>
</ol>

## Loading and extracting the data

* Data is read from the provided URL and unzipped to specified folder

* Entire data is read into a data table

* We only extract data for the dates 2007-02-01 and 2007-02-02 and delete the original file with the whole data

* The Date and Time variables have been converted to Date/Time classes in R using the `strptime()` and `as.Date()` functions.


## Plots

The goal is to examine household energy usage over a 2-day period in February, 2007. 

* All plots are constructed and saved to PNGs file with a width of 480
pixels and a height of 480 pixels

* Separate R codes are provided to enable anyone to reproduce the graphs

* PNG files are provided after running the codes


