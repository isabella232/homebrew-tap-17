# This file was generated by GoReleaser. DO NOT EDIT.
class Tilt < Formula
  desc "Tilt powers multi-service developments for teams that deploy to Kubernetes."
  homepage "https://tilt.dev/"
  version "0.17.13"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/tilt-dev/tilt/releases/download/v0.17.13/tilt.0.17.13.mac.x86_64.tar.gz"
    sha256 "40fa8ce5381f75082ed3734be7c1ab5f4d5eef935ec7e7cc78e396db005b2c2f"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/tilt-dev/tilt/releases/download/v0.17.13/tilt.0.17.13.linux.x86_64.tar.gz"
      sha256 "a0614286a804e3b68fb80d13cce1ccfd0b28bb5e19d6108cc3c69a653a751ecd"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/tilt-dev/tilt/releases/download/v0.17.13/tilt.0.17.13.linux.arm64_ALPHA.tar.gz"
        sha256 "59f1f96ee181964a14df5c2046531a8876bc0761fc8ee7d6943864f8092c2632"
      else
        url "https://github.com/tilt-dev/tilt/releases/download/v0.17.13/tilt.0.17.13.linux.arm_ALPHA.tar.gz"
        sha256 "63d0a5daf55736c9096db8d662dd627e21679cdca4abe737e203ef5e3f33105e"
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
