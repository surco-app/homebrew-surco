cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.11.0"
  sha256 arm:   "acee728bfdd4d7b82c5e521c3fde2e2981e5d144735087d6e4e6d79ba4d4865a",
         intel: "dd8616b6bf3e1149ef15af9ed44c842d09b80c44c54f27efbfa9621685e44805"

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
