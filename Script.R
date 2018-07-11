#' ---
#' title: Regression
#' author: Data Services at the Claude Moore Health Sciences Library
#' date: University of Virginia
#' output:
#'    html_document:
#'      highlight: default
#' ---

#' This lesson will introduce you to linear regression modeling in R. We will cover how to create a model and analyze the significance of the slope and how to check the assumptions.
#' 
#'
#' In this lesson, the data we're going to work with comes from the National Health and Nutrition Examination Survey (NHANES) program at the CDC. NHANES is a research program designed to assess the health and nutritional status of adults and children in the United States. It began in the 1960s and since 1999 examines a nationally representative sample of about 5,000 people each year. The NHANES interview includes demographic, socioeconomic, dietary, and health-related questions. The physical exam includes medical, dental, and physiological measurements, as well as several standard laboratory tests. NHANES is used to determine the prevalence of major diseases and risk factors for those diseases. NHANES data are also the basis for national standards for measurements like height, weight, and blood pressure. Data from this survey is used in epidemiology studies and health sciences research, which help develop public health policy, direct and design health programs and services, and expand the health knowledge for the Nation.

#' We are using a small slice of this data. We're only using a handful of variables from the 2011-2012 survey years on about 5,000 individuals.

#' ## First we will load the nhanes.csv dataset
library(tidyverse)
nh <- read_csv("data/nhanes.csv")
nh

#' Now we will filter the nh dataset so it just contains adults (>= 18 years old) and save the new dataset as nha

nha <- nh %>%
  filter(Age >= 18)