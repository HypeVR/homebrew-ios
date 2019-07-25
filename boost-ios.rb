class BoostIos < Formula
  desc "boost 1.70 for iOS"
  homepage "http://github.com/hypevr/boost-iOS"
  url "https://github.com/HypeVR/boost-iOS/archive/0.0.1.tar.gz"
  sha256 "3ceaa4007b176563c536f33ef4b9a7f6b170711666e9886b893d71a7a53770a0"
  head "http://github.com/hypevr/boost-iOS.git"

  depends_on "cmake"     => :build

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end
end
