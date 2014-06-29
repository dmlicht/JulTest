JulTest
=======
Easy unit testing in Julia. Inspired by pytest.

setup
------
put your tests in /test at the root of your project

syntax
------
#we say case to indate the upcoming block is a test case, then feed it the description.
@case begin "This is the description of my test"
  @assert 1 == 2
end

