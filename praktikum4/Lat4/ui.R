fluidPage(
  titlePanel(title = "Aplikasi ke-4 ..."),
  sidebarLayout(
    sidebarPanel(
      selectInput(
        inputId = "var", "1. Pilih ...",
        choices = c(
          "Sepal.Length" = 1, "Sepal.Width" = 2,
          "Petal.Length" = 3, "Petal.Width" = 4
        ), selected = 3,
        selectize = FALSE
      ), sliderInput(
        inputId = "bin",
        "2. Pilih ...", min = 5, max = 25, value = 15
      ),
      radioButtons(
        inputId = "colour",
        label = "3. Pilih ...", choices = c(
          "grey", "green", "yellow",
          "magenta", "orange"
        ), selected = "grey"
      )
    ),
    mainPanel(
      tabsetPanel(
        type = "tab",
        tabPanel(
          "Panel 1",
          textOutput(outputId = "text1"),
          plotOutput(outputId = "myhist")
        ),
        tabPanel(
          "Panel 2",
          tableOutput(outputId = "summary")
        )
      )
    )
  )
)
