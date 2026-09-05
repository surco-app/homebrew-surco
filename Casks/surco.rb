cask "surco" do
  arch arm: "arm64", intel: "x64"

  version "0.93.1"
  sha256 arm:   "a41607ed870ccec0f6c047dc6a6bbc267f3f5d47dd087ee403b2517b50831ca4",
         intel: "1a7d9f6bb013b823c2fe50a892eadcb88cb84dd4f6150eda4917df5ef4a105c1"

  url "https://github.com/surco-app/surco-releases/releases/download/v#{version}/Surco-#{version}-#{arch}.dmg"
  name "Surco"
  desc "Audio track organizer for DJs"
  homepage "https://github.com/surco-app/surco-releases"

  livecheck do
    url "https://github.com/surco-app/surco-releases"
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
