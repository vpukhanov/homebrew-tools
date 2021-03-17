class GitLocalIgnore < Formula
  desc "Locally exclude files from being tracked by Git (without adding them to .gitignore)"
  homepage "https://github.com/vpukhanov/git-local-ignore"

  url "https://github.com/vpukhanov/git-local-ignore/releases/download/1.0.0/git-local-ignore-mac-1.0.0.tar.gz"
  sha256 "d74322ec4e3cb64648ffdb7389b29880103ca65428b2a18b4717bb35a604600d"
  
  bottle :unneeded
  
  def install
    bin.install "git-local-ignore"
  end
  
  test do
    system "#{bin}/git-local-ignore", "--version"
  end
end
