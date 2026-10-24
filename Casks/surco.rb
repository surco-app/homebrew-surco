cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "1.11.1"
  sha256 arm:   "c6a82eeb653bb5362c21e5d3b85e1b32bad2eb4b0da8e11507fb3afe7d17aa67",
         intel: "e410df44dec94b1b910af46ed54760ee73a71401d3155a81d4f802bc932c7006"

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
