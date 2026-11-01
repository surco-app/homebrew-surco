cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "1.18.7"
  sha256 arm:   "6ba30fc8f1331f893f66e83c584d0b504cbb8a43b243f6dbacd32047cce4b072",
         intel: "8dfcc2f3b4e2ae79aeab141b7f5b5fb3bbea2fb1814250e39df1b52f3f2e370b"

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
