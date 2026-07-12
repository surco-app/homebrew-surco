cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.51.0"
  sha256 arm:   "9fd23a4c63554db7d26d2896de5c0ebe587328fc46e5553d731fa8beb5fa5a13",
         intel: "10bf892037d1bce91e75ba3a7f0b9789bdb5134416315346aaa63bd2ca95c5ad"

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
