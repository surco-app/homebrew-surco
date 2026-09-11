cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.95.6"
  sha256 arm:   "9b33a6512681a9d6e89db497e16ef70435a9463dfd5b0ce2dcefbaddf1d26fad",
         intel: "09f0d93d028e796acc1dcf070837ba9387820cbc35749fe7cac94b25ea9eadb5"

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
