library(shiny)

fluidPage(
  titlePanel(title = " Latihan1 Aplikasi Shiny..."),
  sidebarLayout(
    sidebarPanel(
      numericInput(inputId = "n", "Sample size", value = 10)
    ),
    mainPanel(
      plotOutput(outputId = "box")
    )
  )
)
