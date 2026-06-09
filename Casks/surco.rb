cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.7.1"
  sha256 arm:   "c2f8f80d92494688de05ea5df722282c5afddd1096d62ba0a79e11d202d58554",
         intel: "77fe3ada43dd5d8a32aac5eb2a64759a1e0a025a9f2d516ef51ec28358e890a1"

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
