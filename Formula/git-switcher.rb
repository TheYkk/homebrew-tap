# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GitSwitcher < Formula
  desc "Switch between your git profiles easily"
  homepage ""
  version "0.3"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheYkk/git-switcher/releases/download/0.3/git-switcher_Darwin_arm64.tar.gz"
      sha256 "a813ab89e1cb91b767cfdead0e16f8171bff7c4dd129604c04f531c6950b3567"

      def install
        bin.install "git-switcher"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/TheYkk/git-switcher/releases/download/0.3/git-switcher_Darwin_x86_64.tar.gz"
      sha256 "1bfe0b3a1bc1b77d192c4268b02e5e724a0a4cdb081f2131d76af9ffa63913af"

      def install
        bin.install "git-switcher"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/TheYkk/git-switcher/releases/download/0.3/git-switcher_Linux_arm64.tar.gz"
      sha256 "d65428c3a9228818afdb577dfa1b8c5a77bde28363ab8455846ede0f76876fac"

      def install
        bin.install "git-switcher"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/TheYkk/git-switcher/releases/download/0.3/git-switcher_Linux_x86_64.tar.gz"
      sha256 "156838751ad48a3b5965cfb6041231b28ed14c9abbee37defc433b6c9add6ffe"

      def install
        bin.install "git-switcher"
      end
    end
  end
end
