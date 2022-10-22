cask "floorp" do
  version "10.6.1"
  sha256 "6c1bc467c9431c0c31f6dec0fcf34ddc312a09cf7369d358d4e8ae3e3769cf54"

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
