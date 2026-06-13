cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.13.0"
  sha256 arm:   "8e1e85d652c135154fdf8d358ddc9069d394b97fd0b47b9fbe7a3529c578e288",
         intel: "3cbbb3105efb0519b4a2abad011a0b06a651a12ba1d6196f7d2d763e80f31086"

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
