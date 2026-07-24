cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.73.0"
  sha256 arm:   "dbb96d9ca0a2c24951a8b3ecbdda771cebab29bb8c88d7d61414f098ef5cae3a",
         intel: "b814f00a9858dd08a27a9d817c9405fef9edcec5536ceba2fd8aadc35fe2a6f2"

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
