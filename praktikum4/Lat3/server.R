function(input, output) {
  output$box <- renderPlot({
    sepall <- subset(
      iris,
      Sepal.Length >= 4.3 & Sepal.Length < input$sepallength,
      select = c(Sepal.Length, Species)
    )
    sepalw <- subset(
      iris,
      Sepal.Width >= 2 & Sepal.Width < input$sepalwidth,
      select = c(Sepal.Width, Species)
    )
    petall <- subset(
      iris,
      Petal.Length >= input$petallength[1] &
        Petal.Length < input$petallength[2],
      select = c(Petal.Length, Species)
    )
    petalw <- subset(
      iris,
      Petal.Width >= 0.1 & Petal.Width < input$petalwidth,
      select = c(Petal.Width, Species)
    )
    testa <- ggplot(sepall, aes(
      x = Species,
      y = Sepal.Length
    )) +
      geom_boxplot(col = "blue") +
      theme_bw()
    testb <- ggplot(sepalw, aes(
      x = Species,
      y = Sepal.Width
    )) +
      geom_boxplot(col = "red") +
      theme_bw()
    testc <- ggplot(petall, aes(
      x = Species,
      y = Petal.Length
    )) +
      geom_boxplot(col = "green") +
      theme_bw()
    testd <- ggplot(petalw, aes(
      x = Species,
      y = Petal.Width
    )) +
      geom_boxplot(col = "orange") +
      theme_bw()
    grid.arrange(testa, testb, testc, testd, nrow = 1)
  })
}
