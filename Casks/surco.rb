cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "1.40.0"
  sha256 arm:   "bb8464a44bccbb36fbbcd265f3f6ec121db965bf685be1588be88c28bfe855a0",
         intel: "546e66e6fcfb5fc3ee061e3e26d9a6dc9c29f83b99cc24c14e04633d8255a9ad"

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
