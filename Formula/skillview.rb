class Skillview < Formula
  desc "Terminal UI and CLI for browsing and managing GitHub CLI skills"
  homepage "https://skillview.dev/"
  license "MIT"

  depends_on "gh"

  on_macos do
    odie "SkillView currently supports Apple Silicon Macs only." unless Hardware::CPU.arm?

    url "https://github.com/harder/gh-skillview/releases/download/v1.0.1/skillview-darwin-arm64"
    sha256 "19a218bb9df1e3d76bd818d8fcaa465a7b54d8ba61517084cf85fa501baa4feb"
  end

  on_linux do
    odie "SkillView currently supports x86_64 Linux only." unless Hardware::CPU.intel?

    url "https://github.com/harder/gh-skillview/releases/download/v1.0.1/skillview-linux-amd64"
    sha256 "548b52b247c351dc15da693c4a6122f2cf6e984f0c8f2286f25579a3fc489f0d"
  end

  def install
    asset = OS.mac? ? "skillview-darwin-arm64" : "skillview-linux-amd64"
    bin.install asset => "skillview"
  end

  test do
    assert_match "1.0.1", shell_output("#{bin}/skillview --version")
  end
end
