cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "1.2.3"
  sha256 arm:   "d34c7ed9e702add2bd9636b1b784963be95bd6e83023e2b60414fc4585b8a7eb",
         intel: "f931ce919aeab0cfd6da66b5e6a65025d1d39a61e1a8163a2170aca930d7c90b"

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
