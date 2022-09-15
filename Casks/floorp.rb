cask "floorp" do
  version "10.4.0"
  sha256 "c909840609b1677711bebaeffbd2b38ac64e2b7b33b6b0979a3462f4efe6fbbc"

  url "https://github.com/Floorp-Projects/Floorp/releases/download/v#{version}/floorp-macOS-Univerasal.dmg",
      verified: "github.com/Floorp-Projects"
  name "Floorp browser"
  desc "Firefox based browser with excellent privacy"
  homepage "https://floorp.ablaze.one/"

  auto_updates true

  app "Floorp.app"

  zap trash: [
    # "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.floorp.sfl*",
    "~/Library/Application Support/Floorp",
    "~/Library/Caches/Floorp",
    "~/Library/Preferences/org.mozilla.floorp.plist",
  ]
end
