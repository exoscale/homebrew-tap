# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ExoscaleCli < Formula
  desc "Manage easily your Exoscale infrastructure from the command-line."
  homepage "https://exoscale.github.io/cli/"
  version "1.59.1"

  on_macos do
    url "https://github.com/exoscale/cli/releases/download/v1.59.1/exoscale-cli_1.59.1_darwin_all.tar.gz"
    sha256 "6ac27c6836699f3c06415b0812289aba30941994bb0b254183ade062c24b9a0f"

    def install
      bin.install "exoscale-cli" => "exo"
      man1.install Dir["manpage/exo*.1"]
      bash_completion.install "contrib/completion/bash/exo"
      zsh_completion.install "contrib/completion/zsh/_exo"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/exoscale/cli/releases/download/v1.59.1/exoscale-cli_1.59.1_linux_armv6.tar.gz"
      sha256 "0d0509ffe2604dc219d0bd17ae28e853f1285c57e2e63202c286644e39dd3c3b"

      def install
        bin.install "exoscale-cli" => "exo"
        man1.install Dir["manpage/exo*.1"]
        bash_completion.install "contrib/completion/bash/exo"
        zsh_completion.install "contrib/completion/zsh/_exo"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/exoscale/cli/releases/download/v1.59.1/exoscale-cli_1.59.1_linux_arm64.tar.gz"
      sha256 "54341bc1ee859463f5a47f75d0feff0dc8d725da9badf97d0b50f15a813cd4d0"

      def install
        bin.install "exoscale-cli" => "exo"
        man1.install Dir["manpage/exo*.1"]
        bash_completion.install "contrib/completion/bash/exo"
        zsh_completion.install "contrib/completion/zsh/_exo"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/exoscale/cli/releases/download/v1.59.1/exoscale-cli_1.59.1_linux_amd64.tar.gz"
      sha256 "7b44d4c5dd10d6ca8cb28424c9826ffc973470913f68cc20d95683efea51e9e0"

      def install
        bin.install "exoscale-cli" => "exo"
        man1.install Dir["manpage/exo*.1"]
        bash_completion.install "contrib/completion/bash/exo"
        zsh_completion.install "contrib/completion/zsh/_exo"
      end
    end
  end
end
