cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "1.22.2"
  sha256 arm:   "a958cdfcef2b7bc2cdf2cbd19d5a1114af107e6a56f21653b76d8890161e82b6",
         intel: "618ca13bca4a55e86b7cd1179076e1bff93916c1ced2865165249fd81b683dd1"

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
