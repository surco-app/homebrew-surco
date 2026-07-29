cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.76.4"
  sha256 arm:   "d2e7bbc57eafc3ebec06e7e4b12f97620b2c9c6532fe32aec3e72fec8cd8ecfa",
         intel: "6294e1e84dc3169768463ae131af3c05547a5a7c7139e7af70490e82f40479ad"

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
