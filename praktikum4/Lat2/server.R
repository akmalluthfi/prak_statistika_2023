function(input, output) {
  output$box <- renderPlot({
    boxplot(rnorm(input$n),
      col = input$color,
      main = input$title, xlab = "Data Sampel"
    )
  })
}
