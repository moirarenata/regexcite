test_that("my_add takes in only one input variable", {
  expect_equal(my_add(1), 11)
  expect_equal(my_add(3), 13)
})

test_that("my_add returns correct sum based on the given input", {
  expect_equal(my_add(1, 2), 3)
  expect_equal(my_add(2, 3), 5)
})

test_that("my_add returns NA for input with at least one NA value", {
  expect_identical(my_add(NA), NA)
  expect_identical(my_add(10, NA), NA)
  expect_identical(my_add(NA, 10), NA)
  expect_identical(my_add(NA, NA), NA)
})

test_that("my_add() returns an error message if at least one input variable is a string", {
            expect_error(my_add("1"), "One of your inputs contains a string value")
            expect_error(my_add("2", 1), "One of your inputs contains a string value")
            expect_error(my_add(2, "1"), "One of your inputs contains a string value")
            expect_error(my_add("2", "1"), "One of your inputs contains a string value")
})
