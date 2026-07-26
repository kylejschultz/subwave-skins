# SUBWAVE Skins

Personal SUB/WAVE player skin experiments.

## Prism

Prism is a translucent cover-wash console skin for the SUB/WAVE web player.

Source:

- `skins/prism/PrismSkin.tsx`
- `skins/prism/Prism.module.css`

Upstream app integration patches:

- `patches/0001-feat-web-improve-player-skin-preview-support.patch`
- `patches/0002-feat-web-add-Prism-player-skin.patch`
- `patches/0003-fix-web-keep-Prism-voice-line-until-audible-speech-e.patch`

Apply the patches from the root of the upstream `subwave` repo with:

```sh
git am patches/*.patch
```
