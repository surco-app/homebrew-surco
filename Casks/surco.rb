cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "1.43.0"
  sha256 arm:   "b471b652d69441b2fa404e7d84b6df863a57f28611a56a1a6ba592c0b5c1d8aa",
         intel: "a53634f5b32d6f44dc7cc96e7141e8df9508f705ccae04727a376532fc7d0972"

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
