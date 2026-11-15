cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "1.35.2"
  sha256 arm:   "24117b34fc334b69b01b6c77ee1dfb4e3b9ce294a97b4d4e01d993a227bdbd49",
         intel: "57961863ebb2b200e704b7b2dab2ac4edd3a1583d2aef9e8b04ed0a08f91f91d"

  url "https://github.com/surco-app/surco-releases/releases/download/v#{version}/Surco-#{version}-#{arch}.dmg"
  name "Surco"
  desc "Audio track organizer for DJs"
  homepage "https://github.com/surco-app/surco-releases"

  livecheck do
    url "https://github.com/surco-app/surco-releases"
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :big_sur

  app "Surco.app"

  zap trash: [
    "~/Library/Application Support/Surco",
    "~/Library/Caches/com.vigosan.surco",
    "~/Library/Caches/com.vigosan.surco.ShipIt",
    "~/Library/Logs/Surco",
    "~/Library/Preferences/com.vigosan.surco.plist",
    "~/Library/Saved Application State/com.vigosan.surco.savedState",
  ]
end
