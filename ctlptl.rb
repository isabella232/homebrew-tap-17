# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ctlptl < Formula
  desc "Making local Kubernetes clusters easy to set up and tear down"
  homepage "https://ctlptl.dev/"
  version "0.4.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/tilt-dev/ctlptl/releases/download/v0.4.2/ctlptl.0.4.2.mac.x86_64.tar.gz"
    sha256 "5d78077192ed56459a3dd6c6fce4d1eabf64dc7e03ed6b2dd54a15499d151d6a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tilt-dev/ctlptl/releases/download/v0.4.2/ctlptl.0.4.2.linux.x86_64.tar.gz"
    sha256 "a284dbefa338398663b55a567349660457084b9212d3af5386089a302cb948f3"
  end

  def install
    bin.install "ctlptl"
  end

  test do
    system "#{bin}/ctlptl version"
  end
end
