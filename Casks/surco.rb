cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "1.13.0"
  sha256 arm:   "270786ee8e058d45bdec1a97bbc70b5d8d89aaefd1830913871088dedc8e5209",
         intel: "3ee22f00973fa6c0292c3af599ba66afad2768cddb748de9c9c1b8dc22a4ed92"

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
