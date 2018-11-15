class FfmpegIos < Formula
  desc "Ffmpeg 4.0.3 for Ios"
  homepage "http://github.com/hypevr/ffmpeg-iOS"
  url "https://github.com/hypevr/ffmpeg-iOS/archive/0.0.3.tar.gz"
  sha256 "9e2181fce4371574e838567967fb8a2d268d1661c222c92d01f0edff6871e4d0"
  head "http://github.com/hypevr/ffmpeg-iOS.git"

  depends_on "cmake"     => :build

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end
end
