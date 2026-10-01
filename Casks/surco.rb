cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "1.6.0"
  sha256 arm:   "62b3f7a667d4eb21a21491e10eb50c6efedc4f3766c62f2d36334bca3e1bbde6",
         intel: "ea9a0bb09372affbf347a9acf7ad8448af9af9f6d576fa8fef574631089bcd47"

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
