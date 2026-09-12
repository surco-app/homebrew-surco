cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.96.1"
  sha256 arm:   "4e352fa4ba007e962d209e8a4f460c8dcb1b7da79aee79e8efca6714affe75b0",
         intel: "10fd400a25499b9bf9b396e6d2d14b503cb59ed2c233782a8932b23ded5a2794"

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
