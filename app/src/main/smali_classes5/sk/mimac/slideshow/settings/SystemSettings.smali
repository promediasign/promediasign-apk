.class public abstract Lsk/mimac/slideshow/settings/SystemSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final helper:Lsk/mimac/slideshow/settings/SettingsHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lsk/mimac/slideshow/settings/SettingsHelper;->getInstance()Lsk/mimac/slideshow/settings/SettingsHelper;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/settings/SystemSettings;->helper:Lsk/mimac/slideshow/settings/SettingsHelper;

    return-void
.end method

.method public static getBuildNumber()Ljava/lang/String;
    .locals 3

    sget-object v0, Lsk/mimac/slideshow/settings/SystemSettings;->helper:Lsk/mimac/slideshow/settings/SettingsHelper;

    const-string v1, "build_number"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lsk/mimac/slideshow/settings/SettingsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHttpsCertPassword()Ljava/lang/String;
    .locals 3

    sget-object v0, Lsk/mimac/slideshow/settings/SystemSettings;->helper:Lsk/mimac/slideshow/settings/SettingsHelper;

    const-string v1, "https_cert_password"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lsk/mimac/slideshow/settings/SettingsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getImportedConfigHash()Ljava/lang/String;
    .locals 3

    sget-object v0, Lsk/mimac/slideshow/settings/SystemSettings;->helper:Lsk/mimac/slideshow/settings/SettingsHelper;

    const-string v1, "imported_config_hash"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lsk/mimac/slideshow/settings/SettingsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInternalPassword()Ljava/lang/String;
    .locals 3

    sget-object v0, Lsk/mimac/slideshow/settings/SystemSettings;->helper:Lsk/mimac/slideshow/settings/SettingsHelper;

    const-string v1, "internal_password"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lsk/mimac/slideshow/settings/SettingsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLicenseKey()Ljava/lang/String;
    .locals 3

    sget-object v0, Lsk/mimac/slideshow/settings/SystemSettings;->helper:Lsk/mimac/slideshow/settings/SettingsHelper;

    const-string v1, "license_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lsk/mimac/slideshow/settings/SettingsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPrivateKey()Ljava/lang/String;
    .locals 3

    sget-object v0, Lsk/mimac/slideshow/settings/SystemSettings;->helper:Lsk/mimac/slideshow/settings/SettingsHelper;

    const-string v1, "private_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lsk/mimac/slideshow/settings/SettingsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setBuildNumber(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lsk/mimac/slideshow/settings/SystemSettings;->helper:Lsk/mimac/slideshow/settings/SettingsHelper;

    const-string v1, "build_number"

    invoke-virtual {v0, v1, p0}, Lsk/mimac/slideshow/settings/SettingsHelper;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/SettingsHelper;->save()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t save settings"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public static setHttpsCertPassword(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lsk/mimac/slideshow/settings/SystemSettings;->helper:Lsk/mimac/slideshow/settings/SettingsHelper;

    const-string v1, "https_cert_password"

    invoke-virtual {v0, v1, p0}, Lsk/mimac/slideshow/settings/SettingsHelper;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :try_start_0
    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/SettingsHelper;->save()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t save settings"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static setImportedConfigHash(Ljava/lang/String;)V
    .locals 2

    const-string v0, "imported_config_hash"

    sget-object v1, Lsk/mimac/slideshow/settings/SystemSettings;->helper:Lsk/mimac/slideshow/settings/SettingsHelper;

    if-nez p0, :cond_0

    invoke-virtual {v1, v0}, Lsk/mimac/slideshow/settings/SettingsHelper;->removeProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0, p0}, Lsk/mimac/slideshow/settings/SettingsHelper;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0, p0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    :try_start_0
    sget-object p0, Lsk/mimac/slideshow/settings/SystemSettings;->helper:Lsk/mimac/slideshow/settings/SettingsHelper;

    invoke-virtual {p0}, Lsk/mimac/slideshow/settings/SettingsHelper;->save()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t save settings"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    :goto_1
    return-void
.end method

.method public static setInternalPassword(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lsk/mimac/slideshow/settings/SystemSettings;->helper:Lsk/mimac/slideshow/settings/SettingsHelper;

    const-string v1, "internal_password"

    invoke-virtual {v0, v1, p0}, Lsk/mimac/slideshow/settings/SettingsHelper;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :try_start_0
    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/SettingsHelper;->save()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t save settings"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static setLicenseKey(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lsk/mimac/slideshow/settings/SystemSettings;->helper:Lsk/mimac/slideshow/settings/SettingsHelper;

    const-string v1, "license_key"

    invoke-virtual {v0, v1, p0}, Lsk/mimac/slideshow/settings/SettingsHelper;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :try_start_0
    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/SettingsHelper;->save()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t save settings"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static setPrivateKey(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lsk/mimac/slideshow/settings/SystemSettings;->helper:Lsk/mimac/slideshow/settings/SettingsHelper;

    const-string v1, "private_key"

    invoke-virtual {v0, v1, p0}, Lsk/mimac/slideshow/settings/SettingsHelper;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :try_start_0
    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/SettingsHelper;->save()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t save settings"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
