cask "vipinator" do
  version "1.2"
  sha256 "7ff6bff7eef790b0bac207c14c366c781ca35d8e42e54fa228e3d37c2453df0e"

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
