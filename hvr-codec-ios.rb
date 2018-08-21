class HvrCodecIos < Formula
  desc "hvr-codec for Ios"
  homepage "http://github.com/HypeVR/hvr-codec-ios"
  url "https://github.com/HypeVR/hvr-codec-ios/archive/0.0.1.tar.gz"
  sha256 "6361f7c32a79ef2ac5113cb4b38adbc8653d44ae2c9e0ddbd04b1998f0e44053"
  head "http://github.com/HypeVR/hvr-codec-ios.git"

  depends_on "cmake"     => :build
  depends_on "ffmpeg-ios"     => :build

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end
end
