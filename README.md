# Xcode13ClockHandRotationEffectModifier


Make sure Xcode13 is default.

```
xcode-select -p
/Applications/Xcode13.4.1.app/Contents/Developer
```

Otherwise

```
sudo xcode-select -s /Applications/Xcode13.4.1.app
```


Create xcframework

1. create a swift framework project named : Xcode13ClockHandRotationEffect
2. add Xcode13ClockHandRotationEffectModifier.swift to the project
3. run build-xcframework.sh in the project root.
4. use the xcframework for SPM or directly into your Xcode14 project


Or build single file

```bash
xcrun swiftc Xcode13ClockHandRotationEffectModifier.swift -emit-module -emit-library -static
```


Then make it spm.

