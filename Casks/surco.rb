cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.38.3"
  sha256 arm:   "d514a3fb68f9baa43bcd9cb98cb2a59e51e35c222b5d0503184a764a40d7ba24",
         intel: "8f04535b80695fbc32068b3e56b3af29bfe287147def1c46ed9b2b1cd73605ef"

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
