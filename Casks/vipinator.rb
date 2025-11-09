cask "vipinator" do
  version "1.4"
  sha256 "cfa446a44808c1e6f0dabc3ab198e2c5d5f3998926c6c27bd379429e992714e9"

  url "https://github.com/vpukhanov/vipinator/releases/download/v#{version}/Vipinator-#{version}.dmg"

  name "Vipinator"
  desc "VPN management from your menu bar"
  homepage "https://github.com/vpukhanov/vipinator/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "Vipinator.app"

  uninstall quit: "ru.pukhanov.Vipinator"
end
