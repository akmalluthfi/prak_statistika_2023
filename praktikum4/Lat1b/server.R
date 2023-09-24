function(input, output) {
  output$hist <- renderPlot({
    x <- seq(0, input$n, by = 1)
    y <- dbinom(x, input$n, input$p)

    plot(
      x,
      y,
      type = "h",
      col = "blue",
      border = "green",
      main = "Peluang Hasil Pembangkitan Distribusi Binomial",
      xlab = "Data Sample",
      ylab = "Probabilitas"
    )
  })
}
