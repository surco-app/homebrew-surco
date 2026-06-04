cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.1.10"
  sha256 arm:   "7d3b786a2de9086333a30a9da87ea84bb9277e9fde75eada90e120cda3d84437",
         intel: "8e317ae4ff9929a3f6e28093fcf485a84544963a36357717abe7cdf2bb56bb40"

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
