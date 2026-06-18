cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.18.1"
  sha256 arm:   "f57441b7afb0b5cf322789663b0da7a6dbb3973199417b79143d836ad4044193",
         intel: "79d032203a9f93759ea0e168d052fffe029054050b0d5cb40459bffede499f14"

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
