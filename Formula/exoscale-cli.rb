# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ExoscaleCli < Formula
  desc "Manage easily your Exoscale infrastructure from the command-line."
  homepage "https://exoscale.github.io/cli/"
  version "1.78.5"

  on_macos do
    url "https://github.com/exoscale/cli/releases/download/v1.78.5/exoscale-cli_1.78.5_darwin_all.tar.gz"
    sha256 "515b5c2960d0857ebfe6e68c46f76c9a5708bb09b66fba50602a7ead02d2a9a9"

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
        url "https://github.com/exoscale/cli/releases/download/v1.78.5/exoscale-cli_1.78.5_linux_amd64.tar.gz"
        sha256 "2c1ec6bc44a17200ad91563565e8ae963b871457ad3ca2ee2841b35300c351c2"

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
        url "https://github.com/exoscale/cli/releases/download/v1.78.5/exoscale-cli_1.78.5_linux_armv6.tar.gz"
        sha256 "8a329913eec032cfdb8b509a4616188883f44f3b8175b4ce077074e02be9c179"

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
        url "https://github.com/exoscale/cli/releases/download/v1.78.5/exoscale-cli_1.78.5_linux_arm64.tar.gz"
        sha256 "65588fc10459cfd4e6cec49df7c8792ef487e51e781111774a3d807f29277170"

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
