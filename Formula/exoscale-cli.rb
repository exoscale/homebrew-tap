# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ExoscaleCli < Formula
  desc "Manage easily your Exoscale infrastructure from the command-line."
  homepage "https://exoscale.github.io/cli/"
  version "1.26.0"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/exoscale/cli/releases/download/v1.26.0/exoscale-cli_1.26.0_darwin_amd64.tar.gz"
    sha256 "d15b00ad92d787835d545cdebfcd10f273ef8a352950b5147d83599b4222a489"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/exoscale/cli/releases/download/v1.26.0/exoscale-cli_1.26.0_darwin_arm64.tar.gz"
    sha256 "dcd3f50366b656adf64c6fa5957c69fda00ecb1b948e563936bcd63f2399c508"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/exoscale/cli/releases/download/v1.26.0/exoscale-cli_1.26.0_linux_amd64.tar.gz"
    sha256 "bc4dc868cd926e48472bc4c0626eace2b91a2640f66a1593dfc1bf8d3a069894"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/exoscale/cli/releases/download/v1.26.0/exoscale-cli_1.26.0_linux_armv6.tar.gz"
    sha256 "8179d486982c4f6e67c75a1ef0fa01c1cb3929476b1406e543f577dc6633b4bd"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/exoscale/cli/releases/download/v1.26.0/exoscale-cli_1.26.0_linux_arm64.tar.gz"
    sha256 "602136efcbe848fbfe062df02e1d55d7422deaf6266528a76c7813d87283d86c"
  end

  def install
    bin.install "exo"
    man1.install Dir["manpage/exo*.1"]
    bash_completion.install "contrib/completion/bash/exo"
  end
end
