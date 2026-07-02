cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.32.0"
  sha256 arm:   "0a0f3715ec133aa17bc5ad2f67446fb87762cdc5918962a3d30026aa628b16dd",
         intel: "1e1c0d1bf8a2c00f36b94c8df4cb9390372acec1c8af8ce62285cd6d9a4e70ec"

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
