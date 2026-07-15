cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.60.1"
  sha256 arm:   "ccbf7dd97047f159a475e50351a92fcc079833528d306231b2ffb4c6bfe31e9c",
         intel: "b05784177497ef9fe19ff77fbc47fd469a380f3391cee32cc962d1d95d9e4aca"

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
