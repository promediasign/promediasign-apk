.class public Lsk/mimac/slideshow/http/page/AboutSoftwarePage;
.super Lsk/mimac/slideshow/http/page/AbstractFormPage;
.source "SourceFile"


# static fields
.field private static final LICENCE:Ljava/lang/String;


# instance fields
.field private final dateFormat:Ljava/text/DateFormat;


# direct methods
.method private static constructor <clinit>()V
    .locals 2

    const-wide v0, -0x3d0fffaab768L

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$Slideshow$slideshowandroid;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/http/page/AboutSoftwarePage;->LICENCE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Method;->GET:Lfi/iki/elonen/NanoHTTPD$Method;

    invoke-direct {p0, v2, v0, v1}, Lsk/mimac/slideshow/http/page/AboutSoftwarePage;-><init>(Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfi/iki/elonen/NanoHTTPD$Method;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    :cond_0
    if-nez p3, :cond_1

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lsk/mimac/slideshow/http/page/AbstractFormPage;-><init>(Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public getPageHeader()Ljava/lang/String;
    .locals 2

    const-wide v0, -0x1268ffaab768L

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$Slideshow$slideshowandroid;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public process()V
    .locals 4

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractFormPage;->params:Ljava/util/Map;

    if-eqz v0, :cond_1

    const-string v1, "license_key"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lsk/mimac/slideshow/utils/LicenseKeyUtils;->checkLicenseKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lsk/mimac/slideshow/settings/SystemSettings;->setLicenseKey(Ljava/lang/String;)V

    const-string v0, "License key activated successfully! App will restart in 2 seconds..."

    iput-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractFormPage;->resultMessage:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lsk/mimac/slideshow/http/page/AboutSoftwarePage$1;

    invoke-direct {v1, p0}, Lsk/mimac/slideshow/http/page/AboutSoftwarePage$1;-><init>(Lsk/mimac/slideshow/http/page/AboutSoftwarePage;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const-string v0, "Invalid license key! Please check and try again."

    iput-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractFormPage;->resultMessage:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method public writePage(Ljava/lang/StringBuilder;)V
    .locals 3

    const-string v0, "<h3>License Key</h3><form method=\'post\' action=\'/aboutsoftware\'>Enter the license key below for the following device ID: <b>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lsk/mimac/slideshow/utils/LicenseKeyUtils;->getProcessedDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</b><br><br><table><tr><td>License Key:</td><td><input type=\'text\' name=\'license_key\' value=\'\' size=\'40\'></td></tr></table><input type=\'submit\' class=\'button\' value=\'Save\'></form><br><br>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<h3>USB Auto-Import</h3><div style=\'padding:10px;background:#f0f0f0;border-radius:5px;\'><b>Status: </b>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "<span style=\'color:green;\'>\u2713 Permission Granted</span><br>USB drives with \'slideshow\' folder will auto-import files."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v0, "<span style=\'color:red;\'>\u2717 Permission Not Granted</span><br>Storage permission required for USB auto-import.<br><small><b>How to enable:</b> Android Settings \u2192 Apps \u2192 Promedia Sign \u2192 Permissions \u2192 Files and Media \u2192 Allow management of all files</small>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v0, "<span style=\'color:green;\'>\u2713 Permission Granted</span><br>USB drives with \'slideshow\' folder will auto-import files."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v0, "</div><br>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
