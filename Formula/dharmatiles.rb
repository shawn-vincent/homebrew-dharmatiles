class Dharmatiles < Formula
  desc "Build printable DungeonBlocks and OpenLOCK terrain tiles from KDL"
  homepage "https://github.com/shawn-vincent/dharmatiles"
  version "0.1.0"
  depends_on arch: :arm64
  on_macos do
    url "https://github.com/shawn-vincent/dharmatiles/releases/download/v0.1.0/dharmatiles-0.1.0-aarch64-apple-darwin.tar.gz"
    sha256 "ae6846c4e09769ae3edf6ed67e760729f0e8370b0b226ff44835b97edcd661ef"
  end
  def install
    bin.install "dharmatiles"
    pkgshare.install "palettes"
  end
  test do
    assert_match "dharmatiles", shell_output("#{bin}/dharmatiles --version")
  end
end
