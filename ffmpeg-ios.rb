class FfmpegIos < Formula
  desc "Ffmpeg 4.0.3 for Ios"
  homepage "http://github.com/hypevr/ffmpeg-iOS"
  url "https://github.com/hypevr/ffmpeg-iOS/archive/0.0.3.tar.gz"
  sha256 "54158d0c4fd4b85c516b3b607cfef0b1a1b583a39da60e575bc088dd87757068"
  head "http://github.com/hypevr/ffmpeg-iOS.git"

  depends_on "cmake"     => :build

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end
end
