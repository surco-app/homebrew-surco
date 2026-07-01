cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.28.0"
  sha256 arm:   "ab141a7a1c8f1722d4616dcc66b0367dbb31e5ea6a50ea0e484633299712ea1b",
         intel: "bcbc78543f40c483c67c6a4059775498b2d5b4e26e6ee99bf0b342a7fefa81a0"

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
