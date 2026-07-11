cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.48.0"
  sha256 arm:   "034aa03ee2eceb639c368d8856cbb84e2784b58683165363ca21abb19d857202",
         intel: "77b2f311c967b5dd2c7e7196adbcb2a4d2788ed5b98bb4babbfa3b1f3fc6021c"

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
