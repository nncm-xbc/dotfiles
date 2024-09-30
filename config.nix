{
  packageOverrides = pkgs: with pkgs; {
    myPackages = pkgs.buildEnv {
      name = "orbital-transfer-pso-packages";
      paths = [
        gcc
        gdb
        make
        cmake
        openmp
        eigen
        boost
        gsl
        nlopt
        openmpi
        vtk
        nlohmann_json
        spdlog
        googletest
        valgrind
        git
      ];
    };
  };
}
