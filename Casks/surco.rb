cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.17.1"
  sha256 arm:   "bf2fefd30127bb03fc82c0d2deb44f92ebf914373d541680c3a2c0a0323b4b54",
         intel: "fade2724cd6063795fabe5f45413095e554bb25f3ebb410bfb2f3c893f45d13e"

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
