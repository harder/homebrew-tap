class Skillview < Formula
  desc "Terminal UI and CLI for browsing and managing GitHub CLI skills"
  homepage "https://skillview.dev/"
  license "MIT"

  depends_on "gh"

  on_macos do
    odie "SkillView currently supports Apple Silicon Macs only." unless Hardware::CPU.arm?

    url "https://github.com/harder/gh-skillview/releases/download/v1.1.1/skillview-darwin-arm64"
    sha256 "9298950abe53a7d3933981d4db19df778a9aa36fea8ded58688f480c5a053794"
  end

  on_linux do
    odie "SkillView currently supports x86_64 Linux only." unless Hardware::CPU.intel?

    url "https://github.com/harder/gh-skillview/releases/download/v1.1.1/skillview-linux-amd64"
    sha256 "84ad6db79ab8df1057d491cbb6d187aaaea0aaa23a60ad2366aba1911b80440c"
  end

  def install
    asset = OS.mac? ? "skillview-darwin-arm64" : "skillview-linux-amd64"
    bin.install asset => "skillview"
  end

  test do
    assert_match "1.1.1", shell_output("#{bin}/skillview --version")
  end
end
