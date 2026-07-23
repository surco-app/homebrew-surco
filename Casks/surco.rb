cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.71.2"
  sha256 arm:   "a8d594481b6cc63ceecfff1ea2429d41bd6240c36dfd0c585489ad1858b77cbc",
         intel: "741cca271ccdc47d20b79b3318ec084cc780f2cdad7db0494cc58bcfb6b6cb84"

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
