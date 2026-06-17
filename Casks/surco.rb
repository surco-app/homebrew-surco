cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.17.0"
  sha256 arm:   "b956b971a663a1948af565b67b4bcb900e2536e8bd5c6dcc1e46f839a4eacfcc",
         intel: "967e4ec7ee7e07210aade9e071bbe4ded901ba1fbbe35ea6b71f39cd5540840d"

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
