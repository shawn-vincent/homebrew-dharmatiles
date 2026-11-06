class Dharmatiles < Formula
  desc "Build printable DungeonBlocks and OpenLOCK terrain tiles from KDL"
  homepage "https://github.com/shawn-vincent/dharmatiles"
  version "0.2.0"
  depends_on arch: :arm64
  on_macos do
    url "https://github.com/shawn-vincent/dharmatiles/releases/download/v0.2.0/dharmatiles-0.2.0-aarch64-apple-darwin.tar.gz"
    sha256 "265764cd54ac263997caeda56b31768e87bc92c7672dc1f5087291118259b669"
  end
  def install
    bin.install "dharmatiles"
    pkgshare.install "palettes"
    pkgshare.install "library" # lib: is read from share/dharmatiles/library
  end
  test do
    assert_match "dharmatiles", shell_output("#{bin}/dharmatiles --version")
  end
end
