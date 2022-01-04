
fn_fa <- system.file("extdata", "Mad.txt.fa", package = "DNAshapeR")
pred_fn <- getShape(fn_fa)

featureType <- c("1-mer","1-shape")
featureVector <- encodeSeqShape(fn_fa, pred_fn, featureType)

fn_s <- system.file("extdata", "Mad.txt.s", package = "DNAshapeR")
experimentalData <- read.table(fn_s)
df <- data.frame(affinity=experimentalData$V1, featureVector)

trainControl <- trainControl(method = "cv", number =3, savePredictions = TRUE )

gbmGrid <-  expand.grid(interaction.depth = c(1, 5, 9),
                        n.trees = (1:30)*10,
                        shrinkage = 0.1,
                        n.minobsinnode = 20)
#gbmGrid <- expand.grid(C = 0.1)
model2 <- train (affinity ~ ., data = df, trControl=trainControl, method="gbm",tuneGrid = gbmGrid)
summary(model2)




for (i in 1:5){
  
      gbmGrid <-  expand.grid(C = 0.5)
      model_svm <- train (affinity~ ., data = df, trControl=trainControl, method="svmLinear", tuneGrid = gbmGrid) 
      model_svm
  }

