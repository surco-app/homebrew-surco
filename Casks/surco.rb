cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.75.1"
  sha256 arm:   "3daae7d9fade64e48b2db429ee9e9ec1e9189017c254e473ff15e3b91b6fd3ed",
         intel: "d86e6efa0ec7915b3b4116343ad66c3705d4ef0e6b6708907db2dcd7ee0af346"

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
