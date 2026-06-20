cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.20.2"
  sha256 arm:   "3f000bdfd6178355c25d0ea0bad688a8a1c78093159a678ce92e6c2ae5396ff4",
         intel: "dc2e02dd46653c00cfae3dee267313352041d4d0b2df6fe2d95d1a1015a9b347"

  url "https://github.com/vigosan/surco-releases/releases/download/v#{version}/Surco-#{version}-#{arch}.dmg"
  name "Surco"
  desc "Audio track organizer for DJs"
  homepage "https://github.com/vigosan/surco-releases"

  auto_updates true
  depends_on macos: :big_sur

  app "Surco.app"

  zap trash: [
    "~/Library/Application Support/Surco",
    "~/Library/Logs/Surco",
    "~/Library/Preferences/com.vigosan.surco.plist",
    "~/Library/Saved Application State/com.vigosan.surco.savedState",
  ]
end
