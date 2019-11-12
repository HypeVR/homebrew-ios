class FfmpegIos < Formula
  desc "Ffmpeg 4.0.3 for Ios"
  homepage "http://github.com/hypevr/sdl2-iOS"
  url "https://github.com/hypevr/sdl2-ios/archive/0.0.1.tar.gz"
  sha256 "3c494144b28b9b1aa4b6b6ddc741da32900ee525efdc3fb8b24f30a9bd3c3ad6"
  head "http://github.com/hypevr/sdl2-iOS.git"

  depends_on "cmake"     => :build

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end
end
