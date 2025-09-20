cask "vipinator" do
  version "1.3"
  sha256 "d0829c3abf764131fee0dd9319241a789456a5bcc45f90a4ddd1f344594dd783"

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
