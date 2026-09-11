cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.96.0"
  sha256 arm:   "3ba48e32684cafe6c37b0f6e1e5075bf3646e3da873390275e37f983f927da47",
         intel: "0ab5c96b1e0a54ec06acde475fa03aac1bb8a1fbdd7a7c51318262d7ec1f959c"

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
