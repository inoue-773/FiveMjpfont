
# Custom Japanese Font Library for FiveM

[![Github All Releases](https://img.shields.io/github/downloads/inoue-773/NB_JpFontFiveM/total.svg)]()

This is a Japanese font library designed for FiveM servers. The NotoSans font has been converted to the gfx format, ensuring compatibility with RAGE, the game engine powering GTA5. Included are four commonly used variants: thin, medium, semibold, and bold. While it's technically possible to replace the file and use other fonts, it's crucial to verify the commercial license before doing so to ensure compliance.

This library is intended for built-in functions like SetTextFont(). HTML based scripts are not compatible with this because they define the font in css file.

I included a example script to test these fonts out. Feel free to go to `vector3(-981.28, -2637.14, 89.52)` and see the text there.

FiveMサーバー向け日本語フォントです。ttf形式のフォントをgfx形式に変換したものを4つ同梱しています。元のフォントはGoogleとAdobeが開発したNoto Sans Japaneseで、漢字の収録数は他のフォントと比べても圧倒的です。従って、漢字が文字化けする可能性は極めて低いと考えられます。

このスクリプトはFiveMのサーバー側からgfx形式のフォントをstreamすることでクライアント側に表示させます。メモリ使用量は各フォント20MBほどですのでパフォーマンスにはほぼ影響がないです。また、HTMLを使用したNUIには非対応です。NUIに日本語フォントを導入するにはcssで別途定義してください。

このフォントをテストするスクリプトも同梱しています。`vector3(-981.28, -2637.14, 89.52)` に行くと「あいうえおtest」と出力するようにできていますので、フォントの確認用に使ってください。

![image of test.lua](https://github.com/inoue-773/NB_JpFontFiveM/blob/image/aiueotest.png)
## Usage

To use this font library, simply place the resource folder into the standalone directory. This will automatically register the font files. Before utilizing these custom fonts within another resource, ensure that you start this resource first by editing the server.cfg file accordingly. Additionally, you'll need to add `<FONT FACE='FONT_NAME_HERE'>` before the string you want to display with the custom font. An example code will be provided below for reference.

このフォントを使うには、standaloneフォルダにこのリソースを入れてください。ほかのスクリプトでも使えますが、カスタムフォントを使いたいリソースの前にこのリソースを開始させてください。また、表示させたい文字列の前に `<FONT FACE='FONT_NAME_HERE'>` を付け足す必要があります。具体的な例は下にしるしておきます。末尾の`</font>`はなくても動きます。


```bash
  Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local playerCoords = GetEntityCoords(PlayerPedId())
        local distance = #(coords - playerCoords)

        if distance <= maxDistance then
            DrawText3D(coords, '<FONT FACE = "NotoSansMedium">あいうえおtest</font>')
        end
    end
end)
```




## Support

Contact me via Discord: nickyboi7

You can also find me here: https://discord.gg/flecity
## References

#### Noto Sans Japanese - Google Fonts
https://fonts.google.com/noto/specimen/Noto+Sans+JP

#### REGISTER_FONT_ID
https://docs.fivem.net/natives/?_0xACF6D8EE

#### REGISTER_FONT_FILE
https://docs.fivem.net/natives/?_0x1B3A363

#### SET_TEXT_FONT
https://docs.fivem.net/natives/?_0x66E0276CC5F6B9DA

#### FiveM update - May 5th/6th, 2017
https://forum.cfx.re/t/fivem-update-may-5th-6th-2017/18200

#### FiveM Custom Fonts That Supports Arabic/Hebrew Characters
https://forum.cfx.re/t/fivem-custom-fonts-that-supports-arabic-hebrew-characters/3754100


## License

These fonts are licensed under Open Font License.
https://openfontlicense.org/
