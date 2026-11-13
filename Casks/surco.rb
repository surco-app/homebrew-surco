cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "1.34.3"
  sha256 arm:   "648fc7977064e3e93c654eb9c482b05d8433dc68caa5d43b2802e5eaf8873989",
         intel: "de9bb667d5cc9b1d6530a6caa8335b7dfcba8a86bd5d41102098fdf96d7c09a2"

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
