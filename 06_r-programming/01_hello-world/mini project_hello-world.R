# Define the hello_world() function that provides personalized greetings based on time
hello_world <- function(name, current_time = Sys.time(), language = "English") {
  date_time <- as.POSIXct(current_time, format="%Y-%m-%d %H:%M:%OS")

  # Extract the date and hour information
  date <- as.Date(date_time)  
  hour <- as.numeric(format(date_time, "%H"))
  
  if (date >= as.Date("2025-01-28") & date <= as.Date("2025-02-04")) {
    if (language == "Chinese") {
      greeting <- paste("Xin nian kuai le,", name, "!")
    } else {
      greeting <- paste("Happy Lunar New Year,", name, "!")
    }
  } else {
    if (hour >= 5 & hour < 12) {
      greeting_en <- "Good morning"
      greeting_cn <- "Zao shang hao"
    } else if (hour >= 12 & hour < 18) {
      greeting_en <- "Good afternoon"
      greeting_cn <- "Xia wu hao"
    } else if (hour >= 18 & hour < 22) {
      greeting_en <- "Good evening"
      greeting_cn <- "Wan shang hao"
    } else {
      greeting_en <- "Good night"
      greeting_cn <- "Wan an"
    }

    if (language == "Chinese") {
      greeting <- paste(greeting_cn, name, "!")
    } else {
      greeting <- paste(greeting_en, name, "!")
    }
  }
  
  return(greeting)
}

