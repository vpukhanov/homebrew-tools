cask "vipinator" do
  version "1.1"
  sha256 "919e7be429299352457da948f4c9c0f91f58d3d13542fa62be54bfb41d1b1c77"

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
