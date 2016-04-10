FILE(REMOVE_RECURSE
  "CMakeFiles/example.dir/src/main.cpp.o"
  "debug/example.pdb"
  "debug/example"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang CXX)
  INCLUDE(CMakeFiles/example.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
