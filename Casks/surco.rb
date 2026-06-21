cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.21.0"
  sha256 arm:   "68098d074e931a78432d0a6e51a41af9e80eaa1d32e345a04108b57251d46cd7",
         intel: "87a4e5edce389a872fb533a5669436dce855e405e558c1029d3c4b08dd36114c"

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
