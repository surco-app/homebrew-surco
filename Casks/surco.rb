cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.18.0"
  sha256 arm:   "8c02e3967db138d2cd9cbdbb15c6478e974344da7454e35d44306eafac256495",
         intel: "759abe9e4608745741342d3df860c8ee3ea88306e4272bbf1c0781ef10184544"

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
