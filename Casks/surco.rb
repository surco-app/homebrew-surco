cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.64.0"
  sha256 arm:   "8b690b4d5892a67d0b2616afe55e567c37fc161f2668418e1bca565934c71ce2",
         intel: "e1633cbb32c2f7dba4f8c5575c4c36b72b70de0a0439a18e2bd52f51722a7145"

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
