.class public abstract Lsk/mimac/slideshow/hardware/HardwareFacadeInitializer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final POSSIBLE_IMPLEMENTATIONS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lsk/mimac/slideshow/hardware/HardwareFacadeInitializer;->POSSIBLE_IMPLEMENTATIONS:[Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized initInstance(Landroid/content/Context;)V
    .locals 6

    const-class v0, Lsk/mimac/slideshow/hardware/HardwareFacadeInitializer;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lsk/mimac/slideshow/hardware/HardwareFacadeHolder;->getInstance()Lsk/mimac/slideshow/hardware/HardwareFacade;

    move-result-object v1

    if-nez v1, :cond_2

    sget-object v1, Lsk/mimac/slideshow/hardware/HardwareFacadeInitializer;->POSSIBLE_IMPLEMENTATIONS:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsk/mimac/slideshow/hardware/ContextHardwareFacade;

    invoke-virtual {v4, p0}, Lsk/mimac/slideshow/hardware/ContextHardwareFacade;->init(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v4}, Lsk/mimac/slideshow/hardware/HardwareFacadeHolder;->setInstance(Lsk/mimac/slideshow/hardware/HardwareFacade;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :try_start_2
    new-instance v1, Lsk/mimac/slideshow/hardware/DefaultHardwareFacade;

    invoke-direct {v1}, Lsk/mimac/slideshow/hardware/DefaultHardwareFacade;-><init>()V

    invoke-virtual {v1, p0}, Lsk/mimac/slideshow/hardware/DefaultHardwareFacade;->init(Landroid/content/Context;)Z

    invoke-static {v1}, Lsk/mimac/slideshow/hardware/HardwareFacadeHolder;->setInstance(Lsk/mimac/slideshow/hardware/HardwareFacade;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method
