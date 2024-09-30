{
  packageOverrides = pkgs: with pkgs; {
    myPackages = pkgs.buildEnv {
      name = "orb-pso-tools";
      paths = [
        neovim
        zsh-completions
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
