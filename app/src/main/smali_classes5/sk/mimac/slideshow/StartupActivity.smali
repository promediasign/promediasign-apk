.class public Lsk/mimac/slideshow/StartupActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback;


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# instance fields
.field private shouldContinueStartup:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/StartupActivity;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/StartupActivity;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lsk/mimac/slideshow/StartupActivity;->lambda$showStoragePermissionsDialog$2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic b(Lsk/mimac/slideshow/StartupActivity;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lsk/mimac/slideshow/StartupActivity;->lambda$run$1(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic c(Lsk/mimac/slideshow/StartupActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsk/mimac/slideshow/StartupActivity;->showAndroid11StoragePermissions()V

    return-void
.end method

.method private clearTempFiles()V
    .locals 6

    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "java.io.tmpdir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NanoHTTPD-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :goto_2
    sget-object v1, Lsk/mimac/slideshow/StartupActivity;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Can\'t clear NanoHTTPD temp files"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method private continueStartup()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "StartupThread"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static synthetic d(Lsk/mimac/slideshow/StartupActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsk/mimac/slideshow/StartupActivity;->showStoragePermissions()V

    return-void
.end method

.method public static synthetic e(Ljava/lang/Runnable;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lsk/mimac/slideshow/StartupActivity;->lambda$showStoragePermissionsDialog$3(Ljava/lang/Runnable;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic f(Lsk/mimac/slideshow/StartupActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsk/mimac/slideshow/StartupActivity;->startDisplayActivity()V

    return-void
.end method

.method public static synthetic g(Lsk/mimac/slideshow/StartupActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsk/mimac/slideshow/StartupActivity;->lambda$run$0()V

    return-void
.end method

.method private synthetic lambda$run$0()V
    .locals 3

    sget v0, Lsk/mimac/slideshow/R$id;->loadingText:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loading"

    invoke-static {v2}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$run$1(Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Can\'t initialize app: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private static synthetic lambda$showStoragePermissionsDialog$2(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$showStoragePermissionsDialog$3(Ljava/lang/Runnable;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private migrateSettings()V
    .locals 2

    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->VIDEO_PLAYER_TYPE:Lsk/mimac/slideshow/settings/UserSettings;

    const-class v1, Lsk/mimac/slideshow/enums/VideoPlayerType;

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/settings/UserSettings;->getEnum(Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v1, Lsk/mimac/slideshow/settings/UserSettings;->ENHANCED_VIDEO_PLAYER:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v1}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lsk/mimac/slideshow/enums/VideoPlayerType;->EXOPLAYER_TEXTURE_VIEW:Lsk/mimac/slideshow/enums/VideoPlayerType;

    goto :goto_0

    :cond_0
    sget-object v1, Lsk/mimac/slideshow/enums/VideoPlayerType;->DEFAULT_ANDROID:Lsk/mimac/slideshow/enums/VideoPlayerType;

    :goto_0
    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/settings/UserSettings;->setValue(Ljava/lang/Object;)V

    invoke-static {}, Lsk/mimac/slideshow/settings/UserSettings;->save()V

    :cond_1
    return-void
.end method

.method private setLocalization()V
    .locals 3

    :try_start_0
    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->LANGUAGE:Lsk/mimac/slideshow/settings/UserSettings;

    const-class v1, Lsk/mimac/slideshow/localization/Language;

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/settings/UserSettings;->getEnum(Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lsk/mimac/slideshow/localization/Language;

    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->setLanguage(Lsk/mimac/slideshow/localization/Language;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lsk/mimac/slideshow/StartupActivity;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Can\'t set localization"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private setTemporaryLanguage()V
    .locals 3

    :try_start_0
    invoke-static {}, Lsk/mimac/slideshow/localization/Language;->resolveDefaultLanguage()Lsk/mimac/slideshow/localization/Language;

    move-result-object v0

    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->setLanguage(Lsk/mimac/slideshow/localization/Language;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lsk/mimac/slideshow/StartupActivity;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Can\'t set language"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private setWallpaper()V
    .locals 0

    return-void
.end method

.method private setupAutomaticProvisioning()V
    .locals 3

    new-instance v0, Lsk/mimac/slideshow/database/entity/GrabberData;

    invoke-direct {v0}, Lsk/mimac/slideshow/database/entity/GrabberData;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/database/entity/GrabberData;->setClearFolder(Z)V

    const-string v1, "provisioning.zip"

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/database/entity/GrabberData;->setFileName(Ljava/lang/String;)V

    invoke-static {}, Lsk/mimac/slideshow/downloader/FileGrabber;->getProvisioningUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/database/entity/GrabberData;->setUrl(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lsk/mimac/slideshow/database/dao/GrabberDao;->getInstance()Lsk/mimac/slideshow/database/dao/GrabberDao;

    move-result-object v1

    invoke-virtual {v1, v0}, Lsk/mimac/slideshow/database/dao/GrabberDao;->create(Lsk/mimac/slideshow/database/entity/GrabberData;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lsk/mimac/slideshow/StartupActivity;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Can\'t create automatic provisioning entry"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private showAndroid11StoragePermissions()V
    .locals 4

    const/16 v0, 0x15

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "package:sk.mimac.slideshow"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lsk/mimac/slideshow/StartupActivity;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Can\'t open settings for allowing storage permissions"

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :try_start_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.settings.MANAGE_ALL_FILES_ACCESS_PERMISSION"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lsk/mimac/slideshow/StartupActivity;->shouldContinueStartup:Z

    sget-object v1, Lsk/mimac/slideshow/StartupActivity;->LOG:Lorg/slf4j/Logger;

    invoke-interface {v1, v3, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "storage_permissions"

    invoke-static {v1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "storage_permissions_cant_open"

    invoke-static {v1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :goto_0
    return-void
.end method

.method private showStoragePermissions()V
    .locals 2

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x14

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method private showStoragePermissionsDialog(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 3

    invoke-direct {p0}, Lsk/mimac/slideshow/StartupActivity;->setTemporaryLanguage()V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "storage_permissions"

    invoke-static {v1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "storage_permissions_required"

    invoke-static {v2}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance p1, Le1/h;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Le1/h;-><init>(I)V

    const-string v1, "OK"

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance p1, Le1/j;

    invoke-direct {p1, p2}, Le1/j;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private startDisplayActivity()V
    .locals 2

    sget-object v0, Lsk/mimac/slideshow/BuildInfo;->BUILD:Ljava/lang/String;

    invoke-static {v0}, Lsk/mimac/slideshow/settings/SystemSettings;->setBuildNumber(Ljava/lang/String;)V

    invoke-static {p0}, Lsk/mimac/slideshow/MainService;->start(Landroid/content/Context;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lsk/mimac/slideshow/display/SlideshowActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private verifyStoragePermissions()Z
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1

    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "package:sk.mimac.slideshow"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/16 v1, 0x15

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.MANAGE_ALL_FILES_ACCESS_PERMISSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x15

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_0
    :goto_0
    return v2

    :cond_1
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x14

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_2
    return v2
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 p2, 0x5

    if-ne p1, p2, :cond_1

    sget-object p1, Lsk/mimac/slideshow/FileConstants;->MAIN_PATH:Ljava/lang/String;

    const-string p2, "StartupThread"

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/Thread;

    new-instance p3, Le1/i;

    const/4 v0, 0x1

    invoke-direct {p3, p0, v0}, Le1/i;-><init>(Lsk/mimac/slideshow/StartupActivity;I)V

    invoke-direct {p1, p3, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_1

    :cond_0
    sget-object p1, Lsk/mimac/slideshow/StartupActivity;->LOG:Lorg/slf4j/Logger;

    const-string p3, "onActivityResult() called without MAIN_PATH set"

    invoke-interface {p1, p3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x6

    const/4 p3, 0x1

    if-ne p1, p2, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :try_start_0
    invoke-virtual {p0, p3}, Landroid/app/Activity;->moveTaskToBack(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    sget-object p2, Lsk/mimac/slideshow/StartupActivity;->LOG:Lorg/slf4j/Logger;

    const-string p3, "Can\'t move StartupActivity to back"

    invoke-interface {p2, p3, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    const/16 p2, 0x15

    if-ne p1, p2, :cond_4

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1e

    if-lt p1, p2, :cond_4

    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lsk/mimac/slideshow/StartupActivity;->continueStartup()V

    goto :goto_1

    :cond_3
    const-string p1, "storage_permissions_required"

    invoke-static {p1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_4
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "slideshow"

    const-string v0, "Starting StartupActivity"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x580

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    sget p1, Lsk/mimac/slideshow/R$layout;->startup:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    sput-object p0, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    sget p1, Lsk/mimac/slideshow/R$id;->versionText:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Version: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lsk/mimac/slideshow/BuildInfo;->VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lsk/mimac/slideshow/StartupActivity;->verifyStoragePermissions()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lsk/mimac/slideshow/StartupActivity;->continueStartup()V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    const/16 p2, 0x14

    if-ne p1, p2, :cond_1

    array-length p1, p3

    if-lez p1, :cond_0

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lsk/mimac/slideshow/StartupActivity;->continueStartup()V

    goto :goto_0

    :cond_0
    const-string p1, "storage_permissions_required"

    invoke-static {p1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iget-boolean v0, p0, Lsk/mimac/slideshow/StartupActivity;->shouldContinueStartup:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsk/mimac/slideshow/StartupActivity;->shouldContinueStartup:Z

    invoke-direct {p0}, Lsk/mimac/slideshow/StartupActivity;->verifyStoragePermissions()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lsk/mimac/slideshow/StartupActivity;->continueStartup()V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 4

    const-string v0, "slideshow"

    const-string v1, "Starting startup thread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x32

    if-ge v0, v2, :cond_1

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mounted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    :cond_0
    :goto_1
    const-wide/16 v2, 0x258

    invoke-static {v2, v3}, Lsk/mimac/slideshow/utils/SleepUtils;->sleep(J)V

    move v0, v1

    goto :goto_0

    :cond_1
    sget-object v0, Lsk/mimac/slideshow/StartupActivity;->LOG:Lorg/slf4j/Logger;

    const-string v1, "******* Starting Slideshow (version {}, PID {}) *******"

    sget-object v2, Lsk/mimac/slideshow/BuildInfo;->VERSION:Ljava/lang/String;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lsk/mimac/slideshow/InitializerImpl;->setFilePaths()V

    invoke-direct {p0}, Lsk/mimac/slideshow/StartupActivity;->setLocalization()V

    new-instance v1, Le1/i;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Le1/i;-><init>(Lsk/mimac/slideshow/StartupActivity;I)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-static {}, Lsk/mimac/slideshow/InitializerImpl;->setExceptionHandler()V

    new-instance v1, Lorg/conscrypt/OpenSSLProvider;

    invoke-direct {v1}, Lorg/conscrypt/OpenSSLProvider;-><init>()V

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/security/Security;->insertProviderAt(Ljava/security/Provider;I)I

    invoke-static {}, Lsk/mimac/slideshow/BuildInfo;->setupUserAgent()V

    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactoryImpl;->init()V

    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getInitializer()Lsk/mimac/slideshow/Initializer;

    move-result-object v1

    invoke-virtual {v1}, Lsk/mimac/slideshow/Initializer;->initCommons()V

    invoke-static {p0}, Lsk/mimac/slideshow/hardware/HardwareFacadeInitializer;->initInstance(Landroid/content/Context;)V

    invoke-static {}, Lsk/mimac/slideshow/InitializerImpl;->checkUpdate()V

    invoke-static {}, Lsk/mimac/slideshow/userinput/KeyboardListener;->init()V

    invoke-static {}, Lsk/mimac/slideshow/VolumeManager;->init()V

    invoke-static {}, Lsk/mimac/slideshow/gui/ClearingWebView;->requestClearCache()V

    invoke-direct {p0}, Lsk/mimac/slideshow/StartupActivity;->clearTempFiles()V

    new-instance v1, Lcom/goterl/lazysodium/LazySodiumAndroid;

    new-instance v3, Lcom/goterl/lazysodium/SodiumAndroid;

    invoke-direct {v3}, Lcom/goterl/lazysodium/SodiumAndroid;-><init>()V

    invoke-direct {v1, v3}, Lcom/goterl/lazysodium/LazySodiumAndroid;-><init>(Lcom/goterl/lazysodium/SodiumAndroid;)V

    sput-object v1, Lsk/mimac/slideshow/communication/IPv8;->LAZY_SODIUM_INSTANCE:Lcom/goterl/lazysodium/LazySodium;

    new-instance v1, Ljava/io/File;

    const-string v3, "/system/app/SystemUI.apk"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lsk/mimac/slideshow/InitializerImpl;->hideBottomMenu()V

    :cond_2
    invoke-static {}, Lsk/mimac/slideshow/settings/SystemSettings;->getBuildNumber()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    const-string v1, "First start"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->DEVICE_NAME:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-static {}, Lsk/mimac/slideshow/utils/LicenseKeyUtils;->getProcessedDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/settings/UserSettings;->setValue(Ljava/lang/Object;)V

    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->DEVICE_TOKEN:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/settings/UserSettings;->setValue(Ljava/lang/Object;)V

    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->VIDEO_PLAYER_TYPE:Lsk/mimac/slideshow/settings/UserSettings;

    sget-object v1, Lsk/mimac/slideshow/enums/VideoPlayerType;->EXOPLAYER_TEXTURE_VIEW:Lsk/mimac/slideshow/enums/VideoPlayerType;

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/settings/UserSettings;->setValue(Ljava/lang/Object;)V

    invoke-static {}, Lsk/mimac/slideshow/settings/UserSettings;->save()V

    sget-object v0, Lsk/mimac/slideshow/BuildInfo;->PROVISIONING_SERVER_URL:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lsk/mimac/slideshow/StartupActivity;->setupAutomaticProvisioning()V

    :cond_3
    invoke-direct {p0}, Lsk/mimac/slideshow/StartupActivity;->setWallpaper()V

    invoke-static {v2}, Lsk/mimac/slideshow/settings/SettingsActivity;->setFirstStart(Z)V

    invoke-direct {p0}, Lsk/mimac/slideshow/StartupActivity;->startDisplayActivity()V

    goto :goto_3

    :cond_4
    invoke-direct {p0}, Lsk/mimac/slideshow/StartupActivity;->migrateSettings()V

    invoke-direct {p0}, Lsk/mimac/slideshow/StartupActivity;->startDisplayActivity()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    sget-object v1, Lsk/mimac/slideshow/StartupActivity;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Can\'t initialize"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, LG/c;

    const/16 v2, 0xc

    invoke-direct {v1, p0, v0, v2}, LG/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_3
    return-void
.end method
