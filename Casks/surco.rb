cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.89.1"
  sha256 arm:   "21564dfa787a155d305a3eaf110ac7d53d7ab98fe5bc834ea78dacf65381dc0c",
         intel: "bf774b68fdb1b2ae39cf012c4c058957a4080e648187b76160b8fa2a7983ad36"

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
