cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.99.7"
  sha256 arm:   "f3190c5248393bb4d6e209afb7c61ccf1b45bf875cad039925181a2b0d61a6bc",
         intel: "924c58170038f9c0260556dc2a1851869e9511e95ed1d3fe7d4aaefe01e28d99"

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
