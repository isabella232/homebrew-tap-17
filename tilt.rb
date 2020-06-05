# This file was generated by GoReleaser. DO NOT EDIT.
class Tilt < Formula
  desc "Tilt powers multi-service developments for teams that deploy to Kubernetes."
  homepage "https://tilt.dev/"
  version "0.14.2"
  bottle :unneeded

  if OS.mac?
    url "http://github.com/tilt-dev/tilt/releases/download/v0.14.2/tilt.0.14.2.mac.x86_64.tar.gz"
    sha256 "72608731c4599f773d8623740dae526a5209fd853d2223103034f3065bc70966"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "http://github.com/tilt-dev/tilt/releases/download/v0.14.2/tilt.0.14.2.linux.x86_64.tar.gz"
      sha256 "39d22434a8eb5694de934f7f97f5cd7477d1bcafb5eb25ab51161778bce803cb"
    end
  end

  def install
    bin.install "tilt"
  end

  test do
    system "#{bin}/tilt version"
  end
end
