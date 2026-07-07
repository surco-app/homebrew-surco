cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.37.0"
  sha256 arm:   "7c4e77bd73303a058f0f4c11f2cbcbe12f259c0fdb4efebb7888e0d814a47ad6",
         intel: "552c890f9b7e91a7f3b424413fed606fc4bac47c6bbe1e61a43d021afa938278"

  url "https://github.com/vigosan/surco-releases/releases/download/v#{version}/Surco-#{version}-#{arch}.dmg"
  name "Surco"
  desc "Audio track organizer for DJs"
  homepage "https://github.com/vigosan/surco-releases"

  livecheck do
    url "https://github.com/vigosan/surco-releases"
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
