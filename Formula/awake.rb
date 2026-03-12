class Awake < Formula
  desc "Rust CLI to stay active and avoid sleep"
  homepage "https://github.com/cgisca/awake-cli-binaries"
  version "1.0.0"

  if Hardware::CPU.arm?
    url "https://github.com/cgisca/awake-cli-binaries/releases/download/v1.0.0/awake-aarch64-apple-darwin.tar.gz"
    sha256 "7cc8d57bdb6894e092bee823f4c04f57bdc85612dc1f8966395792ae352da655"
  else
    url "https://github.com/cgisca/awake-cli-binaries/releases/download/v1.0.0/awake-x86_64-apple-darwin.tar.gz"
    sha256 "f4091cf1e4ce071f7dad2456984557947bd56453110eaaeb94cf40cc48569c78"
  end

  def install
    bin.install "awake"
  end
end