class GitLocalIgnore < Formula
  desc "Locally exclude files from being tracked by Git (without adding them to .gitignore)"
  homepage "https://github.com/vpukhanov/git-local-ignore"
  url "https://github.com/vpukhanov/git-local-ignore/releases/download/0.1.0/git-local-ignore-mac-0.1.0.tar.gz"
  sha256 "496a5c5b8ae0b3b61576244a3a8f80645025d5bafcc4500e25cb9f59b67dc5a8"
  
  bottle :unneeded
  
  def install
    bin.install "git-local-ignore"
  end
  
  test do
    system "#{bin}/git-local-ignore", "--version"
  end
end
