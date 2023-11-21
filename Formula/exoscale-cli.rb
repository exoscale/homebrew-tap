# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ExoscaleCli < Formula
  desc "Manage easily your Exoscale infrastructure from the command-line."
  homepage "https://exoscale.github.io/cli/"
  version "1.74.5"

  on_macos do
    url "https://github.com/exoscale/cli/releases/download/v1.74.5/exoscale-cli_1.74.5_darwin_all.tar.gz"
    sha256 "fd4ed938894193d5f5cf0848a05ab52bb11b0f3bd229808bc284fdaa7fe6df2e"

    def install
      bin.install "exo"
      man1.install Dir["manpage/exo*.1"]
      bash_completion.install "contrib/completion/bash/exo"
      zsh_completion.install "contrib/completion/zsh/_exo"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/exoscale/cli/releases/download/v1.74.5/exoscale-cli_1.74.5_linux_armv6.tar.gz"
      sha256 "ee95a43c52795e400a7879bdce994671d7552782299f3103e99f06840136f99e"

      def install
        bin.install "exo"
        man1.install Dir["manpage/exo*.1"]
        bash_completion.install "contrib/completion/bash/exo"
        zsh_completion.install "contrib/completion/zsh/_exo"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/exoscale/cli/releases/download/v1.74.5/exoscale-cli_1.74.5_linux_amd64.tar.gz"
      sha256 "5caa80f95282c6217192500da2713228da2b9fd258d66f75724b023a831a7266"

      def install
        bin.install "exo"
        man1.install Dir["manpage/exo*.1"]
        bash_completion.install "contrib/completion/bash/exo"
        zsh_completion.install "contrib/completion/zsh/_exo"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/exoscale/cli/releases/download/v1.74.5/exoscale-cli_1.74.5_linux_arm64.tar.gz"
      sha256 "874734fcba15f48246956ff00da83263c54374f0dd6cc15eaae90248b8e7ffc4"

      def install
        bin.install "exo"
        man1.install Dir["manpage/exo*.1"]
        bash_completion.install "contrib/completion/bash/exo"
        zsh_completion.install "contrib/completion/zsh/_exo"
      end
    end
  end
end
