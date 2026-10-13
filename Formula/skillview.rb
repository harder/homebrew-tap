class Skillview < Formula
  desc "Terminal UI and CLI for browsing and managing GitHub CLI skills"
  homepage "https://skillview.dev/"
  version "1.0.0"
  license "MIT"

  depends_on "gh"

  on_macos do
    odie "SkillView currently supports Apple Silicon Macs only." unless Hardware::CPU.arm?

    url "https://github.com/harder/gh-skillview/releases/download/v1.0.0/skillview-darwin-arm64"
    sha256 "36212794484d63a3e5ad98b88a461f58184c66ec0f9387bd85518bf6e9b68374"
  end

  on_linux do
    odie "SkillView currently supports x86_64 Linux only." unless Hardware::CPU.intel?

    url "https://github.com/harder/gh-skillview/releases/download/v1.0.0/skillview-linux-amd64"
    sha256 "2b50a12591c466377308ab8519fc3d2768e186694d08f1ea9140fe56a659f13c"
  end

  def install
    asset = OS.mac? ? "skillview-darwin-arm64" : "skillview-linux-amd64"
    bin.install asset => "skillview"
  end

  test do
    assert_match "1.0.0", shell_output("#{bin}/skillview --version")
  end
end
