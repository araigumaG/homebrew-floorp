cask "floorp" do
  version "10.7.0"
  sha256 "3e0fb9bab98e92e81bfe9c6ae454b2fee7f5c08b1ac5dcf5856a29b8366a1573"

  url "https://github.com/Floorp-Projects/Floorp/releases/download/v#{version}/floorp-macOS-universal.dmg",
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
