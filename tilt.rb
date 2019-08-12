# This file was generated by GoReleaser. DO NOT EDIT.
class Tilt < Formula
  desc "Local Kubernetes development with no stress"
  homepage "https://tilt.build/"
  url "http://github.com/windmilleng/tilt/releases/download/v0.10.0/tilt.0.10.0.mac.x86_64.tar.gz"
  version "0.10.0"
  sha256 "f19b9f705228f54261ae81e7c1a6979d348cede45ea55c77d26cdbc4a5f65b5c"

  def install
    bin.install "tilt"
  end

  test do
    system "#{bin}/tilt version"
  end
end
