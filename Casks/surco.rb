cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.95.1"
  sha256 arm:   "2ed7c69e6bff7ea7f6a9e1db57b40b304aff0b42d2e719e396dcf6b974b4daf0",
         intel: "a185ecfb6140248cdf0547efa5a5925bec158698fbbe96455c4cc2a196bd1ffb"

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
