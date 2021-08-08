require 'rbconfig'
class GitSwitcher < Formula
  desc "Switch between your git profiles easily"
  homepage "https://github.com/theykk/git-switcher"
  version "0.0.2"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/github.com/TheYkk/git-switcher/releases/download/0.0.2/git-switcher_0.0.2_Darwin_x86_64.tar.gz"
      sha256 "bafbb89d491cc6ad3f1c191d3b2d1c62b28703b6768ccd9464bcecd1a6339a0a"
    end
    if Hardware::CPU.arm?
      url "https://github.com/TheYkk/git-switcher/releases/download/0.0.2/git-switcher_0.0.2_Darwin_arm64.tar.gz"
      sha256 "20b0e8a7d682922e9e298381add1e741487b4268d529c1c7651efc706360af41"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/github.com/TheYkk/git-switcher/releases/download/0.0.2/git-switcher_0.0.2_Linux_x86_64.tar.gz"
      sha256 "c798534fbcef6766bbda29baa5bd153bbef5fe22babb2b48cd68d60358743d93"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/github.com/TheYkk/git-switcher/releases/download/0.0.2/git-switcher_0.0.2_Linux_arm64.tar.gz"
      sha256 "360fdfe36467c11a208ea7c22467be8826d66631737ff4e2adcf954716f6f4ab"
    end
  end

  depends_on "git" => :optional

  def install
    bin.install "git-switcher"
  end

  test do
    system "git-switcher"
  end

end
