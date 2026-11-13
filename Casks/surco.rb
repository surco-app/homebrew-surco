cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "1.34.2"
  sha256 arm:   "ac5dc6649eee8b6a27026adaaaf75dadad131c6be37a5d5ebd98952ae37a52a0",
         intel: "ce4c02b0bafb29e329e3a67ffc8e2c6415e652fe6b6bca7ae73c1e5e99ea82f5"

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
