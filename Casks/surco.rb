cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.71.1"
  sha256 arm:   "c506475acf3d6d885ef01417c40339bc9f5eeed73a3b81dc5c1f47e939ac5f4b",
         intel: "ee8f9443d2a25256fcd68c762e47fd3e925224e5c3c97aba024d450922c4a6ab"

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
