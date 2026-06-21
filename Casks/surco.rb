cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.22.0"
  sha256 arm:   "5dafef6a4fce79e85cba75a9358d79937f5220ee5962b944d3a5bd8be435d3e7",
         intel: "168415fa06e0afafc887d135cd57efb46b29739e94299bbed1da51e2027a81c9"

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
