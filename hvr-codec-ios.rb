class HvrCodecIos < Formula
  desc "hvr-codec for Ios"
  homepage "http://github.com/HypeVR/hvr-codec-ios"
  url "https://github.com/HypeVR/hvr-codec-ios/archive/0.0.2.tar.gz", :using => :github_private_repo
  sha256 "6312dfe5e0dfe58b4275a7a88a64afb851d60fbfc416b8e2ffe6cdf8b146ad6a"
  head "http://github.com/HypeVR/hvr-codec-ios.git", :using => :github_private_repo

  bottle do
    root_url "https://s3-us-west-2.amazonaws.com/hvr-codec-ios"
    cellar :any_skip_relocation
    sha256 "347b2ef363a945be18d783bc221962ddb5d84490aec1e6773323c0e2fb678d87" => :high_sierra
  end

  depends_on "cmake"     => :build
  depends_on "ffmpeg-ios"     => :build

  def install
    Dir.mkdir("build")
    Dir.chdir("build")
    system "cmake", "..", *std_cmake_args, "-DCMAKE_TOOLCHAIN_FILE=../cmake/ios.toolchain.cmake",  "-DIOS_PLATFORM=OS"
    system "make", "install"
  end
end
