cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "1.22.0"
  sha256 arm:   "5ac27fdc71819c3e47bbf33202b9e5d2d8ddbb65ceeb4420f8325d04689094b0",
         intel: "dd85407df65db14b1edff5f9e814dccc4924868a33e00aad5882a44b61a7dd7a"

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
