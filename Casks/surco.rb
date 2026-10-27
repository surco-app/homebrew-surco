cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "1.12.3"
  sha256 arm:   "604dd0a3d5b8e9c0bb785348840be662b50b9f470e7749abc9bfa697087189d5",
         intel: "bd3ca6f55fcc46a3b711df5001913aed076c28bb26ed8ed5c39c4f178ecbf77c"

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
