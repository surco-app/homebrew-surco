cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "1.38.2"
  sha256 arm:   "611aaedc27861d3f2bc6fffff3317b4170a5409515f8d3e7698b2839535fdc1d",
         intel: "6d28f86229c9e0845b1317d0f973ed5c3bf76c5617ed73d6109900dc76cdbbef"

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
