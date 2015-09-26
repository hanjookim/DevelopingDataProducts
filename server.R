FtoKf <- function(FtoK) ((FtoK - 32) * (5/9)) + 273.15
FtoCf <- function(FtoC) ((FtoC - 32) * (5/9))

shinyServer(
  function(input,output) {
    output$prediction1 <- renderPrint({FtoKf(input$temp)})
    output$prediction2 <- renderPrint({FtoCf(input$temp)})
  }
)
