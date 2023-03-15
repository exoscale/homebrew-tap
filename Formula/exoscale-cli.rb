# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ExoscaleCli < Formula
  desc "Manage easily your Exoscale infrastructure from the command-line."
  homepage "https://exoscale.github.io/cli/"
  version "1.66.0"

  on_macos do
    url "https://github.com/exoscale/cli/releases/download/v1.66.0/exoscale-cli_1.66.0_darwin_all.tar.gz"
    sha256 "439b2f2871e94f9a6a70dacfdad43d0df804924f7fb4c26178e7e3ffeae63430"

    def install
      bin.install "exoscale-cli" => "exo"
      man1.install Dir["manpage/exo*.1"]
      bash_completion.install "contrib/completion/bash/exo"
      zsh_completion.install "contrib/completion/zsh/_exo"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/exoscale/cli/releases/download/v1.66.0/exoscale-cli_1.66.0_linux_armv6.tar.gz"
      sha256 "d539082fead9e2d76d182fc5c452ce3116a76b597177489d0e184da9162f6772"

      def install
        bin.install "exoscale-cli" => "exo"
        man1.install Dir["manpage/exo*.1"]
        bash_completion.install "contrib/completion/bash/exo"
        zsh_completion.install "contrib/completion/zsh/_exo"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/exoscale/cli/releases/download/v1.66.0/exoscale-cli_1.66.0_linux_arm64.tar.gz"
      sha256 "93ad4470a16981f2487d7959ffdc6e224b95e165989725608f34c8b5618511c3"

      def install
        bin.install "exoscale-cli" => "exo"
        man1.install Dir["manpage/exo*.1"]
        bash_completion.install "contrib/completion/bash/exo"
        zsh_completion.install "contrib/completion/zsh/_exo"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/exoscale/cli/releases/download/v1.66.0/exoscale-cli_1.66.0_linux_amd64.tar.gz"
      sha256 "b9943918e368ce10b77e3702c0c386220427a40fbbaa2bc6d46f8587a94c25b4"

      def install
        bin.install "exoscale-cli" => "exo"
        man1.install Dir["manpage/exo*.1"]
        bash_completion.install "contrib/completion/bash/exo"
        zsh_completion.install "contrib/completion/zsh/_exo"
      end
    end
  end
end
