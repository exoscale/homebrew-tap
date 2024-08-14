# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ExoscaleCli < Formula
  desc "Manage easily your Exoscale infrastructure from the command-line."
  homepage "https://exoscale.github.io/cli/"
  version "1.78.6"

  on_macos do
    url "https://github.com/exoscale/cli/releases/download/v1.78.6/exoscale-cli_1.78.6_darwin_all.tar.gz"
    sha256 "ef136c7fa266a98c543ae9a6976b068bdaecda90ca28601ac7a377891ca9603b"

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
        url "https://github.com/exoscale/cli/releases/download/v1.78.6/exoscale-cli_1.78.6_linux_amd64.tar.gz"
        sha256 "b80a2836548ad86463edcee2bfd9df587c42de85d537959e84d504046b578752"

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
        url "https://github.com/exoscale/cli/releases/download/v1.78.6/exoscale-cli_1.78.6_linux_armv6.tar.gz"
        sha256 "6faf9168c7714ee279df5af20d090e279d7c78a36fabe21f308d0648a353f09e"

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
        url "https://github.com/exoscale/cli/releases/download/v1.78.6/exoscale-cli_1.78.6_linux_arm64.tar.gz"
        sha256 "a20f26515e90a5faf4d9d46410602cf0ed0853625fcb261715a949e8643b6fa8"

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
