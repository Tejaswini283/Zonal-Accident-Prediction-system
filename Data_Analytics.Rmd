---
title: "Project"
output:
  word_document: default
  html_document: default
  pdf_document: default
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

#Loading the data
```{r}
library(readr)
satisfaction <- read_csv("/Users/tejaswini/Desktop/satisfaction.csv")
#View(satisfaction)
```

#Data Cleaning
```{r}
satisfaction$satisfaction_v2 <- ifelse(satisfaction$satisfaction_v2 == "satisfied",1,0)
satisfaction$Gender <- ifelse(satisfaction$Gender == "Male",0,1)
satisfaction$`Customer Type` <- ifelse(satisfaction$`Customer Type` == "Loyal Customer",1,0)
satisfaction$Gender <- ifelse(satisfaction$Gender == "Male",0,1)
satisfaction$`Type of Travel` <- ifelse(satisfaction$`Type of Travel` == "Personal Travel",0,1)

```

```{r}
satisfaction$Class <- as.factor(satisfaction$Class)
satisfaction$Class <- as.numeric(satisfaction$Class)
```

```{r}

satisfaction <- na.omit(satisfaction)
nrow(satisfaction)
```
#Splitting data

```{r}
library(caret)
set.seed(42)
partition <- createDataPartition(y = satisfaction$satisfaction_v2, p = 0.7, list = F)

```

```{r}
trainingdata = satisfaction[partition, ]
test <- satisfaction[-partition, ]
```


```{r}
library(class)
library(e1071)
svm.model <- svm(satisfaction_v2 ~ ., data <- trainingdata,type <- 'C-classification',kernel <- 'linear')

```

```{r}
pred <- predict(svm.model,test)
pred
```

```{r}
confmatrix <- confusionMatrix(table(pred,test$satisfaction_v2))
confmatrix

```

