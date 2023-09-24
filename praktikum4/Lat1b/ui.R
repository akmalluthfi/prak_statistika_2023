library(shiny)

fluidPage(
  titlePanel(title = " Latihan1b Aplikasi Shiny..."),
  sidebarLayout(
    sidebarPanel(
      numericInput(
        inputId = "n",
        "Ukuran Sampel",
        value = 10
      ),
      numericInput(
        inputId = "p",
        "Probabilitas",
        min = 0.05,
        max = 0.95,
        value = 0.2,
        step = 0.05
      )
    ),
    mainPanel(
      plotOutput(outputId = "hist")
    )
  ),
)
