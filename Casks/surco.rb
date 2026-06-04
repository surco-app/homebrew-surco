cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.2.0"
  sha256 arm:   "c474f88eea205c0436c739726e591754cac1a0f8fdc7f3d7f3a1f98b9e51061c",
         intel: "05dac2e4a57a8d37222a864d4720cbb59246e3f8bd149c205781450d4d819dcf"

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
