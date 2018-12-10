Test for:

* https://github.com/ruslo/hunter/pull/1661

.. code-block:: none

  > docker build .
  ...
  Removing intermediate container 37dd683ddc81
   ---> b844fa8064dd
  Successfully built b844fa8064dd

  > docker run -it b844fa8064dd bash

  > TOOLCHAIN=clang-cxx17 PROJECT_DIR=examples/Boost ./jenkins.py

  > TOOLCHAIN=clang-cxx17 PROJECT_DIR=examples/Boost-system ./jenkins.py
