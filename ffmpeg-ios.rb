class FfmpegIos < Formula
  desc "Ffmpeg 4.0.3 for Ios"
  homepage "http://github.com/hypevr/ffmpeg-iOS"
  url "https://github.com/hypevr/ffmpeg-iOS/archive/0.0.1.tar.gz"
  sha256 "3ea19182ea122d1086fcf8cc6167c7238b6d62ea23a0fdb6bfe49654ce45c00d"
  head "http://github.com/hypevr/ffmpeg-iOS.git"

  depends_on "cmake"     => :build

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end
end
