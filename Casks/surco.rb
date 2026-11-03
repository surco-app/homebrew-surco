cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "1.22.1"
  sha256 arm:   "b3c4914f4c6bfc8f38ad2a02a5dec3cea57bce237a29d9cedf6637f0cf44fa1b",
         intel: "dc7bfa68689295e525b47fc127b2e90813a0939a0e309940bb191d8803ba61fc"

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
