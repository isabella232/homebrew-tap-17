# This file was generated by GoReleaser. DO NOT EDIT.
class Tilt < Formula
  desc "Tilt powers multi-service developments for teams that deploy to Kubernetes."
  homepage "https://tilt.dev/"
  version "0.17.2"
  bottle :unneeded

  if OS.mac?
    url "http://github.com/tilt-dev/tilt/releases/download/v0.17.2/tilt.0.17.2.mac.x86_64.tar.gz"
    sha256 "b9d42b80bec790176368d22a79fe18843d06c91951ff7cb5e9955ee7057de40d"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "http://github.com/tilt-dev/tilt/releases/download/v0.17.2/tilt.0.17.2.linux.x86_64.tar.gz"
      sha256 "8bd5e67c54fff0073444f7875ba44f120ce174b54325509312050c52ee42e36a"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "http://github.com/tilt-dev/tilt/releases/download/v0.17.2/tilt.0.17.2.linux.arm64_ALPHA.tar.gz"
        sha256 "f82c2932e5b1c4e8a7bcf23e8dacc4f700c8d946789d64385531ab0fa63a05ef"
      else
        url "http://github.com/tilt-dev/tilt/releases/download/v0.17.2/tilt.0.17.2.linux.arm_ALPHA.tar.gz"
        sha256 "d4031175005c92192ba5c21306bd55b62587c5716246e8bd1edb1c8fe14881d6"
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
