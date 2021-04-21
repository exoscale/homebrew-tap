# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ExoscaleCli < Formula
  desc "Manage easily your Exoscale infrastructure from the command-line."
  homepage "https://exoscale.github.io/cli/"
  version "1.28.0"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/exoscale/cli/releases/download/v1.28.0/exoscale-cli_1.28.0_darwin_amd64.tar.gz"
    sha256 "606246dd1d649295b7e2047428ef32b20fa53a19b0e29fbafd9ddf0d3af080d8"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/exoscale/cli/releases/download/v1.28.0/exoscale-cli_1.28.0_darwin_arm64.tar.gz"
    sha256 "6d7570ecc91a16c227d7854a340c54e51af466102831d05ba31fed746b5fb3f8"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/exoscale/cli/releases/download/v1.28.0/exoscale-cli_1.28.0_linux_amd64.tar.gz"
    sha256 "e0bab709c7ac6fd395d0157790512a51c765a057552e7c7fec90a3778f129eeb"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/exoscale/cli/releases/download/v1.28.0/exoscale-cli_1.28.0_linux_armv6.tar.gz"
    sha256 "ca07fabfc578ce08bbdd0bbb1d59552e3150b8c37b60630738bf3be7fa5e321e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/exoscale/cli/releases/download/v1.28.0/exoscale-cli_1.28.0_linux_arm64.tar.gz"
    sha256 "e0553a0a2d7609aed8f9cd9a0dc78c58128341a9951ef29b5eaddcb3e2c1eac1"
  end

  def install
    bin.install "exo"
    man1.install Dir["manpage/exo*.1"]
    bash_completion.install "contrib/completion/bash/exo"
  end
end
