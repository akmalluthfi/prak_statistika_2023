library(shiny)

fluidPage(
  titlePanel(title = "Latihan2 ShinyApp..."),
  sidebarLayout(
    sidebarPanel(
      numericInput(inputId = "n", "Ukuran Sampel", value = 10),
      textInput(inputId = "title", "Judul dari ...", "Boxplot ..."),
      radioButtons(
        inputId = "color", "Pilih...",
        list("Blue", "Green"), "Green"
      ), submitButton("Ubah")
    ),
    mainPanel(
      plotOutput(output = "box")
    )
  )
)
