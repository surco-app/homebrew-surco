cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.78.0"
  sha256 arm:   "0eae26294bb5d1e7b2cc2d9e2e099b7f07cc418e4658229d1c1518731b5a650a",
         intel: "8470a6fb66168356b99143a65d192f8d8690b67251afc1a9a980f6a162f0d9c2"

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
