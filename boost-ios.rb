class BoostIos < Formula
  desc "boost 1.70 for iOS"
  homepage "http://github.com/hypevr/boost-iOS"
  url "https://github.com/HypeVR/boost-iOS/archive/0.0.1.tar.gz"
  sha256 "fa08af8619f21e3b940c7df516238a4455eac36156b1e48b47f487f47c1df4d1"
  head "http://github.com/hypevr/boost-iOS.git"

  depends_on "cmake"     => :build

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end
end
