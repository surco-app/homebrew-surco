cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.94.2"
  sha256 arm:   "fd39f255e1f326d7ea784c8a9aeb9cde1f3a6e6228982530c1fc6d9a6c7e7c37",
         intel: "36e7187506cf1ac3242549b5835b579d20b81fd7a1fb7089e36cbf70aa6d56fa"

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
