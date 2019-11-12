class Sdl2Ios < Formula
  desc "SDL2 2.0.10 for Ios"
  homepage "http://github.com/hypevr/sdl2-iOS"
  url "https://github.com/hypevr/sdl2-ios/archive/0.0.1.tar.gz"
  sha256 "e40dc1c2474bda24cb85b4dd12b79183009ec9560e0871d2137811fddf33e19f"
  head "http://github.com/hypevr/sdl2-iOS.git"

  depends_on "cmake"     => :build

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end
end
