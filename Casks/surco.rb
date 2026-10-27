cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "1.12.1"
  sha256 arm:   "00e665eb29ff6073b8c6641aa5f35bd5f0cafc8e35c942bcf1195859900ff3af",
         intel: "b8e2cc4e9b4fd2d067c86c594d039b89f7480b7f51b4fb17c624aa1c086ea843"

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
