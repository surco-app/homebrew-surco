cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "1.26.0"
  sha256 arm:   "48f2a0898dfcf933264b9ca20bee5d6ffbcbb1aee5f1cb3e28d46f1ea4b0d322",
         intel: "e8d2a71bd508a2d2366910450c63c22e88c34ec2cf3339e7b36cc6ce3ebc386d"

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
