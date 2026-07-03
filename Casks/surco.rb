cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.35.0"
  sha256 arm:   "1da8176f7fe10ec0c8b91066314cff2177a10d51c551e7c0d23a3c5c50f1e0bf",
         intel: "ec6c57d91b92e98d3049e039fd8ca740b9c1c1862c8edbe1cb926fab4a6c056c"

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
