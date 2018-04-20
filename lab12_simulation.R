generate_data= function(n, p){
  covariates=matrix(rnorm(n*p, 0, 1), n, p)
  response= rnorm(n, 0, 1)
  return (list(covariates, response))
}

model_select= function(covariates, responses, cutoff){
  
  b=lm(responses ~ covariates)
  c=summary(b)
  return (b[c$coefficients[,ncol(c$coefficients)]<cutoff])
  
}

