# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ExoscaleCli < Formula
  desc "Manage easily your Exoscale infrastructure from the command-line."
  homepage "https://exoscale.github.io/cli/"
  version "1.75.0"

  on_macos do
    url "https://github.com/exoscale/cli/releases/download/v1.75.0/exoscale-cli_1.75.0_darwin_all.tar.gz"
    sha256 "bb2b6ed7ef0acee3287913110947c34f824744cf8a8aab0a2cc3a104987f4e48"

    def install
      bin.install "exo"
      man1.install Dir["manpage/exo*.1"]
      bash_completion.install "contrib/completion/bash/exo"
      zsh_completion.install "contrib/completion/zsh/_exo"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/exoscale/cli/releases/download/v1.75.0/exoscale-cli_1.75.0_linux_amd64.tar.gz"
      sha256 "87c525ee2a17e49b5ee48074443d4794cd48a4c6ff54e399f40154d2ae4b9b4e"

      def install
        bin.install "exo"
        man1.install Dir["manpage/exo*.1"]
        bash_completion.install "contrib/completion/bash/exo"
        zsh_completion.install "contrib/completion/zsh/_exo"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/exoscale/cli/releases/download/v1.75.0/exoscale-cli_1.75.0_linux_armv6.tar.gz"
      sha256 "91066d2492efabfbec6f922bc05affd45f80c18c884b1fc82858cf0a8e35c0c6"

      def install
        bin.install "exo"
        man1.install Dir["manpage/exo*.1"]
        bash_completion.install "contrib/completion/bash/exo"
        zsh_completion.install "contrib/completion/zsh/_exo"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/exoscale/cli/releases/download/v1.75.0/exoscale-cli_1.75.0_linux_arm64.tar.gz"
      sha256 "1931308db758bc76babaefddf5c8a07fca9734079c4eed1e989db6cac892e370"

      def install
        bin.install "exo"
        man1.install Dir["manpage/exo*.1"]
        bash_completion.install "contrib/completion/bash/exo"
        zsh_completion.install "contrib/completion/zsh/_exo"
      end
    end
  end
end
