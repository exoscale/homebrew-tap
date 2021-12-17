# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ExoscaleCli < Formula
  desc "Manage easily your Exoscale infrastructure from the command-line."
  homepage "https://exoscale.github.io/cli/"
  version "1.49.2"

  on_macos do
    url "https://github.com/exoscale/cli/releases/download/v1.49.2/exoscale-cli_1.49.2_darwin_all.tar.gz"
    sha256 "c221c884e25905ad67d8dad7ff72b2f9e323af18fe56e6bf692b091f14d48bae"

    def install
      bin.install "exoscale-cli" => "exo"
      man1.install Dir["manpage/exo*.1"]
      bash_completion.install "contrib/completion/bash/exo"
      zsh_completion.install "contrib/completion/zsh/_exo"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/exoscale/cli/releases/download/v1.49.2/exoscale-cli_1.49.2_linux_armv6.tar.gz"
      sha256 "d2b6a1a52ae90e54fffd0642b06061bd790710f22906962c156e5a4f4746bf92"

      def install
        bin.install "exoscale-cli" => "exo"
        man1.install Dir["manpage/exo*.1"]
        bash_completion.install "contrib/completion/bash/exo"
        zsh_completion.install "contrib/completion/zsh/_exo"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/exoscale/cli/releases/download/v1.49.2/exoscale-cli_1.49.2_linux_amd64.tar.gz"
      sha256 "5673e738dab587f7e804a40b558c501a3b7a1dc8cc513212a34702c7c3c85628"

      def install
        bin.install "exoscale-cli" => "exo"
        man1.install Dir["manpage/exo*.1"]
        bash_completion.install "contrib/completion/bash/exo"
        zsh_completion.install "contrib/completion/zsh/_exo"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/exoscale/cli/releases/download/v1.49.2/exoscale-cli_1.49.2_linux_arm64.tar.gz"
      sha256 "fddf817fba60dd43ea176bae6d5f70bc6a3aad1e466abbe5a2d82693270fd242"

      def install
        bin.install "exoscale-cli" => "exo"
        man1.install Dir["manpage/exo*.1"]
        bash_completion.install "contrib/completion/bash/exo"
        zsh_completion.install "contrib/completion/zsh/_exo"
      end
    end
  end
end
