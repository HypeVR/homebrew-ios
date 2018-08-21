class HvrCodecIos < Formula
  desc "hvr-codec for Ios"
  homepage "http://github.com/HypeVR/hvr-codec-ios"
  url "https://github.com/HypeVR/hvr-codec-ios/archive/0.0.1.tar.gz", :using => :github_private_repo
  sha256 "d8c3d32b1d4344bd4a21e6ea7e26540885f2bb5b7f0b4307bd62af580539c630"
  head "http://github.com/HypeVR/hvr-codec-ios.git"

  bottle do
    root_url "https://s3-us-west-2.amazonaws.com/hvr-codec-ios"
    cellar :any_skip_relocation
    sha256 "ad6f2622b2e19c04aca72b48969a8957ece69a924cbadfe5134e182c00aa48cb" => :high_sierra
  end

  depends_on "cmake"     => :build
  depends_on "ffmpeg-ios"     => :build

  def install
    Dir.mkdir("build")
    Dir.chdir("build")
    system "cmake", "..", *std_cmake_args, "-DCMAKE_TOOLCHAIN_FILE=../cmake/ios.toolchain.cmake",  "-DIOS_PLATFORM=SIMULATOR64"
    system "make", "install"
  end
end
