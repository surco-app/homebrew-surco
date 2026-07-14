cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.58.0"
  sha256 arm:   "328114b1c284e40fab3ca88b93dd7611323b4b8a672ead2769f1017fd33ee961",
         intel: "395e0b5c1d76b8d19a9a8bd6ce70608a8acfaa6f949e52be2a8bb469bd9b59e1"

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
