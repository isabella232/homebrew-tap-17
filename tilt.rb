# This file was generated by GoReleaser. DO NOT EDIT.
class Tilt < Formula
  desc "Tilt powers multi-service developments for teams that deploy to Kubernetes."
  homepage "https://tilt.dev/"
  version "0.17.9"
  bottle :unneeded

  if OS.mac?
    url "http://github.com/tilt-dev/tilt/releases/download/v0.17.9/tilt.0.17.9.mac.x86_64.tar.gz"
    sha256 "7dc18f6ca60aa18a275a99c9ac7a9b1ad693eba6a46d1f8fadf94894e3ee7614"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "http://github.com/tilt-dev/tilt/releases/download/v0.17.9/tilt.0.17.9.linux.x86_64.tar.gz"
      sha256 "873f5a50f134abe617cde37b1a83e95aa87579f7acb55eedf9a99c9100d14500"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "http://github.com/tilt-dev/tilt/releases/download/v0.17.9/tilt.0.17.9.linux.arm64_ALPHA.tar.gz"
        sha256 "9d39de21a64564fe774bae2ac038914e6cea0bff4aee5f0dc3296ca8beb8b8c8"
      else
        url "http://github.com/tilt-dev/tilt/releases/download/v0.17.9/tilt.0.17.9.linux.arm_ALPHA.tar.gz"
        sha256 "c12814bd2fd9edb2f910e3a2636f7fc26a204b713de9cfa26d0722084dc29093"
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
