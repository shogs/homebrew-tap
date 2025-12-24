class GitWt < Formula
  desc "A comprehensive Git worktree management CLI tool"
  homepage "https://github.com/shogs/git-wt"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shogs/git-wt/releases/download/v0.2.0/git-wt_0.2.0_Darwin_arm64.tar.gz"
      sha256 "c7b51ff0c2f41281289b6cb1317c5c3171e6560acb7ab6fcb6c22c670a50593c"
    end
    if Hardware::CPU.intel?
      url "https://github.com/shogs/git-wt/releases/download/v0.2.0/git-wt_0.2.0_Darwin_x86_64.tar.gz"
      sha256 "1cc269f73383f517bf565c928a942128fbbcc9a8b258d71484326b5900e3dad5"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/shogs/git-wt/releases/download/v0.2.0/git-wt_0.2.0_Linux_arm64.tar.gz"
      sha256 "b30442dd2dc98a058d4531615d286f7ba02b15ab39c28722c4c01696a465f28f"
    end
    if Hardware::CPU.intel?
      url "https://github.com/shogs/git-wt/releases/download/v0.2.0/git-wt_0.2.0_Linux_x86_64.tar.gz"
      sha256 "4fe5426f02ad19dfa41129c44ecc9107c73bf152f558eee175e3d74fcba970d7"
    end
  end

  def install
    bin.install "git-wt"
  end

  test do
    system "#{bin}/git-wt", "--version"
  end
end
