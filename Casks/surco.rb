cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.6.0"
  sha256 arm:   "d2869ddaacb855ae4234b6cde123629072c6cf4f4dc4178cb411242787aaaeec",
         intel: "ae793a32277da2941ba865adfa95870f12b336614c0f3adb511c44fae37daf24"

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
