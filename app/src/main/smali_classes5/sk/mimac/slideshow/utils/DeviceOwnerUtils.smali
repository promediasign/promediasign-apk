.class public abstract Lsk/mimac/slideshow/utils/DeviceOwnerUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ALLOWED_PACKAGES:[Ljava/lang/String;

.field private static final LOG:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/utils/DeviceOwnerUtils;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/utils/DeviceOwnerUtils;->LOG:Lorg/slf4j/Logger;

    const-string v0, "sk.mimac.slideshow"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/utils/DeviceOwnerUtils;->ALLOWED_PACKAGES:[Ljava/lang/String;

    return-void
.end method

.method public static clearDeviceAdminApp()V
    .locals 4

    sget-object v0, Lsk/mimac/slideshow/utils/DeviceOwnerUtils;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Clearing device admin app"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    sget-object v0, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    new-instance v1, Landroid/content/ComponentName;

    sget-object v2, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    const-class v3, Lsk/mimac/slideshow/AppAdminReceiver;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;)V

    return-void
.end method

.method public static clearDeviceOwnerApp()V
    .locals 2

    sget-object v0, Lsk/mimac/slideshow/utils/DeviceOwnerUtils;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Clearing device owner app"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    sget-object v0, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    sget-object v1, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->clearDeviceOwnerApp(Ljava/lang/String;)V

    return-void
.end method

.method public static hasLockTaskPackages()Z
    .locals 2

    sget-object v0, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    sget-object v1, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isLockTaskPermitted(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isDeviceAdminApp()Z
    .locals 4

    sget-object v0, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    new-instance v1, Landroid/content/ComponentName;

    sget-object v2, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    const-class v3, Lsk/mimac/slideshow/AppAdminReceiver;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public static isDeviceOwnerApp()Z
    .locals 2

    sget-object v0, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    sget-object v1, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isLockTask()Z
    .locals 3

    sget-object v0, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    invoke-static {v0}, Lr/a;->c(Landroid/app/ActivityManager;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {v0}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v0

    return v0
.end method

.method public static setDeviceOwnerApp()V
    .locals 4

    sget-object v0, Lsk/mimac/slideshow/utils/DeviceOwnerUtils;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Setting device owner app"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    const-string v0, "dpm set-device-owner sk.mimac.slideshow/.AppAdminReceiver"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lsk/mimac/slideshow/utils/Shell;->processWithOutput(Ljava/lang/String;Z)Lsk/mimac/slideshow/utils/Shell$Response;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/utils/Shell$Response;->getResult()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Lsk/mimac/slideshow/exception/DeviceOwnerExeception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t set as device owner app, result="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lsk/mimac/slideshow/utils/Shell$Response;->getResult()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", error="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lsk/mimac/slideshow/utils/Shell$Response;->getStderr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lsk/mimac/slideshow/exception/DeviceOwnerExeception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static setLockTaskPackages()V
    .locals 5

    sget-object v0, Lsk/mimac/slideshow/utils/DeviceOwnerUtils;->LOG:Lorg/slf4j/Logger;

    sget-object v1, Lsk/mimac/slideshow/utils/DeviceOwnerUtils;->ALLOWED_PACKAGES:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Setting lock task packages to {}"

    invoke-interface {v0, v3, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    const-string v2, "device_policy"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    new-instance v2, Landroid/content/ComponentName;

    sget-object v3, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    const-class v4, Lsk/mimac/slideshow/AppAdminReceiver;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyManager;->setLockTaskPackages(Landroid/content/ComponentName;[Ljava/lang/String;)V

    return-void
.end method

.method public static startLockTask(Landroid/app/Activity;)V
    .locals 4

    sget-object v0, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-static {}, Lsk/mimac/slideshow/utils/DeviceOwnerUtils;->isLockTask()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isLockTaskPermitted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lsk/mimac/slideshow/utils/DeviceOwnerUtils;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Starting lock task"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    sget-object v2, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    const-class v3, Lsk/mimac/slideshow/AppAdminReceiver;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_0

    invoke-static {v0, v1}, Ll1/a;->h(Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;)V

    :cond_0
    const-string v2, "no_create_windows"

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->addUserRestriction(Landroid/content/ComponentName;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->startLockTask()V

    return-void

    :cond_1
    new-instance p0, Lsk/mimac/slideshow/exception/DeviceOwnerExeception;

    const-string v0, "Lock task is not permitted for this application"

    invoke-direct {p0, v0}, Lsk/mimac/slideshow/exception/DeviceOwnerExeception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lsk/mimac/slideshow/exception/DeviceOwnerExeception;

    const-string v0, "Lock task is already active"

    invoke-direct {p0, v0}, Lsk/mimac/slideshow/exception/DeviceOwnerExeception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static stopLockTask(Landroid/app/Activity;)V
    .locals 2

    invoke-static {}, Lsk/mimac/slideshow/utils/DeviceOwnerUtils;->isLockTask()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lsk/mimac/slideshow/utils/DeviceOwnerUtils;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Stopping lock task"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->stopLockTask()V

    return-void

    :cond_0
    new-instance p0, Lsk/mimac/slideshow/exception/DeviceOwnerExeception;

    const-string v0, "Lock task is not active"

    invoke-direct {p0, v0}, Lsk/mimac/slideshow/exception/DeviceOwnerExeception;-><init>(Ljava/lang/String;)V

    throw p0
.end method
