# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ExoscaleCli < Formula
  desc "Manage easily your Exoscale infrastructure from the command-line."
  homepage "https://exoscale.github.io/cli/"
  version "1.76.2"

  on_macos do
    url "https://github.com/exoscale/cli/releases/download/v1.76.2/exoscale-cli_1.76.2_darwin_all.tar.gz"
    sha256 "9c4a32cdff5fbcdecd855c24607bfaf8c79925e904ccbe37fdedc5f3e7798e26"

    def install
      bin.install "exo"
      man1.install Dir["manpage/exo*.1"]
      bash_completion.install "contrib/completion/bash/exo"
      fish_completion.install "contrib/completion/fish/exo"
      zsh_completion.install "contrib/completion/zsh/_exo"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/exoscale/cli/releases/download/v1.76.2/exoscale-cli_1.76.2_linux_amd64.tar.gz"
      sha256 "3270aa3b9e60668677f98c972b802929ff94bd7c5c701ecf37422f77e8e0a97e"

      def install
        bin.install "exo"
        man1.install Dir["manpage/exo*.1"]
        bash_completion.install "contrib/completion/bash/exo"
        fish_completion.install "contrib/completion/fish/exo"
        zsh_completion.install "contrib/completion/zsh/_exo"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/exoscale/cli/releases/download/v1.76.2/exoscale-cli_1.76.2_linux_armv6.tar.gz"
      sha256 "658a6f2802adba153d91c3a7824cb6e939a2e0ca84ce4d96bf9dd1e91c63779b"

      def install
        bin.install "exo"
        man1.install Dir["manpage/exo*.1"]
        bash_completion.install "contrib/completion/bash/exo"
        fish_completion.install "contrib/completion/fish/exo"
        zsh_completion.install "contrib/completion/zsh/_exo"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/exoscale/cli/releases/download/v1.76.2/exoscale-cli_1.76.2_linux_arm64.tar.gz"
      sha256 "477d27a53cef798173c46bd2062eb2afc3ec1fe28d83d042f2ca74f62ce864a0"

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
