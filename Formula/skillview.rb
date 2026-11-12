class Skillview < Formula
  desc "Terminal UI and CLI for browsing and managing GitHub CLI skills"
  homepage "https://skillview.dev/"
  license "MIT"

  depends_on "gh"

  on_macos do
    odie "SkillView currently supports Apple Silicon Macs only." unless Hardware::CPU.arm?

    url "https://github.com/harder/gh-skillview/releases/download/v1.1.0/skillview-darwin-arm64"
    sha256 "76b30cc72a984791295a197de6b6e641aeb4c6cc87da25e7302c86a7357116c2"
  end

  on_linux do
    odie "SkillView currently supports x86_64 Linux only." unless Hardware::CPU.intel?

    url "https://github.com/harder/gh-skillview/releases/download/v1.1.0/skillview-linux-amd64"
    sha256 "cefdb1e918c66fb0e5a6dd556f008854c54714b752dd24d22d8d39067881e60f"
  end

  def install
    asset = OS.mac? ? "skillview-darwin-arm64" : "skillview-linux-amd64"
    bin.install asset => "skillview"
  end

  test do
    assert_match "1.1.0", shell_output("#{bin}/skillview --version")
  end
end
