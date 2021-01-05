# This file was generated by GoReleaser. DO NOT EDIT.
class Tilt < Formula
  desc "Tilt powers multi-service developments for teams that deploy to Kubernetes."
  homepage "https://tilt.dev/"
  version "0.18.3"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/tilt-dev/tilt/releases/download/v0.18.3/tilt.0.18.3.mac.x86_64.tar.gz"
    sha256 "4da09e32ec3f9a2ebbb532d99bcb888ffc55c0f73b2e2b41298db8529c8b04c7"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/tilt-dev/tilt/releases/download/v0.18.3/tilt.0.18.3.linux.x86_64.tar.gz"
      sha256 "3584a0a2c1a12802f00534b59e655d7b3a1be0f625132b6351cf6f36a1e95810"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/tilt-dev/tilt/releases/download/v0.18.3/tilt.0.18.3.linux.arm64_ALPHA.tar.gz"
        sha256 "27485c8ba08981fd0ebbc0e09347f66382efbde73250c3a0c6b84cf26b976b31"
      else
        url "https://github.com/tilt-dev/tilt/releases/download/v0.18.3/tilt.0.18.3.linux.arm_ALPHA.tar.gz"
        sha256 "7aebf0f318adefdbdaf5591a184a2761636a380d5bba33b8535d17ab75fda789"
      end
    end
  end

  def install
    bin.install "tilt"
  end

  test do
    system "#{bin}/tilt version"
    system "#{bin}/tilt verify-install"
  end
end
