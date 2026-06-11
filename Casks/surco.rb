cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.10.1"
  sha256 arm:   "95a89c42c5999442ca050de45e3da5e762f8fc32a07ec3f73de4d00220fbd0a5",
         intel: "e2ac60186bdfd71497177376dea0232837e279e4d1dd6f6a107a0f3956a4d018"

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
