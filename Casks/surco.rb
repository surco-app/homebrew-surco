cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "1.42.0"
  sha256 arm:   "1b2b765fa8812e18ef41d2f35a0a16fe9b50d4d439dead4b5714d2b96f1f9d57",
         intel: "b7a7b755bb704ad2d4185176cd7b6c65c09113db42ca5bd075d9e1e0ef29487d"

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
