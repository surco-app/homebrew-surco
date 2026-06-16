cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.15.2"
  sha256 arm:   "e91c7a8b6d90f8c39350e45eccc3a7d10bd7444c28bbcd8c929a2e749960c7cc",
         intel: "db9d34f3ec5a31a74ac610fcb0d7cad886303f1ec0b993a5d897df06aa7d798c"

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
