cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "1.34.1"
  sha256 arm:   "3e56d191597a5e8362e7dfa7afe63a1d2270a3f56c64bd6ead2ccb84753c79ca",
         intel: "83f5b579ca690b0a4c5db9e68e51f43e00342b3f4edf028c95d9aba4c3057e82"

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
