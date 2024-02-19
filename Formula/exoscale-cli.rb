# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ExoscaleCli < Formula
  desc "Manage easily your Exoscale infrastructure from the command-line."
  homepage "https://exoscale.github.io/cli/"
  version "1.76.1"

  on_macos do
    url "https://github.com/exoscale/cli/releases/download/v1.76.1/exoscale-cli_1.76.1_darwin_all.tar.gz"
    sha256 "d500fe53e7a4bd56ba7863947c8f2923a0d7d331ce6c35f909dfdb37a05261ba"

    def install
      bin.install "exo"
      man1.install Dir["manpage/exo*.1"]
      bash_completion.install "contrib/completion/bash/exo"
      fish_completion.install "contrib/completion/fish/exo"
      zsh_completion.install "contrib/completion/zsh/_exo"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/exoscale/cli/releases/download/v1.76.1/exoscale-cli_1.76.1_linux_arm64.tar.gz"
      sha256 "67af96b3ab5f87757517e870b89306a4b210b4c070bd667798fadfad95274f8d"

      def install
        bin.install "exo"
        man1.install Dir["manpage/exo*.1"]
        bash_completion.install "contrib/completion/bash/exo"
        fish_completion.install "contrib/completion/fish/exo"
        zsh_completion.install "contrib/completion/zsh/_exo"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/exoscale/cli/releases/download/v1.76.1/exoscale-cli_1.76.1_linux_amd64.tar.gz"
      sha256 "7d1c946ab0db2353fb6c67780ada10edb7f4d9ca97feaab864321f80b0fbab64"

      def install
        bin.install "exo"
        man1.install Dir["manpage/exo*.1"]
        bash_completion.install "contrib/completion/bash/exo"
        fish_completion.install "contrib/completion/fish/exo"
        zsh_completion.install "contrib/completion/zsh/_exo"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/exoscale/cli/releases/download/v1.76.1/exoscale-cli_1.76.1_linux_armv6.tar.gz"
      sha256 "6cb3044ccf18da37861141c65fe997d628a029dd12e410e886d145ca0ad74e22"

      def install
        bin.install "exo"
        man1.install Dir["manpage/exo*.1"]
        bash_completion.install "contrib/completion/bash/exo"
        fish_completion.install "contrib/completion/fish/exo"
        zsh_completion.install "contrib/completion/zsh/_exo"
      end
    end
  end
end
