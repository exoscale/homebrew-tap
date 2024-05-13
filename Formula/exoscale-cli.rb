# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ExoscaleCli < Formula
  desc "Manage easily your Exoscale infrastructure from the command-line."
  homepage "https://exoscale.github.io/cli/"
  version "1.78.2"

  on_macos do
    url "https://github.com/exoscale/cli/releases/download/v1.78.2/exoscale-cli_1.78.2_darwin_all.tar.gz"
    sha256 "6dc8448fd83922528c9fb37422c319cdb029a1094e21c220eaede36232841c21"

    def install
      bin.install "exo"
      man1.install Dir["manpage/exo*.1"]
      bash_completion.install "contrib/completion/bash/exo"
      fish_completion.install "contrib/completion/fish/exo"
      zsh_completion.install "contrib/completion/zsh/_exo"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/exoscale/cli/releases/download/v1.78.2/exoscale-cli_1.78.2_linux_armv6.tar.gz"
      sha256 "29ffda4d57de8324f90e45fe691eb5af56ab76ccf07f4a6d28261e99022272cf"

      def install
        bin.install "exo"
        man1.install Dir["manpage/exo*.1"]
        bash_completion.install "contrib/completion/bash/exo"
        fish_completion.install "contrib/completion/fish/exo"
        zsh_completion.install "contrib/completion/zsh/_exo"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/exoscale/cli/releases/download/v1.78.2/exoscale-cli_1.78.2_linux_arm64.tar.gz"
      sha256 "57c26076dbeadfae678594695a7ef67e0ac985f6e4561e578840551351626eda"

      def install
        bin.install "exo"
        man1.install Dir["manpage/exo*.1"]
        bash_completion.install "contrib/completion/bash/exo"
        fish_completion.install "contrib/completion/fish/exo"
        zsh_completion.install "contrib/completion/zsh/_exo"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/exoscale/cli/releases/download/v1.78.2/exoscale-cli_1.78.2_linux_amd64.tar.gz"
      sha256 "023ef05a4130fbafd7e10912789bf14a82f43dd36ac6eb6a09fbfe62175b8714"

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
