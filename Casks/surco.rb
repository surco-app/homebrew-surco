cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.5.1"
  sha256 arm:   "f42bf2ed20910e7d034b7529b840ebbc220fa49fbc49e16e9fa64596e530a11e",
         intel: "95e6693b48517ebb03378668c652e736656d988aa036fe39ef3ecc4386d260ed"

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
