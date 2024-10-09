{
  packageOverrides = pkgs: with pkgs; {
    myPackages = pkgs.buildEnv {
      name = "orb-pso-tools";
      paths = [
        neovim
        zsh-completions
        gcc
        gdb
        cmake
        llvmPackages_12.openmp
        eigen
        mpi
        valgrind
        git
      ];
    };
  };
}
