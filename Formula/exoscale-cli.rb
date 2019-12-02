# This file was generated by GoReleaser. DO NOT EDIT.
class ExoscaleCli < Formula
  desc "Manage (almost) everything at Exoscale from the command line."
  homepage "https://exoscale.github.io/cli/"
  version "1.7.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/exoscale/cli/releases/download/v1.7.0/exoscale-cli_1.7.0_darwin_amd64.tar.gz"
    sha256 "5f4e775287032b31182fa0e5ce5c1b3f8f21c6628612f2e9f49ba5d709b12bab"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/exoscale/cli/releases/download/v1.7.0/exoscale-cli_1.7.0_linux_amd64.tar.gz"
      sha256 "10a487c1235901ab27834ef4ae0e04f4b29f6ecf7e2eb58b6f2d4f98e0baa2bc"
    end
  end

  def install
    bin.install "exo"
    man1.install Dir["manpage/exo*.1"]
    bash_completion.install "contrib/completion/bash/exo"
  end
end
