cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.36.1"
  sha256 arm:   "c7e8072c3d15378b5b07720c2175b6f671683831a9037f5918d2c1cd4d1eb220",
         intel: "5f29fdc4d0b828d4d021310ab76ca43dc0415dcec89afe3daf48cdfe815fb2c6"

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
