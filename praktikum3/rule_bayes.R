#             m | l | c
# beban kerja 60 | 30 | 10
# prob.prior 0.6 | 0.3 | 0.1
# kesalagan file 0.003 | 0.007 | 0.01

prior <- c(0.6, 0.3, 0.1)
like <- c(0.003, 0.007, 0.01)
post <- prior * like
post / sum(post)
