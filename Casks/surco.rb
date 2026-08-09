cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.83.0"
  sha256 arm:   "dc69bdbf5f92d07a94b5436662b3b9e0fdc7994f646b1322165a975863df4ebd",
         intel: "4b6d26ed4babeb25a4087fbba93ebbb9332bb0a8f9a598d6274b4ac33c1c0fd9"

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
