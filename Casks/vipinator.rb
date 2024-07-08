cask "vipinator" do
  version "1.0"
  sha256 "55daef6a35a4d41fd71407114c3df1780bf59fe3d569fed19c8785f0dc6f48e6"

  url "https://github.com/vpukhanov/Vipinator/releases/download/v#{version}/Vipinator-#{version}.dmg"

  name "Vipinator"
  desc "VPN management from your menu bar"
  homepage "https://github.com/vpukhanov/Vipinator/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "Vipinator.app"

  uninstall quit: "ru.pukhanov.Vipinator"
end
