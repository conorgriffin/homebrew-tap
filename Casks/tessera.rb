cask "tessera" do
  version "1.2.3"
  sha256 "05bff3ff57ff780be22db99d39fe6cd42df1a0c6b338f10790ea2a425dee8f84"

  url "https://github.com/conorgriffin/tessera-releases/releases/download/v#{version}/Tessera-#{version}.dmg",
      verified: "github.com/conorgriffin/tessera-releases/"
  name "Tessera"
  desc "Inspect, verify and build JSON Web Tokens (JWT and JWE)"
  homepage "https://conorgriffin.com/tessera"

  livecheck do
    url "https://conorgriffin.com/tessera/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sequoia"

  app "Tessera.app"

  zap trash: [
    "~/Library/Application Scripts/com.conorgriffin.tessera.direct",
    "~/Library/Containers/com.conorgriffin.tessera.direct",
  ]
end
