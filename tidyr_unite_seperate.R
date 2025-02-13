##unite columns

df= data.frame(
  first_name=c("Ram","shyam","Ajay"),
  last_name=c("kumar","soni","deshmukh"),
  height = c(170,160,180),
  weight=c(90,45,20)
  )
  
  df
  
  unite(
    data = df,
    col = full_names,
    c(first_name,last_name),
    sep="_",
      remove=TRUE,
      )
  
  # copy again the above code and change seperator
  unite(
    data = df,
    col = full_names,
    c(first_name,last_name),
    sep="#",
    remove=TRUE,
  )
  
  # copy again the above code and change seperator
  unite(
    data = df,
    col = full_names,
    c(first_name,last_name),
    sep=" ",
    remove=TRUE,
  )
  
  
  # copy again the above code and change remove to FALSE
  unite(
    data = df,
    col = full_names,
    c(first_name,last_name),
    sep=" ",
    remove=FALSE,
  )
  
  ##Separate columns
  
  df= data.frame(
    full_name=c("Ram kumar","shyam soni","Ajay deshmukh"),
    height = c(170,160,180),
    weight=c(90,45,20)
  )
  
  df
  
  separate(
    data= df,
    col= full_name,
    into= c("first_name","last_name"),
    sep= " ",
    remove=TRUE
  )
  
  
  # copy again the above code and change remove to FALSE
  df_separate=separate(
    data= df,
    col= full_name,
    into= c("first_name","last_name"),
    sep= " ",
    remove=FALSE
  )
  df_separate
  
  