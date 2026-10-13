cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "1.8.1"
  sha256 arm:   "b180e4fb8dba93346b6bd60a9156794a23c2c0cd5ad39b0c9c1e666d42fbe87f",
         intel: "db699e870e797f7c1383441a8fb7dc8f8563b98856a12be79bd29adc9ec7a6f7"

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
