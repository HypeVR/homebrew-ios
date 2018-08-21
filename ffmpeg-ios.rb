class FfmpegIos < Formula
  desc "Ffmpeg 3.4.2 for Ios"
  homepage "http://github.com/caoyangjiang/ffmpeg-ios"
  url "https://github.com/caoyangjiang/ffmpeg-ios/archive/0.0.3.tar.gz"
  sha256 "3ea19182ea122d1086fcf8cc6167c7238b6d62ea23a0fdb6bfe49654ce45c00d"
  head "http://github.com/caoyangjiang/ffmpeg-ios.git"

  bottle do
    root_url "https://s3-us-west-2.amazonaws.com/ffmpeg-ios"
    cellar :any_skip_relocation
    sha256 "dfd5bfc7a049cad90469b263b8be5f702f61879fc586200b102015ca2ce9f2bd" => :high_sierra
  end

  depends_on "cmake"     => :build

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end
end
