class Shadow < Formula
  desc "Rust CLI to stay active and avoid sleep"
  homepage "https://github.com/cgisca/shadow-cli-binaries"
  version "1.0.0"

  if Hardware::CPU.arm?
    url "https://github.com/cgisca/shadow-cli-binaries/releases/download/v1.0.0/shadow-aarch64-apple-darwin.tar.gz"
    sha256 "3f156f76ab1c5bceb84518d67ac5ba685e8426e2e5f2f2c13b02c6c924b1e313"
  else
    url "https://github.com/cgisca/shadow-cli-binaries/releases/download/v1.0.0/shadow-x86_64-apple-darwin.tar.gz"
    sha256 "f824bd185d2222b3e289cdaae30d4225292c0dbcddb7dc32808647f0c3c5532f"
  end

  def install
    bin.install "shadow"
  end
end