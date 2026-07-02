cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.33.0"
  sha256 arm:   "49fae33f2ac010c4159fc9ecac4a600975fa088eeb079e851ff92a8ebbb90d55",
         intel: "900fe461c6379c3c4c5af52046c1c97b3bf30030ca41ce3d1c15c061518aa944"

  url "https://github.com/vigosan/surco-releases/releases/download/v#{version}/Surco-#{version}-#{arch}.dmg"
  name "Surco"
  desc "Audio track organizer for DJs"
  homepage "https://github.com/vigosan/surco-releases"

  auto_updates true
  depends_on macos: :big_sur

  app "Surco.app"

  zap trash: [
    "~/Library/Application Support/Surco",
    "~/Library/Logs/Surco",
    "~/Library/Preferences/com.vigosan.surco.plist",
    "~/Library/Saved Application State/com.vigosan.surco.savedState",
  ]
end
