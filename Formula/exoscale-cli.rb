# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ExoscaleCli < Formula
  desc "Manage easily your Exoscale infrastructure from the command-line."
  homepage "https://exoscale.github.io/cli/"
  version "1.85.3"

  on_macos do
    url "https://github.com/exoscale/cli/releases/download/v1.85.3/exoscale-cli_1.85.3_darwin_all.tar.gz"
    sha256 "e27f10a2ad5620ef85a30a8933fdb315d48d5ae1b0bdcfefdd080700653ece60"

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
        url "https://github.com/exoscale/cli/releases/download/v1.85.3/exoscale-cli_1.85.3_linux_amd64.tar.gz"
        sha256 "1dfd542619cbfa319f051a7a344d89fc5ced7ce09754ada91e3a36d59783e722"

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
        url "https://github.com/exoscale/cli/releases/download/v1.85.3/exoscale-cli_1.85.3_linux_armv6.tar.gz"
        sha256 "99a1d0c49c5f287bda66701e606d44a67e73af60805af02c092cbc86b510ccd4"

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
        url "https://github.com/exoscale/cli/releases/download/v1.85.3/exoscale-cli_1.85.3_linux_arm64.tar.gz"
        sha256 "e5afde64e3c25afce3e3253f80090e5a212a2e15001ca316ab7df470ea5dab9e"

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
