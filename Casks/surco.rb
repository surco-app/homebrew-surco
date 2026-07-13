cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.54.0"
  sha256 arm:   "4819119d33ff88ec51bb97d276d843bea5fa2cac0b0bfdde098e7688b78d8463",
         intel: "40a667308775a3c0e1baaac7be28c837c0306ead00a24f31a223c6d14bf97da9"

  url "https://github.com/vigosan/surco-releases/releases/download/v#{version}/Surco-#{version}-#{arch}.dmg"
  name "Surco"
  desc "Audio track organizer for DJs"
  homepage "https://github.com/vigosan/surco-releases"

  livecheck do
    url "https://github.com/vigosan/surco-releases"
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
