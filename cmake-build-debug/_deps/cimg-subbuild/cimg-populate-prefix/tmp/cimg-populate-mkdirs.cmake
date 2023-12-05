# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "C:/Users/Rate/Desktop/cs3520/backupproject/cmake-build-debug/_deps/cimg-src"
  "C:/Users/Rate/Desktop/cs3520/backupproject/cmake-build-debug/_deps/cimg-build"
  "C:/Users/Rate/Desktop/cs3520/backupproject/cmake-build-debug/_deps/cimg-subbuild/cimg-populate-prefix"
  "C:/Users/Rate/Desktop/cs3520/backupproject/cmake-build-debug/_deps/cimg-subbuild/cimg-populate-prefix/tmp"
  "C:/Users/Rate/Desktop/cs3520/backupproject/cmake-build-debug/_deps/cimg-subbuild/cimg-populate-prefix/src/cimg-populate-stamp"
  "C:/Users/Rate/Desktop/cs3520/backupproject/cmake-build-debug/_deps/cimg-subbuild/cimg-populate-prefix/src"
  "C:/Users/Rate/Desktop/cs3520/backupproject/cmake-build-debug/_deps/cimg-subbuild/cimg-populate-prefix/src/cimg-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "C:/Users/Rate/Desktop/cs3520/backupproject/cmake-build-debug/_deps/cimg-subbuild/cimg-populate-prefix/src/cimg-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "C:/Users/Rate/Desktop/cs3520/backupproject/cmake-build-debug/_deps/cimg-subbuild/cimg-populate-prefix/src/cimg-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
