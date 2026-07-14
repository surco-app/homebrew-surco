cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.56.0"
  sha256 arm:   "41bec3b6a93d5b6caa5ebf36ccadb7694f379095838bdf9605c9dba0d123e54e",
         intel: "cc4bdcb8f4dd847e7a9e71c3c05d9dcf2b473a1ba1c3ec5a6f639707e6234b14"

  url "https://github.com/vigosan/surco-releases/releases/download/v#{version}/Surco-#{version}-#{arch}.dmg"
  name "Surco"
  desc "Audio track organizer for DJs"
  homepage "https://github.com/vigosan/surco-releases"

  livecheck do
    url "https://github.com/vigosan/surco-releases"
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :big_sur

  app "Surco.app"

  zap trash: [
    "~/Library/Application Support/Surco",
    "~/Library/Caches/com.vigosan.surco",
    "~/Library/Caches/com.vigosan.surco.ShipIt",
    "~/Library/Logs/Surco",
    "~/Library/Preferences/com.vigosan.surco.plist",
    "~/Library/Saved Application State/com.vigosan.surco.savedState",
  ]
end
