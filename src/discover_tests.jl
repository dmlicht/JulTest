push!(LOAD_PATH, "src")
import JulTest: runtests

function collect()
  test_dir = "test/"
  test_dir_exists::Bool = isdir(test_dir)
  if test_dir_exists
    filenames::Array{String} = readdir(test_dir)
    map(filename -> include("../$test_dir$filename"), filenames) #figure out how paths work better
  else
    println("testdir not found")
  end
end

collect()
runtests()
