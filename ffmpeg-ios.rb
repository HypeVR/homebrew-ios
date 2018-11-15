class FfmpegIos < Formula
  desc "Ffmpeg 4.0.3 for Ios"
  homepage "http://github.com/hypevr/ffmpeg-iOS"
  url "https://github.com/hypevr/ffmpeg-iOS/archive/0.0.2.tar.gz"
  sha256 "82037430d6e5891e0f1b139d29b0c9824930c1ba3ebcdd2efd260894938f2992"
  head "http://github.com/hypevr/ffmpeg-iOS.git"

  depends_on "cmake"     => :build

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end
end
