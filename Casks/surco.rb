cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.20.0"
  sha256 arm:   "0214bd15e293215277e07023af80b50d6084a3038029cdae8f71a62ebfd389bf",
         intel: "47a8460dd5c4233a05e593809137cc8c8a686faeb30f48bffd02bc33d3c8bc9e"

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
