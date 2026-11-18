cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "1.39.0"
  sha256 arm:   "7db5293aba6d04317c12d75053e444ddd49cb275ec4ebfcb6ea7d69700d46609",
         intel: "4f8551ca3f1d86cf1a2be7d2137c74494f8eec2b79b6f853bcbdfa95f786b21b"

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
