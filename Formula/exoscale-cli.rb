# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ExoscaleCli < Formula
  desc "Manage easily your Exoscale infrastructure from the command-line."
  homepage "https://exoscale.github.io/cli/"
  version "1.84.0"

  on_macos do
    url "https://github.com/exoscale/cli/releases/download/v1.84.0/exoscale-cli_1.84.0_darwin_all.tar.gz"
    sha256 "8269d3b677c12685b632b97fc9fd0536dc109bfbd2ce4ca614810f451af68f66"

    def install
      bin.install "exo"
      man1.install Dir["manpage/exo*.1"]
      bash_completion.install "contrib/completion/bash/exo"
      fish_completion.install "contrib/completion/fish/exo"
      zsh_completion.install "contrib/completion/zsh/_exo"
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/exoscale/cli/releases/download/v1.84.0/exoscale-cli_1.84.0_linux_amd64.tar.gz"
        sha256 "2031262918fa56b5202f84de61f58d331af78d5603f8f8c9139bbbbdc3fde0a7"

        def install
          bin.install "exo"
          man1.install Dir["manpage/exo*.1"]
          bash_completion.install "contrib/completion/bash/exo"
          fish_completion.install "contrib/completion/fish/exo"
          zsh_completion.install "contrib/completion/zsh/_exo"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/exoscale/cli/releases/download/v1.84.0/exoscale-cli_1.84.0_linux_armv6.tar.gz"
        sha256 "8a6b855d580f2323c0f070cb6b4de912021bdf7ca88796808c288d105483ea9a"

        def install
          bin.install "exo"
          man1.install Dir["manpage/exo*.1"]
          bash_completion.install "contrib/completion/bash/exo"
          fish_completion.install "contrib/completion/fish/exo"
          zsh_completion.install "contrib/completion/zsh/_exo"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/exoscale/cli/releases/download/v1.84.0/exoscale-cli_1.84.0_linux_arm64.tar.gz"
        sha256 "87712f0043052ffe0a52aa341ad79563f9fc2df543da3faa734d0628de51b3a7"

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
end
