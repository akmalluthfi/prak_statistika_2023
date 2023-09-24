function(input, output) {
  output$text1 <- renderText({
    colm <- as.numeric(input$var)
    paste(" ...", names(iris[colm]))
  })
  output$myhist <- renderPlot({
    colm <- as.numeric(input$var)
    hist(iris[, colm],
      col = input$colour,
      xlim = c(0, max(iris[, colm])),
      main = "Histogram Dataset Iris",
      breaks = seq(0, max(iris[, colm]), l = input$bin + 1),
      xlab = names(iris[colm])
    )
  })
  output$summary <- renderTable({
    summary(iris)
  })
}
