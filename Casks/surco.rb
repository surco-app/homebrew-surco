cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.29.0"
  sha256 arm:   "cf54dd41d1fee6011f3bc8a97185b14152ae0de460669a29cb73a51cef984d41",
         intel: "8ec32b41fcadb60b760039ec39abab7d01d27ed38c05c819f48488d9db2a0dab"

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
