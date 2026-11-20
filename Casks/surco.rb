cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "1.41.0"
  sha256 arm:   "653113e4cc4e12e7512c2e9ab4fde12a57cecb5179673596ca2ff8975235de05",
         intel: "afa4ede5036941bbb4430366b12ff3568e6b5fe216161754e0132d8901cd8231"

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
