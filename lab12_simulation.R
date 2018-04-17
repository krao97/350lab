generate_data= function(n, p){
  covariates=matrix(rnorm(n*p, 0, 1), n, p)
  response= rnorm(n, 0, 1)
  return (list(covariates, response))
}