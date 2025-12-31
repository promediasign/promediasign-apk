.class public Lsk/mimac/slideshow/http/page/SettingsFormPage;
.super Lsk/mimac/slideshow/http/page/AbstractFormPage;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
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

    invoke-direct {p0, p1, p2, p3}, Lsk/mimac/slideshow/http/page/AbstractFormPage;-><init>(Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/Enum;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->lambda$writePage$2(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/Enum;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->lambda$writePage$3(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/lang/Enum;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->lambda$writePage$0(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Ljava/lang/Enum;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->lambda$writePage$1(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$writePage$0(Ljava/lang/Enum;)Ljava/lang/String;
    .locals 0

    check-cast p0, Lsk/mimac/slideshow/enums/ScaleType;

    invoke-virtual {p0}, Lsk/mimac/slideshow/enums/ScaleType;->getDesc()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$writePage$1(Ljava/lang/Enum;)Ljava/lang/String;
    .locals 0

    check-cast p0, Lsk/mimac/slideshow/enums/VideoPlayerType;

    invoke-virtual {p0}, Lsk/mimac/slideshow/enums/VideoPlayerType;->getDesc()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$writePage$2(Ljava/lang/Enum;)Ljava/lang/String;
    .locals 0

    check-cast p0, Lsk/mimac/slideshow/weather/WeatherReaderClass;

    invoke-virtual {p0}, Lsk/mimac/slideshow/weather/WeatherReaderClass;->getDesc()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$writePage$3(Ljava/lang/Enum;)Ljava/lang/String;
    .locals 0

    check-cast p0, Lsk/mimac/slideshow/enums/UsbMountAction;

    invoke-virtual {p0}, Lsk/mimac/slideshow/enums/UsbMountAction;->getDesc()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private processCertificateUpload()V
    .locals 7

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractFormPage;->params:Ljava/util/Map;

    const-string v1, "password"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lsk/mimac/slideshow/http/page/AbstractFormPage;->files:Ljava/util/Map;

    const-string v2, "cert"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v0}, Lsk/mimac/slideshow/utils/CertificateUtils;->checkCertificate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ": "

    const-string v5, "certificate_check_failed"

    if-eqz v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->addError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v3, Ljava/io/File;

    sget-object v6, Lsk/mimac/slideshow/FileConstants;->CERTIFICATE_FILE:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :try_start_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v3}, Lorg/apache/commons/io/FileUtils;->moveFile(Ljava/io/File;Ljava/io/File;)V

    invoke-static {v0}, Lsk/mimac/slideshow/utils/CryptUtils;->encryptPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsk/mimac/slideshow/settings/SystemSettings;->setHttpsCertPassword(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "certificate_set_success"

    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractFormPage;->resultMessage:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->addError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private processLicenseKeyActivation()V
    .locals 3

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractFormPage;->params:Ljava/util/Map;

    const-string v1, "license_key"

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

    new-instance v1, Lsk/mimac/slideshow/http/page/SettingsFormPage$1;

    invoke-direct {v1, p0}, Lsk/mimac/slideshow/http/page/SettingsFormPage$1;-><init>(Lsk/mimac/slideshow/http/page/SettingsFormPage;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, p0}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const-string v0, "Invalid license key! Please check and try again."

    iput-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractFormPage;->resultMessage:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private processSettingsChange()V
    .locals 6

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractFormPage;->params:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lsk/mimac/slideshow/settings/UserSettings;->valueOf(Ljava/lang/String;)Lsk/mimac/slideshow/settings/UserSettings;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v2}, Lsk/mimac/slideshow/settings/UserSettings;->getType()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/lang/Integer;

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    invoke-virtual {v2, v5}, Lsk/mimac/slideshow/settings/UserSettings;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_2
    invoke-virtual {v2, v1}, Lsk/mimac/slideshow/settings/UserSettings;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-class v4, Ljava/lang/Float;

    if-ne v3, v4, :cond_3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_2

    :cond_3
    const-class v4, Ljava/lang/String;

    if-ne v3, v4, :cond_4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    :cond_4
    const-class v4, Ljava/lang/Boolean;

    if-ne v3, v4, :cond_5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_2

    :cond_5
    const-class v4, Ljava/lang/Enum;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v3, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    goto :goto_2

    :cond_6
    sget-object v1, Lsk/mimac/slideshow/http/page/AbstractFormPage;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Unknown settingKey type={}"

    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :catch_0
    nop

    goto/16 :goto_0

    :cond_7
    :try_start_1
    invoke-static {}, Lsk/mimac/slideshow/settings/UserSettings;->save()V

    const-string v0, "settings_saved"

    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractFormPage;->resultMessage:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    sget-object v1, Lsk/mimac/slideshow/http/page/AbstractFormPage;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Can\'t save settings"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "settings_saving_error"

    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0, v1, v0}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->addError(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method private writeCheckboxSetting(Ljava/lang/StringBuilder;Lsk/mimac/slideshow/settings/UserSettings;)V
    .locals 3

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_help"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->writeCheckboxTableLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private writeEnumSetting(Ljava/lang/StringBuilder;Lsk/mimac/slideshow/settings/UserSettings;Lsk/mimac/slideshow/utils/Function;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "*>;>(",
            "Ljava/lang/StringBuilder;",
            "Lsk/mimac/slideshow/settings/UserSettings;",
            "Lsk/mimac/slideshow/utils/Function<",
            "TT;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lsk/mimac/slideshow/settings/UserSettings;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2, v1}, Lsk/mimac/slideshow/settings/UserSettings;->getEnum(Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v1

    const-string v2, "<tr><td><label for=\'"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "0\'>"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":</label> </td><td><select id=\'"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "0\' name=\'"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'>"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lsk/mimac/slideshow/settings/UserSettings;->getType()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/Enum;

    array-length v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p2, v3

    const-string v5, "<option value=\'"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "selected >"

    goto :goto_1

    :cond_0
    const-string v5, ">"

    :goto_1
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3, v4}, Lsk/mimac/slideshow/utils/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "</option>"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string p2, "</select> <span class=\'tooltip\'><span class=\'link\'>?</span><span class=\'tooltip-content\'>"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "_help"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "</span></span></td></tr>"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private writeExternalStorageTableLine(Ljava/lang/StringBuilder;)V
    .locals 4

    .line 1
    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->EXTERNAL_STORAGE_PATH:Lsk/mimac/slideshow/settings/UserSettings;

    .line 2
    .line 3
    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "<tr><td><label for=\'external_storage_path0\'>"

    .line 8
    .line 9
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string v1, "external_storage_path"

    .line 13
    .line 14
    invoke-static {v1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, ":</label> </td><td><select id=\'external_storage_path0\' name=\'external_storage_path\'>"

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getStorageListWithInternal()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Lsk/mimac/slideshow/utils/StorageInfo;

    .line 45
    .line 46
    const-string v3, "<option value=\'"

    .line 47
    .line 48
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Lsk/mimac/slideshow/utils/StorageInfo;->getPath()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v3, "\' "

    .line 59
    .line 60
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Lsk/mimac/slideshow/utils/StorageInfo;->getPath()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-static {v3, v0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-eqz v3, :cond_0

    .line 72
    .line 73
    const-string v3, "selected >"

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_0
    const-string v3, ">"

    .line 77
    .line 78
    :goto_1
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2}, Lsk/mimac/slideshow/utils/StorageInfo;->getDesc()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v2, "</option>"

    .line 89
    .line 90
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_1
    const-string v0, "</select> <span class=\'tooltip\'><span class=\'link\'>?</span><span class=\'tooltip-content\'>"

    .line 95
    .line 96
    const-string v1, "external_storage_path_help"

    .line 97
    .line 98
    const-string v2, "</span></span></td></tr>"

    .line 99
    .line 100
    invoke-static {p1, v0, v1, v2}, Ls/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method private writeFaceDetectionCameraId(Ljava/lang/StringBuilder;)V
    .locals 4

    .line 1
    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->FACE_DETECTION_CAMERA_ID:Lsk/mimac/slideshow/settings/UserSettings;

    .line 2
    .line 3
    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "<tr><td><label for=\'face_detection_camera_id0\'>"

    .line 8
    .line 9
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string v1, "face_detection_camera_id"

    .line 13
    .line 14
    invoke-static {v1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, ":</label> </td><td><select id=\'face_detection_camera_id0\' name=\'face_detection_camera_id\'><option value=\'\'>-</option>"

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getVideoInputList()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Lsk/mimac/slideshow/utils/Couple;

    .line 45
    .line 46
    const-string v3, "<option value=\'"

    .line 47
    .line 48
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    check-cast v3, Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v3, "\' "

    .line 61
    .line 62
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    check-cast v3, Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    if-eqz v3, :cond_0

    .line 76
    .line 77
    const-string v3, "selected >"

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_0
    const-string v3, ">"

    .line 81
    .line 82
    :goto_1
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2}, Lsk/mimac/slideshow/utils/Couple;->getSecond()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    check-cast v2, Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v2, "</option>"

    .line 95
    .line 96
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_1
    const-string v0, "</select> <span class=\'tooltip\'><span class=\'link\'>?</span><span class=\'tooltip-content\'>"

    .line 101
    .line 102
    const-string v1, "face_detection_camera_id_help"

    .line 103
    .line 104
    const-string v2, "</span></span></td></tr>"

    .line 105
    .line 106
    invoke-static {p1, v0, v1, v2}, Ls/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    return-void
.end method

.method private writeFaceDetectionControlAwbMode(Ljava/lang/StringBuilder;)V
    .locals 6

    .line 1
    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->FACE_DETECTION_CONTROL_AWB_MODE:Lsk/mimac/slideshow/settings/UserSettings;

    .line 2
    .line 3
    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getInteger()Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const-string v1, "<tr><td><label for=\'face_detection_control_awb_mode0\'>"

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, "face_detection_control_awb_mode"

    .line 17
    .line 18
    invoke-static {v1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, ":</label> </td><td><select id=\'face_detection_control_awb_mode0\' name=\'face_detection_control_awb_mode\'>"

    .line 26
    .line 27
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, "<option value=\'0\' "

    .line 31
    .line 32
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, ""

    .line 36
    .line 37
    const-string v2, "selected"

    .line 38
    .line 39
    if-nez v0, :cond_0

    .line 40
    .line 41
    move-object v3, v2

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move-object v3, v1

    .line 44
    :goto_0
    const-string v4, ">Off</option>"

    .line 45
    .line 46
    const-string v5, "<option value=\'1\' "

    .line 47
    .line 48
    invoke-static {p1, v3, v4, v5}, LA/g;->z(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const/4 v3, 0x1

    .line 52
    if-ne v0, v3, :cond_1

    .line 53
    .line 54
    move-object v3, v2

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    move-object v3, v1

    .line 57
    :goto_1
    const-string v4, ">Auto</option>"

    .line 58
    .line 59
    const-string v5, "<option value=\'2\' "

    .line 60
    .line 61
    invoke-static {p1, v3, v4, v5}, LA/g;->z(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const/4 v3, 0x2

    .line 65
    if-ne v0, v3, :cond_2

    .line 66
    .line 67
    move-object v3, v2

    .line 68
    goto :goto_2

    .line 69
    :cond_2
    move-object v3, v1

    .line 70
    :goto_2
    const-string v4, ">Incandescent</option>"

    .line 71
    .line 72
    const-string v5, "<option value=\'3\' "

    .line 73
    .line 74
    invoke-static {p1, v3, v4, v5}, LA/g;->z(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const/4 v3, 0x3

    .line 78
    if-ne v0, v3, :cond_3

    .line 79
    .line 80
    move-object v3, v2

    .line 81
    goto :goto_3

    .line 82
    :cond_3
    move-object v3, v1

    .line 83
    :goto_3
    const-string v4, ">Fluorescent</option>"

    .line 84
    .line 85
    const-string v5, "<option value=\'4\' "

    .line 86
    .line 87
    invoke-static {p1, v3, v4, v5}, LA/g;->z(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const/4 v3, 0x4

    .line 91
    if-ne v0, v3, :cond_4

    .line 92
    .line 93
    move-object v3, v2

    .line 94
    goto :goto_4

    .line 95
    :cond_4
    move-object v3, v1

    .line 96
    :goto_4
    const-string v4, ">Warm fluorescent</option>"

    .line 97
    .line 98
    const-string v5, "<option value=\'5\' "

    .line 99
    .line 100
    invoke-static {p1, v3, v4, v5}, LA/g;->z(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    const/4 v3, 0x5

    .line 104
    if-ne v0, v3, :cond_5

    .line 105
    .line 106
    move-object v3, v2

    .line 107
    goto :goto_5

    .line 108
    :cond_5
    move-object v3, v1

    .line 109
    :goto_5
    const-string v4, ">Daylight</option>"

    .line 110
    .line 111
    const-string v5, "<option value=\'6\' "

    .line 112
    .line 113
    invoke-static {p1, v3, v4, v5}, LA/g;->z(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    const/4 v3, 0x6

    .line 117
    if-ne v0, v3, :cond_6

    .line 118
    .line 119
    move-object v3, v2

    .line 120
    goto :goto_6

    .line 121
    :cond_6
    move-object v3, v1

    .line 122
    :goto_6
    const-string v4, ">Cloudy daylight</option>"

    .line 123
    .line 124
    const-string v5, "<option value=\'7\' "

    .line 125
    .line 126
    invoke-static {p1, v3, v4, v5}, LA/g;->z(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    const/4 v3, 0x7

    .line 130
    if-ne v0, v3, :cond_7

    .line 131
    .line 132
    move-object v3, v2

    .line 133
    goto :goto_7

    .line 134
    :cond_7
    move-object v3, v1

    .line 135
    :goto_7
    const-string v4, ">Twilight</option>"

    .line 136
    .line 137
    const-string v5, "<option value=\'8\' "

    .line 138
    .line 139
    invoke-static {p1, v3, v4, v5}, LA/g;->z(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    const/16 v3, 0x8

    .line 143
    .line 144
    if-ne v0, v3, :cond_8

    .line 145
    .line 146
    move-object v1, v2

    .line 147
    :cond_8
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string v0, ">Shade light</option>"

    .line 151
    .line 152
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    const-string v0, "</select> <span class=\'tooltip\'><span class=\'link\'>?</span><span class=\'tooltip-content\'>"

    .line 156
    .line 157
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string v0, "face_detection_control_awb_mode_help"

    .line 161
    .line 162
    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    const-string v0, "</span></span></td></tr>"

    .line 170
    .line 171
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    return-void
.end method

.method private writeHeading(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeHeading(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    return-void
.end method

.method private writeHeading(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V
    .locals 1

    if-eqz p3, :cond_0

    const-string p3, "<tr><td colspan=\'2\' style=\'border-bottom: 1px solid #aaa;padding-top: 3px;\'></td></tr><tr>"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string p3, "<td colspan=\'2\' style=\'padding-top:6px;\'><b>"

    const-string v0, "</b></td></tr>"

    .line 2
    invoke-static {p1, p3, p2, v0}, LA/g;->z(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private writeInputSetting(Ljava/lang/StringBuilder;Lsk/mimac/slideshow/settings/UserSettings;Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_help"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->writeFormTableLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private writeLanguagesTableLine(Ljava/lang/StringBuilder;)V
    .locals 5

    .line 1
    const-string v0, "<tr><td><label for=\'language0\'>"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    const-string v0, "language"

    .line 7
    .line 8
    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v0, ":</label> </td><td><select id=\'language0\' name=\'language\'>"

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lsk/mimac/slideshow/localization/Language;->values()[Lsk/mimac/slideshow/localization/Language;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    array-length v1, v0

    .line 25
    const/4 v2, 0x0

    .line 26
    :goto_0
    if-ge v2, v1, :cond_1

    .line 27
    .line 28
    aget-object v3, v0, v2

    .line 29
    .line 30
    const-string v4, "<option value=\'"

    .line 31
    .line 32
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v4, "\' "

    .line 43
    .line 44
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-static {}, Lsk/mimac/slideshow/localization/Localization;->getLanguage()Lsk/mimac/slideshow/localization/Language;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_0

    .line 56
    .line 57
    const-string v4, "selected >"

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_0
    const-string v4, ">"

    .line 61
    .line 62
    :goto_1
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3}, Lsk/mimac/slideshow/localization/Language;->getLocalNameHtml()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v3, "</option>"

    .line 73
    .line 74
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    add-int/lit8 v2, v2, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    const-string v0, "</select> <span class=\'tooltip\'><span class=\'link\'>?</span><span class=\'tooltip-content\'>"

    .line 81
    .line 82
    const-string v1, "language_help"

    .line 83
    .line 84
    const-string v2, "</span></span></td></tr>"

    .line 85
    .line 86
    invoke-static {p1, v0, v1, v2}, Ls/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method private writeScreenOrientationSettings(Ljava/lang/StringBuilder;)V
    .locals 7

    .line 1
    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->SCREEN_ORIENTATION:Lsk/mimac/slideshow/settings/UserSettings;

    .line 2
    .line 3
    const-class v1, Lsk/mimac/slideshow/enums/ScreenOrientation;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/settings/UserSettings;->getEnum(Ljava/lang/Class;)Ljava/lang/Enum;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lsk/mimac/slideshow/enums/ScreenOrientation;

    .line 10
    .line 11
    const-string v1, "<tr><td><label for=\'screen_orientation0\'>"

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, "screen_orientation"

    .line 17
    .line 18
    invoke-static {v1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, ":</label> </td><td><select id=\'screen_orientation0\' name=\'screen_orientation\'>"

    .line 26
    .line 27
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lsk/mimac/slideshow/enums/ScreenOrientation;->values()[Lsk/mimac/slideshow/enums/ScreenOrientation;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    array-length v2, v1

    .line 35
    const/4 v3, 0x0

    .line 36
    :goto_0
    if-ge v3, v2, :cond_2

    .line 37
    .line 38
    aget-object v4, v1, v3

    .line 39
    .line 40
    const-string v5, "<option value=\'"

    .line 41
    .line 42
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v5, "\' "

    .line 53
    .line 54
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    if-eqz v5, :cond_0

    .line 62
    .line 63
    const-string v5, "selected >"

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_0
    const-string v5, ">"

    .line 67
    .line 68
    :goto_1
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    new-instance v5, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string v6, "screen_orientation_"

    .line 74
    .line 75
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    invoke-static {v5}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v5, "</option>"

    .line 97
    .line 98
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    sget-object v5, Lsk/mimac/slideshow/enums/ScreenOrientation;->PORTRAIT:Lsk/mimac/slideshow/enums/ScreenOrientation;

    .line 102
    .line 103
    if-ne v4, v5, :cond_1

    .line 104
    .line 105
    const-string v4, "<option disabled>-----</option>"

    .line 106
    .line 107
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_2
    const-string v0, "</select> <span class=\'tooltip\'><span class=\'link\'>?</span><span class=\'tooltip-content\'>"

    .line 114
    .line 115
    const-string v1, "screen_orientation_help"

    .line 116
    .line 117
    const-string v2, "</span></span></td></tr>"

    .line 118
    .line 119
    invoke-static {p1, v0, v1, v2}, Ls/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    return-void
.end method


# virtual methods
.method public getPageHeader()Ljava/lang/String;
    .locals 1

    const-string v0, "device_settings"

    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public process()V
    .locals 7

    invoke-virtual {p0}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->isPost()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractFormPage;->params:Ljava/util/Map;

    const-string v1, "license_key"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->processLicenseKeyActivation()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractFormPage;->params:Ljava/util/Map;

    const-string v1, "password"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->processCertificateUpload()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->processSettingsChange()V

    :cond_2
    :goto_0
    invoke-static {}, Lsk/mimac/slideshow/settings/UserSettings;->values()[Lsk/mimac/slideshow/settings/UserSettings;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    iget-object v4, p0, Lsk/mimac/slideshow/http/page/AbstractFormPage;->params:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lsk/mimac/slideshow/settings/UserSettings;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public writePage(Ljava/lang/StringBuilder;)V
    .locals 12

    .line 1
    const-string v0, "<form method=\'post\' action=\'/settings\' class=\'longText\'><table>"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    const-string v0, "general_settings"

    .line 7
    .line 8
    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-direct {p0, p1, v0, v1}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeHeading(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 14
    .line 15
    .line 16
    const-string v0, "device_name"

    .line 17
    .line 18
    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const-string v3, "text"

    .line 23
    .line 24
    invoke-virtual {p0, p1, v0, v3, v2}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->writeFormTableLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->DEFAULT_VOLUME:Lsk/mimac/slideshow/settings/UserSettings;

    .line 28
    .line 29
    const-string v2, "number\' min=\'0\' max=\'100"

    .line 30
    .line 31
    invoke-direct {p0, p1, v0, v2}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeInputSetting(Ljava/lang/StringBuilder;Lsk/mimac/slideshow/settings/UserSettings;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, p1}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeLanguagesTableLine(Ljava/lang/StringBuilder;)V

    .line 35
    .line 36
    .line 37
    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->REQUEST_USER_AGENT:Lsk/mimac/slideshow/settings/UserSettings;

    .line 38
    .line 39
    invoke-direct {p0, p1, v0, v3}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeInputSetting(Ljava/lang/StringBuilder;Lsk/mimac/slideshow/settings/UserSettings;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->ALLOW_UNSUPPORTED_FILE_TYPES:Lsk/mimac/slideshow/settings/UserSettings;

    .line 43
    .line 44
    invoke-direct {p0, p1, v0}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeCheckboxSetting(Ljava/lang/StringBuilder;Lsk/mimac/slideshow/settings/UserSettings;)V

    .line 45
    .line 46
    .line 47
    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->KEEP_SCREEN_ON:Lsk/mimac/slideshow/settings/UserSettings;

    .line 48
    .line 49
    invoke-direct {p0, p1, v0}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeCheckboxSetting(Ljava/lang/StringBuilder;Lsk/mimac/slideshow/settings/UserSettings;)V

    .line 50
    .line 51
    .line 52
    sget-object v4, Lsk/mimac/slideshow/settings/UserSettings;->KEEP_SERVICE_RUNNING:Lsk/mimac/slideshow/settings/UserSettings;

    .line 53
    .line 54
    invoke-direct {p0, p1, v4}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeCheckboxSetting(Ljava/lang/StringBuilder;Lsk/mimac/slideshow/settings/UserSettings;)V

    .line 55
    .line 56
    .line 57
    sget-object v4, Lsk/mimac/slideshow/settings/UserSettings;->WATCHDOG_SERVICE_ENABLED:Lsk/mimac/slideshow/settings/UserSettings;

    .line 58
    .line 59
    invoke-direct {p0, p1, v4}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeCheckboxSetting(Ljava/lang/StringBuilder;Lsk/mimac/slideshow/settings/UserSettings;)V

    .line 60
    .line 61
    .line 62
    const-string v4, "screen_layouts"

    .line 63
    .line 64
    invoke-static {v4}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-direct {p0, p1, v4}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeHeading(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-direct {p0, p1}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeScreenOrientationSettings(Ljava/lang/StringBuilder;)V

    .line 72
    .line 73
    .line 74
    sget-object v4, Lsk/mimac/slideshow/settings/UserSettings;->MULTI_DISPLAY_ALLOW:Lsk/mimac/slideshow/settings/UserSettings;

    .line 75
    .line 76
    invoke-direct {p0, p1, v4}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeCheckboxSetting(Ljava/lang/StringBuilder;Lsk/mimac/slideshow/settings/UserSettings;)V

    .line 77
    .line 78
    .line 79
    sget-object v4, Lsk/mimac/slideshow/settings/UserSettings;->ROTATE_LAYOUT_PERIODICALLY:Lsk/mimac/slideshow/settings/UserSettings;

    .line 80
    .line 81
    invoke-direct {p0, p1, v4}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeCheckboxSetting(Ljava/lang/StringBuilder;Lsk/mimac/slideshow/settings/UserSettings;)V

    .line 82
    .line 83
    .line 84
    sget-object v4, Lsk/mimac/slideshow/settings/UserSettings;->USE_SCREEN_LAYOUT_INTERVALS:Lsk/mimac/slideshow/settings/UserSettings;

    .line 85
    .line 86
    invoke-direct {p0, p1, v4}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeCheckboxSetting(Ljava/lang/StringBuilder;Lsk/mimac/slideshow/settings/UserSettings;)V

    .line 87
    .line 88
    .line 89
    sget-object v4, Lsk/mimac/slideshow/settings/UserSettings;->SCREEN_LAYOUT_REFRESH_WAIT:Lsk/mimac/slideshow/settings/UserSettings;

    .line 90
    .line 91
    invoke-direct {p0, p1, v4}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeCheckboxSetting(Ljava/lang/StringBuilder;Lsk/mimac/slideshow/settings/UserSettings;)V

    .line 92
    .line 93
    .line 94
    sget-object v4, Lsk/mimac/slideshow/settings/UserSettings;->MANUAL_PLAYLIST_TIMEOUT:Lsk/mimac/slideshow/settings/UserSettings;

    .line 95
    .line 96
    const-string v5, "number\' min=\'1"

    .line 97
    .line 98
    invoke-direct {p0, p1, v4, v5}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeInputSetting(Ljava/lang/StringBuilder;Lsk/mimac/slideshow/settings/UserSettings;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    sget-object v4, Lsk/mimac/slideshow/settings/UserSettings;->PLAYLIST_CHANGE_RESET_ORDER:Lsk/mimac/slideshow/settings/UserSettings;

    .line 102
    .line 103
    invoke-direct {p0, p1, v4}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeCheckboxSetting(Ljava/lang/StringBuilder;Lsk/mimac/slideshow/settings/UserSettings;)V

    .line 104
    .line 105
    .line 106
    const-string v4, "onscreen_formatting"

    .line 107
    .line 108
    invoke-static {v4}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    invoke-direct {p0, p1, v4}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeHeading(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    sget-object v4, Lsk/mimac/slideshow/settings/UserSettings;->IMAGE_SCALE_TYPE:Lsk/mimac/slideshow/settings/UserSettings;

    .line 116
    .line 117
    new-instance v6, Lk1/p;

    .line 118
    .line 119
    const/4 v7, 0x7

    .line 120
    invoke-direct {v6, v7}, Lk1/p;-><init>(I)V

    .line 121
    .line 122
    .line 123
    invoke-direct {p0, p1, v4, v6}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeEnumSetting(Ljava/lang/StringBuilder;Lsk/mimac/slideshow/settings/UserSettings;Lsk/mimac/slideshow/utils/Function;)V

    .line 124
    .line 125
    .line 126
    sget-object v4, Lsk/mimac/slideshow/settings/UserSettings;->IMAGE_RESPECT_ORIENTATION:Lsk/mimac/slideshow/settings/UserSettings;

    .line 127
    .line 128
    invoke-direct {p0, p1, v4}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeCheckboxSetting(Ljava/lang/StringBuilder;Lsk/mimac/slideshow/settings/UserSettings;)V

    .line 129
    .line 130
    .line 131
    sget-object v4, Lsk/mimac/slideshow/settings/UserSettings;->VIDEO_PLAYER_TYPE:Lsk/mimac/slideshow/settings/UserSettings;

    .line 132
    .line 133
    new-instance v6, Lk1/p;

    .line 134
    .line 135
    const/16 v7, 0x8

    .line 136
    .line 137
    invoke-direct {v6, v7}, Lk1/p;-><init>(I)V

    .line 138
    .line 139
    .line 140
    invoke-direct {p0, p1, v4, v6}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeEnumSetting(Ljava/lang/StringBuilder;Lsk/mimac/slideshow/settings/UserSettings;Lsk/mimac/slideshow/utils/Function;)V

    .line 141
    .line 142
    .line 143
    sget-object v4, Lsk/mimac/slideshow/settings/UserSettings;->PRELOAD_ITEMS_IN_PLAYLIST:Lsk/mimac/slideshow/settings/UserSettings;

    .line 144
    .line 145
    invoke-direct {p0, p1, v4}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeCheckboxSetting(Ljava/lang/StringBuilder;Lsk/mimac/slideshow/settings/UserSettings;)V

    .line 146
    .line 147
    .line 148
    sget-object v4, Lsk/mimac/slideshow/settings/UserSettings;->VIDEO_INPUT_COMPATIBILITY_MODE:Lsk/mimac/slideshow/settings/UserSettings;

    .line 149
    .line 150
    invoke-direct {p0, p1, v4}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeCheckboxSetting(Ljava/lang/StringBuilder;Lsk/mimac/slideshow/settings/UserSettings;)V

    .line 151
    .line 152
    .line 153
    sget-object v4, Lsk/mimac/slideshow/settings/UserSettings;->VIDEO_TIMEOUT:Lsk/mimac/slideshow/settings/UserSettings;

    .line 154
    .line 155
    invoke-direct {p0, p1, v4, v5}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeInputSetting(Ljava/lang/StringBuilder;Lsk/mimac/slideshow/settings/UserSettings;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    sget-object v4, Lsk/mimac/slideshow/settings/UserSettings;->VIDEO_STREAM_BUFFERING:Lsk/mimac/slideshow/settings/UserSettings;

    .line 159
    .line 160
    const-string v5, "number\' min=\'10"

    .line 161
    .line 162
    invoke-direct {p0, p1, v4, v5}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeInputSetting(Ljava/lang/StringBuilder;Lsk/mimac/slideshow/settings/UserSettings;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    sget-object v4, Lsk/mimac/slideshow/settings/UserSettings;->XLS_BODY_STYLE:Lsk/mimac/slideshow/settings/UserSettings;

    .line 166
    .line 167
    invoke-direct {p0, p1, v4, v3}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeInputSetting(Ljava/lang/StringBuilder;Lsk/mimac/slideshow/settings/UserSettings;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    sget-object v4, Lsk/mimac/slideshow/settings/UserSettings;->WEB_VIEW_ZOOM:Lsk/mimac/slideshow/settings/UserSettings;

    .line 171
    .line 172
    const-string v5, "number"

    .line 173
    .line 174
    invoke-direct {p0, p1, v4, v5}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeInputSetting(Ljava/lang/StringBuilder;Lsk/mimac/slideshow/settings/UserSettings;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    sget-object v4, Lsk/mimac/slideshow/settings/UserSettings;->WEB_VIEW_DISABLE_SECURITY:Lsk/mimac/slideshow/settings/UserSettings;

    .line 178
    .line 179
    invoke-direct {p0, p1, v4}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeCheckboxSetting(Ljava/lang/StringBuilder;Lsk/mimac/slideshow/settings/UserSettings;)V

    .line 180
    .line 181
    .line 182
    sget-object v4, Lsk/mimac/slideshow/settings/UserSettings;->WEB_VIEW_ALLOW_LOCAL_API:Lsk/mimac/slideshow/settings/UserSettings;

    .line 183
    .line 184
    invoke-direct {p0, p1, v4}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeCheckboxSetting(Ljava/lang/StringBuilder;Lsk/mimac/slideshow/settings/UserSettings;)V

    .line 185
    .line 186
    .line 187
    sget-object v4, Lsk/mimac/slideshow/settings/UserSettings;->WEBVIEW_CLEAR_CACHE:Lsk/mimac/slideshow/settings/UserSettings;

    .line 188
    .line 189
    invoke-direct {p0, p1, v4}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeCheckboxSetting(Ljava/lang/StringBuilder;Lsk/mimac/slideshow/settings/UserSettings;)V

    .line 190
    .line 191
    .line 192
    sget-object v4, Lsk/mimac/slideshow/settings/UserSettings;->WEBVIEW_GRANT_PERMISSIONS:Lsk/mimac/slideshow/settings/UserSettings;

    .line 193
    .line 194
    invoke-direct {p0, p1, v4}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeCheckboxSetting(Ljava/lang/StringBuilder;Lsk/mimac/slideshow/settings/UserSettings;)V

    .line 195
    .line 196
    .line 197
    sget-object v4, Lsk/mimac/slideshow/settings/UserSettings;->MUTE_VIDEO_FOR_AUDIO_PLAYLIST:Lsk/mimac/slideshow/settings/UserSettings;

    .line 198
    .line 199
    invoke-direct {p0, p1, v4}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeCheckboxSetting(Ljava/lang/StringBuilder;Lsk/mimac/slideshow/settings/UserSettings;)V

    .line 200
    .line 201
    .line 202
    sget-object v4, Lsk/mimac/slideshow/settings/UserSettings;->YOUTUBE_SHOW_CONTROLS:Lsk/mimac/slideshow/settings/UserSettings;

    .line 203
    .line 204
    invoke-direct {p0, p1, v4}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeCheckboxSetting(Ljava/lang/StringBuilder;Lsk/mimac/slideshow/settings/UserSettings;)V

    .line 205
    .line 206
    .line 207
    sget-object v4, Lsk/mimac/slideshow/settings/UserSettings;->YOUTUBE_SHOW_CAPTIONS:Lsk/mimac/slideshow/settings/UserSettings;

    .line 208
    .line 209
    invoke-direct {p0, p1, v4}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeCheckboxSetting(Ljava/lang/StringBuilder;Lsk/mimac/slideshow/settings/UserSettings;)V

    .line 210
    .line 211
    .line 212
    sget-object v4, Lsk/mimac/slideshow/settings/UserSettings;->FORCE_AUDIO_PASSTHROUGH:Lsk/mimac/slideshow/settings/UserSettings;

    .line 213
    .line 214
    invoke-direct {p0, p1, v4}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeCheckboxSetting(Ljava/lang/StringBuilder;Lsk/mimac/slideshow/settings/UserSettings;)V

    .line 215
    .line 216
    .line 217
    const-string v4, "weather_forecast"

    .line 218
    .line 219
    invoke-static {v4}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v4

    .line 223
    invoke-direct {p0, p1, v4}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeHeading(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    sget-object v4, Lsk/mimac/slideshow/settings/UserSettings;->WEATHER_CLASS:Lsk/mimac/slideshow/settings/UserSettings;

    .line 227
    .line 228
    new-instance v5, Lk1/p;

    .line 229
    .line 230
    const/16 v6, 0x9

    .line 231
    .line 232
    invoke-direct {v5, v6}, Lk1/p;-><init>(I)V

    .line 233
    .line 234
    .line 235
    invoke-direct {p0, p1, v4, v5}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeEnumSetting(Ljava/lang/StringBuilder;Lsk/mimac/slideshow/settings/UserSettings;Lsk/mimac/slideshow/utils/Function;)V

    .line 236
    .line 237
    .line 238
    sget-object v4, Lsk/mimac/slideshow/settings/UserSettings;->WEATHER_API_KEY:Lsk/mimac/slideshow/settings/UserSettings;

    .line 239
    .line 240
    invoke-direct {p0, p1, v4, v3}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeInputSetting(Ljava/lang/StringBuilder;Lsk/mimac/slideshow/settings/UserSettings;Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    const-string v4, "rss_messages"

    .line 244
    .line 245
    invoke-static {v4}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v4

    .line 249
    invoke-direct {p0, p1, v4}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeHeading(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    sget-object v4, Lsk/mimac/slideshow/settings/UserSettings;->RSS_TITLE_MAX_LENGTH:Lsk/mimac/slideshow/settings/UserSettings;

    .line 253
    .line 254
    const-string v5, "number\' min=\'0"

    .line 255
    .line 256
    invoke-direct {p0, p1, v4, v5}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeInputSetting(Ljava/lang/StringBuilder;Lsk/mimac/slideshow/settings/UserSettings;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    sget-object v4, Lsk/mimac/slideshow/settings/UserSettings;->RSS_MESSAGE_MAX_LENGTH:Lsk/mimac/slideshow/settings/UserSettings;

    .line 260
    .line 261
    invoke-direct {p0, p1, v4, v5}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeInputSetting(Ljava/lang/StringBuilder;Lsk/mimac/slideshow/settings/UserSettings;Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    const-string v4, "external_storages"

    .line 265
    .line 266
    invoke-static {v4}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v4

    .line 270
    invoke-direct {p0, p1, v4}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeHeading(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    invoke-direct {p0, p1}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeExternalStorageTableLine(Ljava/lang/StringBuilder;)V

    .line 274
    .line 275
    .line 276
    sget-object v4, Lsk/mimac/slideshow/settings/UserSettings;->USB_MOUNT_ACTION:Lsk/mimac/slideshow/settings/UserSettings;

    .line 277
    .line 278
    new-instance v5, Lk1/p;

    .line 279
    .line 280
    const/16 v6, 0xa

    .line 281
    .line 282
    invoke-direct {v5, v6}, Lk1/p;-><init>(I)V

    .line 283
    .line 284
    .line 285
    invoke-direct {p0, p1, v4, v5}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeEnumSetting(Ljava/lang/StringBuilder;Lsk/mimac/slideshow/settings/UserSettings;Lsk/mimac/slideshow/utils/Function;)V

    .line 286
    .line 287
    .line 288
    sget-object v4, Lsk/mimac/slideshow/settings/UserSettings;->USB_COPY_FOLDER:Lsk/mimac/slideshow/settings/UserSettings;

    .line 289
    .line 290
    invoke-direct {p0, p1, v4, v3}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeInputSetting(Ljava/lang/StringBuilder;Lsk/mimac/slideshow/settings/UserSettings;Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    sget-object v4, Lsk/mimac/slideshow/settings/UserSettings;->USB_TARGET_FOLDER:Lsk/mimac/slideshow/settings/UserSettings;

    .line 294
    .line 295
    invoke-direct {p0, p1, v4, v3}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeInputSetting(Ljava/lang/StringBuilder;Lsk/mimac/slideshow/settings/UserSettings;Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    const-string v4, "network_interfaces"

    .line 299
    .line 300
    invoke-static {v4}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v4

    .line 304
    invoke-direct {p0, p1, v4}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeHeading(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    sget-object v4, Lsk/mimac/slideshow/settings/UserSettings;->HTTP_PORT:Lsk/mimac/slideshow/settings/UserSettings;

    .line 308
    .line 309
    const-string v5, "number\' min=\'1\' max=\'65535"

    .line 310
    .line 311
    invoke-direct {p0, p1, v4, v5}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeInputSetting(Ljava/lang/StringBuilder;Lsk/mimac/slideshow/settings/UserSettings;Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    sget-object v4, Lsk/mimac/slideshow/settings/UserSettings;->HTTPS_PORT:Lsk/mimac/slideshow/settings/UserSettings;

    .line 315
    .line 316
    invoke-direct {p0, p1, v4, v5}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeInputSetting(Ljava/lang/StringBuilder;Lsk/mimac/slideshow/settings/UserSettings;Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    sget-object v4, Lsk/mimac/slideshow/settings/UserSettings;->FTP_PORT:Lsk/mimac/slideshow/settings/UserSettings;

    .line 320
    .line 321
    invoke-direct {p0, p1, v4, v5}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeInputSetting(Ljava/lang/StringBuilder;Lsk/mimac/slideshow/settings/UserSettings;Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    sget-object v4, Lsk/mimac/slideshow/settings/UserSettings;->DISABLE_NON_SSL_INTERFACES:Lsk/mimac/slideshow/settings/UserSettings;

    .line 325
    .line 326
    invoke-direct {p0, p1, v4}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeCheckboxSetting(Ljava/lang/StringBuilder;Lsk/mimac/slideshow/settings/UserSettings;)V

    .line 327
    .line 328
    .line 329
    invoke-direct {p0, p1, v0}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeCheckboxSetting(Ljava/lang/StringBuilder;Lsk/mimac/slideshow/settings/UserSettings;)V

    .line 330
    .line 331
    .line 332
    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->HTTPS_DISABLE_SECURITY:Lsk/mimac/slideshow/settings/UserSettings;

    .line 333
    .line 334
    invoke-direct {p0, p1, v0}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeCheckboxSetting(Ljava/lang/StringBuilder;Lsk/mimac/slideshow/settings/UserSettings;)V

    .line 335
    .line 336
    .line 337
    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->COMMUNICATION_SERVER_CODE:Lsk/mimac/slideshow/settings/UserSettings;

    .line 338
    .line 339
    invoke-direct {p0, p1, v0, v3}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeInputSetting(Ljava/lang/StringBuilder;Lsk/mimac/slideshow/settings/UserSettings;Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->COMMUNICATION_TRACKER_ENABLED:Lsk/mimac/slideshow/settings/UserSettings;

    .line 343
    .line 344
    invoke-direct {p0, p1, v0}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeCheckboxSetting(Ljava/lang/StringBuilder;Lsk/mimac/slideshow/settings/UserSettings;)V

    .line 345
    .line 346
    .line 347
    const-string v0, "onscreen_control"

    .line 348
    .line 349
    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    invoke-direct {p0, p1, v0}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeHeading(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->DISABLE_KEYBOARD:Lsk/mimac/slideshow/settings/UserSettings;

    .line 357
    .line 358
    invoke-direct {p0, p1, v0}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeCheckboxSetting(Ljava/lang/StringBuilder;Lsk/mimac/slideshow/settings/UserSettings;)V

    .line 359
    .line 360
    .line 361
    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->ENABLE_TOUCH_GESTURES:Lsk/mimac/slideshow/settings/UserSettings;

    .line 362
    .line 363
    invoke-direct {p0, p1, v0}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeCheckboxSetting(Ljava/lang/StringBuilder;Lsk/mimac/slideshow/settings/UserSettings;)V

    .line 364
    .line 365
    .line 366
    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->PASSWORD_PROTECT_SCREEN:Lsk/mimac/slideshow/settings/UserSettings;

    .line 367
    .line 368
    invoke-direct {p0, p1, v0}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeCheckboxSetting(Ljava/lang/StringBuilder;Lsk/mimac/slideshow/settings/UserSettings;)V

    .line 369
    .line 370
    .line 371
    const-string v0, "startup"

    .line 372
    .line 373
    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    invoke-direct {p0, p1, v0}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeHeading(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    const-string v0, "start_at_boot"

    .line 381
    .line 382
    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v9

    .line 386
    const-string v0, "start_at_boot_help"

    .line 387
    .line 388
    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v10

    .line 392
    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->isStartAtBootAllowed()Z

    .line 393
    .line 394
    .line 395
    move-result v0

    .line 396
    const/4 v4, 0x1

    .line 397
    if-nez v0, :cond_0

    .line 398
    .line 399
    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->START_AT_BOOT:Lsk/mimac/slideshow/settings/UserSettings;

    .line 400
    .line 401
    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    .line 402
    .line 403
    .line 404
    move-result v0

    .line 405
    if-nez v0, :cond_0

    .line 406
    .line 407
    const/4 v11, 0x1

    .line 408
    goto :goto_0

    .line 409
    :cond_0
    const/4 v11, 0x0

    .line 410
    :goto_0
    const-string v8, "start_at_boot"

    .line 411
    .line 412
    move-object v6, p0

    .line 413
    move-object v7, p1

    .line 414
    invoke-virtual/range {v6 .. v11}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->writeCheckboxTableLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 415
    .line 416
    .line 417
    const-string v0, "lock_task_mode_after_start"

    .line 418
    .line 419
    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v9

    .line 423
    const-string v0, "lock_task_mode_after_start_help"

    .line 424
    .line 425
    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v10

    .line 429
    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->hasLockTaskPackages()Z

    .line 430
    .line 431
    .line 432
    move-result v0

    .line 433
    if-nez v0, :cond_1

    .line 434
    .line 435
    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->LOCK_TASK_MODE_AFTER_START:Lsk/mimac/slideshow/settings/UserSettings;

    .line 436
    .line 437
    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    .line 438
    .line 439
    .line 440
    move-result v0

    .line 441
    if-nez v0, :cond_1

    .line 442
    .line 443
    const/4 v11, 0x1

    .line 444
    goto :goto_1

    .line 445
    :cond_1
    const/4 v11, 0x0

    .line 446
    :goto_1
    const-string v8, "lock_task_mode_after_start"

    .line 447
    .line 448
    move-object v6, p0

    .line 449
    move-object v7, p1

    .line 450
    invoke-virtual/range {v6 .. v11}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->writeCheckboxTableLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 451
    .line 452
    .line 453
    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->AFTER_START_SCRIPT:Lsk/mimac/slideshow/settings/UserSettings;

    .line 454
    .line 455
    invoke-direct {p0, p1, v0, v3}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeInputSetting(Ljava/lang/StringBuilder;Lsk/mimac/slideshow/settings/UserSettings;Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->WATCHDOG_REBOOT_TIME:Lsk/mimac/slideshow/settings/UserSettings;

    .line 459
    .line 460
    invoke-direct {p0, p1, v0, v3}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeInputSetting(Ljava/lang/StringBuilder;Lsk/mimac/slideshow/settings/UserSettings;Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->REBOOT_ON_HDMI_PLUG_IN:Lsk/mimac/slideshow/settings/UserSettings;

    .line 464
    .line 465
    invoke-direct {p0, p1, v0}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeCheckboxSetting(Ljava/lang/StringBuilder;Lsk/mimac/slideshow/settings/UserSettings;)V

    .line 466
    .line 467
    .line 468
    const-string v0, "grabber"

    .line 469
    .line 470
    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v0

    .line 474
    invoke-direct {p0, p1, v0}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeHeading(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 475
    .line 476
    .line 477
    const-string v0, "grabber_interval"

    .line 478
    .line 479
    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object v10

    .line 483
    const-string v0, "grabber_interval_help"

    .line 484
    .line 485
    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v11

    .line 489
    const-string v8, "grabber_refresh_rate"

    .line 490
    .line 491
    const-string v9, "number\' min=\'60"

    .line 492
    .line 493
    invoke-virtual/range {v6 .. v11}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->writeFormTableLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    .line 495
    .line 496
    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->EXTERNAL_CONFIG_IMPORT:Lsk/mimac/slideshow/settings/UserSettings;

    .line 497
    .line 498
    invoke-direct {p0, p1, v0}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeCheckboxSetting(Ljava/lang/StringBuilder;Lsk/mimac/slideshow/settings/UserSettings;)V

    .line 499
    .line 500
    .line 501
    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->FILE_DATA_CHECKER_RATE:Lsk/mimac/slideshow/settings/UserSettings;

    .line 502
    .line 503
    const-string v1, "number\' min=\'30"

    .line 504
    .line 505
    invoke-direct {p0, p1, v0, v1}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeInputSetting(Ljava/lang/StringBuilder;Lsk/mimac/slideshow/settings/UserSettings;Ljava/lang/String;)V

    .line 506
    .line 507
    .line 508
    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->GOOGLE_DOCS_CONVERT_PARAMS:Lsk/mimac/slideshow/settings/UserSettings;

    .line 509
    .line 510
    invoke-direct {p0, p1, v0, v3}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeInputSetting(Ljava/lang/StringBuilder;Lsk/mimac/slideshow/settings/UserSettings;Ljava/lang/String;)V

    .line 511
    .line 512
    .line 513
    const-string v0, "MQTT"

    .line 514
    .line 515
    invoke-direct {p0, p1, v0}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeHeading(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 516
    .line 517
    .line 518
    const-string v0, "mqtt_server_address"

    .line 519
    .line 520
    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object v1

    .line 524
    invoke-virtual {p0, p1, v0, v3, v1}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->writeFormTableLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    .line 526
    .line 527
    const-string v0, "mqtt_username"

    .line 528
    .line 529
    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    move-result-object v1

    .line 533
    invoke-virtual {p0, p1, v0, v3, v1}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->writeFormTableLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    .line 535
    .line 536
    const-string v0, "mqtt_password"

    .line 537
    .line 538
    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 539
    .line 540
    .line 541
    move-result-object v1

    .line 542
    const-string v4, "password"

    .line 543
    .line 544
    invoke-virtual {p0, p1, v0, v4, v1}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->writeFormTableLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    .line 546
    .line 547
    const-string v0, "mqtt_require_tls"

    .line 548
    .line 549
    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 550
    .line 551
    .line 552
    move-result-object v1

    .line 553
    invoke-virtual {p0, p1, v0, v1}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->writeCheckboxTableLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    .line 555
    .line 556
    const-string v0, "mqtt_use_websockets"

    .line 557
    .line 558
    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 559
    .line 560
    .line 561
    move-result-object v1

    .line 562
    invoke-virtual {p0, p1, v0, v1}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->writeCheckboxTableLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    .line 564
    .line 565
    const-string v0, "mqtt_topic_prefix"

    .line 566
    .line 567
    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 568
    .line 569
    .line 570
    move-result-object v1

    .line 571
    invoke-virtual {p0, p1, v0, v3, v1}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->writeFormTableLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    .line 573
    .line 574
    const-string v0, "mqtt_device_token"

    .line 575
    .line 576
    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 577
    .line 578
    .line 579
    move-result-object v10

    .line 580
    const-string v0, "mqtt_device_token_help"

    .line 581
    .line 582
    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 583
    .line 584
    .line 585
    move-result-object v11

    .line 586
    const-string v8, "device_token"

    .line 587
    .line 588
    const-string v9, "text"

    .line 589
    .line 590
    invoke-virtual/range {v6 .. v11}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->writeFormTableLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    .line 592
    .line 593
    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->MQTT_REPORT_DATA:Lsk/mimac/slideshow/settings/UserSettings;

    .line 594
    .line 595
    invoke-direct {p0, p1, v0}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeCheckboxSetting(Ljava/lang/StringBuilder;Lsk/mimac/slideshow/settings/UserSettings;)V

    .line 596
    .line 597
    .line 598
    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->MQTT_REPORT_STATISTICS:Lsk/mimac/slideshow/settings/UserSettings;

    .line 599
    .line 600
    invoke-direct {p0, p1, v0}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeCheckboxSetting(Ljava/lang/StringBuilder;Lsk/mimac/slideshow/settings/UserSettings;)V

    .line 601
    .line 602
    .line 603
    const-string v0, "serial_port"

    .line 604
    .line 605
    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 606
    .line 607
    .line 608
    move-result-object v0

    .line 609
    invoke-direct {p0, p1, v0}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeHeading(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 610
    .line 611
    .line 612
    const-string v0, "serial_port_path"

    .line 613
    .line 614
    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 615
    .line 616
    .line 617
    move-result-object v10

    .line 618
    const-string v0, "serial_port_path_help"

    .line 619
    .line 620
    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 621
    .line 622
    .line 623
    move-result-object v11

    .line 624
    const-string v8, "serial_mqtt_port_path"

    .line 625
    .line 626
    const-string v9, "text"

    .line 627
    .line 628
    invoke-virtual/range {v6 .. v11}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->writeFormTableLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    .line 630
    .line 631
    const-string v0, "serial_port_rate"

    .line 632
    .line 633
    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 634
    .line 635
    .line 636
    move-result-object v10

    .line 637
    const-string v0, "serial_port_rate_help"

    .line 638
    .line 639
    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 640
    .line 641
    .line 642
    move-result-object v11

    .line 643
    const-string v8, "serial_mqtt_port_rate"

    .line 644
    .line 645
    const-string v9, "number\' min=\'0\' max=\'4000000"

    .line 646
    .line 647
    invoke-virtual/range {v6 .. v11}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->writeFormTableLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    .line 649
    .line 650
    const-string v0, "serial_port_data_bits"

    .line 651
    .line 652
    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 653
    .line 654
    .line 655
    move-result-object v0

    .line 656
    const-string v1, "serial_mqtt_port_data_bits"

    .line 657
    .line 658
    const-string v6, "number\' min=\'0\' max=\'20"

    .line 659
    .line 660
    invoke-virtual {p0, p1, v1, v6, v0}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->writeFormTableLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    .line 662
    .line 663
    const-string v0, "serial_port_stop_bits"

    .line 664
    .line 665
    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 666
    .line 667
    .line 668
    move-result-object v0

    .line 669
    const-string v1, "serial_mqtt_port_stop_bits"

    .line 670
    .line 671
    invoke-virtual {p0, p1, v1, v6, v0}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->writeFormTableLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    .line 673
    .line 674
    const-string v0, "serial_port_parity"

    .line 675
    .line 676
    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 677
    .line 678
    .line 679
    move-result-object v0

    .line 680
    const-string v1, "serial_mqtt_port_parity"

    .line 681
    .line 682
    invoke-virtual {p0, p1, v1, v6, v0}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->writeFormTableLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    .line 684
    .line 685
    const-string v0, "face_detection"

    .line 686
    .line 687
    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 688
    .line 689
    .line 690
    move-result-object v0

    .line 691
    invoke-direct {p0, p1, v0}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeHeading(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 692
    .line 693
    .line 694
    invoke-direct {p0, p1}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeFaceDetectionCameraId(Ljava/lang/StringBuilder;)V

    .line 695
    .line 696
    .line 697
    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->FACE_DETECTION_ROTATION:Lsk/mimac/slideshow/settings/UserSettings;

    .line 698
    .line 699
    const-string v1, "number\' min=\'0\' max=\'270\' step=\'90"

    .line 700
    .line 701
    invoke-direct {p0, p1, v0, v1}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeInputSetting(Ljava/lang/StringBuilder;Lsk/mimac/slideshow/settings/UserSettings;Ljava/lang/String;)V

    .line 702
    .line 703
    .line 704
    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->FACE_DETECTION_DELAY:Lsk/mimac/slideshow/settings/UserSettings;

    .line 705
    .line 706
    const-string v1, "number\' min=\'100\' max=\'30000"

    .line 707
    .line 708
    invoke-direct {p0, p1, v0, v1}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeInputSetting(Ljava/lang/StringBuilder;Lsk/mimac/slideshow/settings/UserSettings;Ljava/lang/String;)V

    .line 709
    .line 710
    .line 711
    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->FACE_DETECTION_PREFERRED_IMAGE_WIDTH:Lsk/mimac/slideshow/settings/UserSettings;

    .line 712
    .line 713
    const-string v1, "number\' min=\'1\' max=\'10000"

    .line 714
    .line 715
    invoke-direct {p0, p1, v0, v1}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeInputSetting(Ljava/lang/StringBuilder;Lsk/mimac/slideshow/settings/UserSettings;Ljava/lang/String;)V

    .line 716
    .line 717
    .line 718
    invoke-direct {p0, p1}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeFaceDetectionControlAwbMode(Ljava/lang/StringBuilder;)V

    .line 719
    .line 720
    .line 721
    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->FACE_DETECTION_EXPOSURE_COMPENSATION:Lsk/mimac/slideshow/settings/UserSettings;

    .line 722
    .line 723
    const-string v1, "number\' min=\'-3\' max=\'3"

    .line 724
    .line 725
    invoke-direct {p0, p1, v0, v1}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeInputSetting(Ljava/lang/StringBuilder;Lsk/mimac/slideshow/settings/UserSettings;Ljava/lang/String;)V

    .line 726
    .line 727
    .line 728
    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->FACE_DETECTION_DETECT_EYES:Lsk/mimac/slideshow/settings/UserSettings;

    .line 729
    .line 730
    invoke-direct {p0, p1, v0}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeCheckboxSetting(Ljava/lang/StringBuilder;Lsk/mimac/slideshow/settings/UserSettings;)V

    .line 731
    .line 732
    .line 733
    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->FACE_DETECTION_MIN_FACE_SIZE:Lsk/mimac/slideshow/settings/UserSettings;

    .line 734
    .line 735
    invoke-direct {p0, p1, v0, v2}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeInputSetting(Ljava/lang/StringBuilder;Lsk/mimac/slideshow/settings/UserSettings;Ljava/lang/String;)V

    .line 736
    .line 737
    .line 738
    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->FACE_DETECTION_MIN_EYES_OPENED:Lsk/mimac/slideshow/settings/UserSettings;

    .line 739
    .line 740
    const-string v1, "number\' min=\'0\' max=\'2\' step=\'0.01"

    .line 741
    .line 742
    invoke-direct {p0, p1, v0, v1}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeInputSetting(Ljava/lang/StringBuilder;Lsk/mimac/slideshow/settings/UserSettings;Ljava/lang/String;)V

    .line 743
    .line 744
    .line 745
    const-string v0, "Open Sound Control (OSC)"

    .line 746
    .line 747
    invoke-direct {p0, p1, v0}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeHeading(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 748
    .line 749
    .line 750
    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->OSC_ENABLED:Lsk/mimac/slideshow/settings/UserSettings;

    .line 751
    .line 752
    invoke-direct {p0, p1, v0}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeCheckboxSetting(Ljava/lang/StringBuilder;Lsk/mimac/slideshow/settings/UserSettings;)V

    .line 753
    .line 754
    .line 755
    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->OSC_PROTOCOL:Lsk/mimac/slideshow/settings/UserSettings;

    .line 756
    .line 757
    new-instance v1, Lk1/p;

    .line 758
    .line 759
    const/16 v2, 0xb

    .line 760
    .line 761
    invoke-direct {v1, v2}, Lk1/p;-><init>(I)V

    .line 762
    .line 763
    .line 764
    invoke-direct {p0, p1, v0, v1}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeEnumSetting(Ljava/lang/StringBuilder;Lsk/mimac/slideshow/settings/UserSettings;Lsk/mimac/slideshow/utils/Function;)V

    .line 765
    .line 766
    .line 767
    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->OSC_PORT:Lsk/mimac/slideshow/settings/UserSettings;

    .line 768
    .line 769
    invoke-direct {p0, p1, v0, v5}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeInputSetting(Ljava/lang/StringBuilder;Lsk/mimac/slideshow/settings/UserSettings;Ljava/lang/String;)V

    .line 770
    .line 771
    .line 772
    const-string v0, "Network watchdog (ping)"

    .line 773
    .line 774
    invoke-direct {p0, p1, v0}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeHeading(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 775
    .line 776
    .line 777
    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->WATCHDOG_PING_ADDRESS:Lsk/mimac/slideshow/settings/UserSettings;

    .line 778
    .line 779
    invoke-direct {p0, p1, v0, v3}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeInputSetting(Ljava/lang/StringBuilder;Lsk/mimac/slideshow/settings/UserSettings;Ljava/lang/String;)V

    .line 780
    .line 781
    .line 782
    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->WATCHDOG_PING_DEFAULT_GATEWAY:Lsk/mimac/slideshow/settings/UserSettings;

    .line 783
    .line 784
    invoke-direct {p0, p1, v0}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeCheckboxSetting(Ljava/lang/StringBuilder;Lsk/mimac/slideshow/settings/UserSettings;)V

    .line 785
    .line 786
    .line 787
    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->WATCHDOG_PING_DELAY:Lsk/mimac/slideshow/settings/UserSettings;

    .line 788
    .line 789
    const-string v1, "number\' min=\'20"

    .line 790
    .line 791
    invoke-direct {p0, p1, v0, v1}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeInputSetting(Ljava/lang/StringBuilder;Lsk/mimac/slideshow/settings/UserSettings;Ljava/lang/String;)V

    .line 792
    .line 793
    .line 794
    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->WATCHDOG_PING_TIMES:Lsk/mimac/slideshow/settings/UserSettings;

    .line 795
    .line 796
    const-string v1, "number\' min=\'2"

    .line 797
    .line 798
    invoke-direct {p0, p1, v0, v1}, Lsk/mimac/slideshow/http/page/SettingsFormPage;->writeInputSetting(Ljava/lang/StringBuilder;Lsk/mimac/slideshow/settings/UserSettings;Ljava/lang/String;)V

    .line 799
    .line 800
    .line 801
    const-string v0, "</table><input type=\'submit\' class=\'button\' value=\'"

    .line 802
    .line 803
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    .line 805
    .line 806
    const-string v1, "save"

    .line 807
    .line 808
    invoke-static {v1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 809
    .line 810
    .line 811
    move-result-object v2

    .line 812
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 813
    .line 814
    .line 815
    const-string v2, "\'></form><br><br>"

    .line 816
    .line 817
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "<h3>"

    .line 821
    .line 822
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    .line 824
    .line 825
    const-string v5, "certificate_title"

    .line 826
    .line 827
    invoke-static {v5}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 828
    .line 829
    .line 830
    move-result-object v5

    .line 831
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    .line 833
    .line 834
    const-string v5, "</h3><form method=\'post\' action=\'/certificate\' enctype=\'multipart/form-data\'>"

    .line 835
    .line 836
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    .line 838
    .line 839
    const-string v5, "certificate_info"

    .line 840
    .line 841
    invoke-static {v5}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 842
    .line 843
    .line 844
    move-result-object v5

    .line 845
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 846
    .line 847
    .line 848
    const-string v5, "<br><br><table>"

    .line 849
    .line 850
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 851
    .line 852
    .line 853
    const-string v5, "certificate_file"

    .line 854
    .line 855
    invoke-static {v5}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 856
    .line 857
    .line 858
    move-result-object v5

    .line 859
    const-string v6, "cert"

    .line 860
    .line 861
    const-string v7, "file\' accept=\'.pfx,.p12"

    .line 862
    .line 863
    invoke-virtual {p0, p1, v6, v7, v5}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->writeFormTableLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    .line 865
    .line 866
    const-string v5, "certificate_password"

    .line 867
    .line 868
    invoke-static {v5}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 869
    .line 870
    .line 871
    move-result-object v5

    .line 872
    invoke-virtual {p0, p1, v4, v3, v5}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->writeFormTableLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    .line 874
    .line 875
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 876
    .line 877
    .line 878
    invoke-static {v1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 879
    .line 880
    .line 881
    move-result-object v0

    .line 882
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 883
    .line 884
    .line 885
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 886
    .line 887
    .line 888
    const-string v0, "<br><span class=\'button\' onclick=\'loadDialog(\"/ajax/wallpaper\", \""

    .line 889
    .line 890
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 891
    .line 892
    .line 893
    const-string v0, "set_wallpaper"

    .line 894
    .line 895
    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 896
    .line 897
    .line 898
    move-result-object v1

    .line 899
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 900
    .line 901
    .line 902
    const-string v1, "\");\'>"

    .line 903
    .line 904
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 905
    .line 906
    .line 907
    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 908
    .line 909
    .line 910
    move-result-object v0

    .line 911
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 912
    .line 913
    .line 914
    const-string v0, "</span><span class=\'tooltip\'><span class=\'link\'>?</span><span class=\'tooltip-content\'>"

    .line 915
    .line 916
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 917
    .line 918
    .line 919
    const-string v2, "set_wallpaper_help"

    .line 920
    .line 921
    invoke-static {v2}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 922
    .line 923
    .line 924
    move-result-object v2

    .line 925
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 926
    .line 927
    .line 928
    const-string v2, "</span></span>"

    .line 929
    .line 930
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 931
    .line 932
    .line 933
    invoke-static {}, Lsk/mimac/slideshow/utils/Shell;->isRootEnabled()Z

    .line 934
    .line 935
    .line 936
    move-result v2

    .line 937
    if-eqz v2, :cond_2

    .line 938
    .line 939
    const-string v2, "<span class=\'button\' onclick=\'loadDialog(\"/ajax/bootanimation\", \""

    .line 940
    .line 941
    const-string v3, "set_bootanimation"

    .line 942
    .line 943
    const-string v4, "set_bootanimation"

    .line 944
    .line 945
    invoke-static {p1, v2, v3, v1, v4}, Ls/a;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    .line 947
    .line 948
    const-string v1, "set_bootanimation_help"

    .line 949
    .line 950
    const-string v2, "</span></span>"

    .line 951
    .line 952
    invoke-static {p1, v0, v1, v2}, Ls/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    .line 954
    .line 955
    :cond_2
    sget-object v1, Lsk/mimac/slideshow/BuildInfo;->PROVISIONING_SERVER_URL:Ljava/lang/String;

    .line 956
    .line 957
    if-eqz v1, :cond_3

    .line 958
    .line 959
    const-string v1, "<span class=\'button\' onclick=\'provisioning();\'>"

    .line 960
    .line 961
    const-string v2, "Repeat provisioning"

    .line 962
    .line 963
    const-string v3, "Download provisioning ZIP file again</span></span>"

    .line 964
    .line 965
    invoke-static {p1, v1, v2, v0, v3}, LA/g;->A(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    .line 967
    .line 968
    :cond_3
    return-void
.end method
