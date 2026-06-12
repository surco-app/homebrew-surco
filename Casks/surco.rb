cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.11.1"
  sha256 arm:   "32a98d2dcb224912455718e2e6688a9112a95a1a2e4eba5a7ab061a235ffa191",
         intel: "192a87f06e8876eca848324a53bfa06440b9c2bcac4ddcc8c43011e8acabe212"

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
