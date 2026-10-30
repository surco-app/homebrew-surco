cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "1.18.3"
  sha256 arm:   "b4df54807ccdb0b275b432cd1589c150c49aaf0b2f7110a613ccaa0315faa3df",
         intel: "1f6dfb6e0a2be4dfe56479f07ee90b6e2c4f449dac9a1f26523e71dc6578725c"

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
