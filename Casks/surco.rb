cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.22.2"
  sha256 arm:   "26661c4f308fa2b09590422b10807a89914f5875beb29e23a927ee5116b0eeb2",
         intel: "faa686d3fda5ba4ec4fd3cb3bb586215ffdc9b573ec84b621f2e0904c5954a03"

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
