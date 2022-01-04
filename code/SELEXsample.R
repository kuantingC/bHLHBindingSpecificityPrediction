

fn_fa <- system.file("extdata", "SELEXsample.fa", package = "DNAshapeR")
pred_fn <- getShape(fn_fa)

#plotShape(pred$MGW)
#plotShape(pred$Roll)
#
featureType <- c("1-mer")
featureVector <- encodeSeqShape(fn_fa, pred_fn, featureType)

fn_s <- system.file("extdata", "SELEXsample.s", package = "DNAshapeR")
experimentalData <- read.table(fn_s)
df <- data.frame(affinity=experimentalData$V1, featureVector)

trainControl <- trainControl(method = "cv", number = 10, savePredictions = TRUE)
model2 <- train (affinity~ ., data = df, trControl=trainControl, method="lm", preProcess=NULL)
summary(model2)



