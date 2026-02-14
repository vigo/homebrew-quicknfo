cask "quicknfo" do
  version "2.0.0"
  sha256 "ee43be6501fd2dd1bb78cd7ac0d8ad9f5c0e09f67de2aca3d112a5301ee9ad87"

  url "https://github.com/vigo/QuickNFO/releases/download/v#{version}/QuickNFO-v#{version}.zip"
  name "QuickNFO"
  desc "QuickLook preview extension for NFO files"
  homepage "https://github.com/vigo/QuickNFO"

  depends_on macos: ">= :sequoia"

  app "QuickNFO.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/QuickNFO.app"]
  end

  caveats <<~EOS
    QuickNFO is not signed with an Apple Developer ID.
    If you did not use --no-quarantine during install, run:
      xattr -cr /Applications/QuickNFO.app
    Then launch QuickNFO.app once to register the QuickLook extensions.
    After that, select any .nfo file in Finder and press Space to preview.
  EOS

  zap trash: [
    "~/Library/Containers/org.planbnet.quicknfo.preview",
    "~/Library/Containers/org.planbnet.quicknfo.thumbnail",
  ]
end
