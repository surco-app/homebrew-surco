cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.93.0"
  sha256 arm:   "d3700be5ed8b783425ac837f1bdc3f2fc51786e69b68eef6d3856a97f5f639a4",
         intel: "a050f88a59f4ab4b81d5413aca5d3d28f4cf34e67ed728a1c16ecb5cbfa6b6fc"

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
