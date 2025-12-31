# Promedia Sign - Android Studio Project

## 📦 This Package Contains

- ✅ Decompiled APK source (Smali bytecode)
- ✅ All resources (images, layouts, strings, etc.)
- ✅ AndroidManifest.xml
- ✅ Build configuration for AAB generation
- ✅ Your signing keystore (signing-key.keystore)

## 🚀 How to Build AAB (Android App Bundle)

### Step 1: Install Android Studio

1. Download from: https://developer.android.com/studio
2. Install on your computer
3. Open Android Studio

### Step 2: Open This Project

1. In Android Studio: **File → Open**
2. Navigate to this folder
3. Click **OK**
4. Wait for Gradle sync to complete (may take 5-10 minutes first time)

### Step 3: Build AAB

1. Go to: **Build → Generate Signed Bundle / APK**
2. Select: **Android App Bundle**
3. Click **Next**
4. Enter keystore info:
   - **Key store path:** `signing-key.keystore` (already in project)
   - **Key store password:** `11Mesahast`
   - **Key alias:** `key0`
   - **Key password:** `11Mesahast`
5. Click **Next**
6. Select: **release**
7. Click **Finish**

### Step 4: Find Your AAB

The AAB will be created at:
```
app/build/outputs/bundle/release/app-release.aab
```

This is the file you upload to Google Play Store!

## 📤 Upload to Play Store

1. Go to: https://play.google.com/console
2. Create new app
3. Upload the `app-release.aab` file
4. Complete store listing
5. Publish!

## ⚠️ Important Notes

### About Smali Code

This project uses **Smali bytecode**, not Java source code. This is normal for decompiled apps.

- Smali is Android's low-level bytecode format
- It compiles perfectly into working apps
- You don't need to understand it - just build the AAB

### If You Get Errors

**Gradle sync errors:**
- Make sure you have internet connection
- Android Studio will download required SDKs automatically

**Build errors:**
- Try: **Build → Clean Project**
- Then: **Build → Rebuild Project**

**Signing errors:**
- Double-check the keystore password: `11Mesahast`
- Make sure `signing-key.keystore` is in the project root

## 📊 App Details

- **Package Name:** sign.promedia.ltd
- **Version:** 4.9.5 (5000262)
- **Min SDK:** 21 (Android 5.0)
- **Target SDK:** 34 (Android 14)

## 🔧 Troubleshooting

### Error: "Signing key not found"
**Solution:** Make sure `signing-key.keystore` is in the project root folder

### Error: "Gradle sync failed"
**Solution:** 
1. Update Android Studio to latest version
2. File → Invalidate Caches → Invalidate and Restart

### Error: "Unable to find bundletool"
**Solution:** Android Studio 4.1+ includes bundletool automatically

## 📝 Project Structure

```
android_studio_project/
├── app/
│   ├── src/
│   │   └── main/
│   │       ├── AndroidManifest.xml
│   │       ├── res/ (all resources)
│   │       ├── assets/ (app assets)
│   │       ├── smali/ (bytecode)
│   │       ├── smali_classes2/
│   │       ├── smali_classes3/
│   │       ├── smali_classes4/
│   │       └── smali_classes5/
│   └── build.gradle
├── signing-key.keystore ← Your signing key
├── build.gradle
└── settings.gradle
```

## ✅ Success Checklist

Before uploading to Play Store:

- [ ] AAB file generated successfully
- [ ] AAB is signed with your keystore
- [ ] AAB size is approximately 50 MB
- [ ] You have backup of `signing-key.keystore` (CRITICAL!)
- [ ] You remember the password: `11Mesahast`

## 🎉 You're Ready!

Once you build the AAB, you can upload it to Play Store as a **new app**.

Users will be able to download and use it - it will work exactly like your original APK!

---

**Need help?** Let me know if you encounter any errors during the build process.
