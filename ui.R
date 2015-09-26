shinyUI(
  pageWithSidebar(
    headerPanel("Temperature Conversion"),
    
    sidebarPanel(
      numericInput('temp', 'Temperature in Fahrenheit', 0,
                   min=-100, max=1000),
      submitButton('Submit')
    ),
    mainPanel(
      h3('Results of Conversion'),
      h4('Temperature in Kelvin'),
      verbatimTextOutput("prediction1"),
      h4('Temperature in Celsius'),
      verbatimTextOutput("prediction2"),
      h5('Please enter a number between -100 and 1000 in the left box.'),
      h5('This number is a degree in Fahrenheit.'),
      h5('Click Submit.'),
      h5('The converted degrees in Kelvin and Celsius are shown above.')
    )
  )
)