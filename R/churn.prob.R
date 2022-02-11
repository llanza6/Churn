#'
#'
#'
#'
#'
#'
churn.prob<- function(data1=data.merged,Customer){

  model<-glm(formula=Exit~CreditScore+Gender+Age+Tenure+Balance+NumOfProducts+HasCrCard+IsActiveMember+EstimatedSalary,family="binomial",data=data1)

  data.merged[, Prediction:=predict(model, data.merged, type="response")]

  value <- data1[CustomerId==Customer, Prediction]

  if (Customer %in% data1$CustomerId) {
    print(value)
  } else {
    print("CustomerID not found")
  }
}

