cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.87.1"
  sha256 arm:   "ae810c60d547cd9134e6735c3ac4a80b9b0fb4992a3147e837eafb9865cfcaa1",
         intel: "ccac6f72c254cbabf05860672a3fdb16353543639beb5890b8001e28bd1a58bd"

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
