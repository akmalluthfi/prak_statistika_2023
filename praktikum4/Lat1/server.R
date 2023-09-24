function(input, output) {
  output$box <- renderPlot({
    boxplot(
      rnorm(input$n),
      col = "green",
      border = "blue",
      main = "Boxplot Hasil Pembangkitan Distribusi Normal",
      xlab = "Sample data"
    )
  })
}
