prop.test(13, 100,
  p = 0.1, alternative = "two.sided",
  conf.level = 0.95, correct = TRUE
)

prop.test(13, 100,
  p = 0.1, alternative = "greater",
  conf.level = 0.95, correct = TRUE
)
prop.test(13, 100,
  p = 0.1, alternative = "greater",
  conf.level = 0.95
)

prop.test(13, 100,
  p = 0.1, alternative = "greater",
  conf.level = 0.95, correct = FALSE
)

prop.test(c(13, 20), c(100, 150),
  alternative = "greater",
  conf.level = 0.95
)

prop.test(c(13, 18), c(100, 150),
  alternative = "greater",
  conf.level = 0.95
)
