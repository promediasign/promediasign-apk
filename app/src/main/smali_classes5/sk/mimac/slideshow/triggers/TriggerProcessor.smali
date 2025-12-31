.class public abstract Lsk/mimac/slideshow/triggers/TriggerProcessor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;
    }
.end annotation


# static fields
.field private static final EXECUTOR:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private static final LOG:Lorg/slf4j/Logger;

.field private static context:Lorg/mozilla/javascript/Context;

.field private static debugOn:Z

.field private static scheduledFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private static scope:Lorg/mozilla/javascript/Scriptable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lsk/mimac/slideshow/triggers/TriggerProcessor;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/triggers/TriggerProcessor;->LOG:Lorg/slf4j/Logger;

    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lg1/a;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lg1/a;-><init>(I)V

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lsk/mimac/slideshow/triggers/TriggerProcessor;->EXECUTOR:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v0, 0x0

    sput-boolean v0, Lsk/mimac/slideshow/triggers/TriggerProcessor;->debugOn:Z

    return-void
.end method

.method public static synthetic a(Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lsk/mimac/slideshow/triggers/TriggerProcessor;->lambda$evaluate$3(Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;Ljava/util/Map;)V

    return-void
.end method

.method private static appendLocalVariables(Ljava/util/Map;Ljava/lang/StringBuilder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const-string v1, "var "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Number;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "[]"

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    const-string v1, "[\'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "\',\'"

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/StringUtils;->join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\']"

    goto :goto_1

    :cond_2
    const-string v1, "\'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsk/mimac/slideshow/triggers/TriggerProcessor;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const-string v0, ";\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static synthetic b()V
    .locals 0

    .line 1
    invoke-static {}, Lsk/mimac/slideshow/triggers/TriggerProcessor;->lambda$init$1()V

    return-void
.end method

.method public static synthetic c(Ljava/lang/String;)Lsk/mimac/slideshow/utils/Couple;
    .locals 0

    .line 1
    invoke-static {p0}, Lsk/mimac/slideshow/triggers/TriggerProcessor;->lambda$init$2(Ljava/lang/String;)Lsk/mimac/slideshow/utils/Couple;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    .line 1
    invoke-static {p0}, Lsk/mimac/slideshow/triggers/TriggerProcessor;->lambda$static$0(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method private static escapeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "\n"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\r"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\'"

    const-string v1, "\\\'"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static evaluate(Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lsk/mimac/slideshow/triggers/TriggerProcessor;->EXECUTOR:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, LG/c;

    const/16 v2, 0x14

    invoke-direct {v1, p0, p1, v2}, LG/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public static init(Ljava/lang/String;)Lsk/mimac/slideshow/utils/Couple;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lsk/mimac/slideshow/utils/Couple<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lsk/mimac/slideshow/triggers/TriggerProcessor;->EXECUTOR:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Le1/d;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Le1/d;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lsk/mimac/slideshow/utils/Couple;

    return-object p0
.end method

.method public static init()V
    .locals 3

    .line 2
    :try_start_0
    invoke-static {}, Lsk/mimac/slideshow/triggers/TriggersUtils;->loadCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsk/mimac/slideshow/triggers/TriggerProcessor;->init(Ljava/lang/String;)Lsk/mimac/slideshow/utils/Couple;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lsk/mimac/slideshow/triggers/TriggerProcessor;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Can\'t init triggers"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    return-void
.end method

.method public static isDebugOn()Z
    .locals 1

    sget-boolean v0, Lsk/mimac/slideshow/triggers/TriggerProcessor;->debugOn:Z

    return v0
.end method

.method private static synthetic lambda$evaluate$3(Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;Ljava/util/Map;)V
    .locals 13

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    sget-object v4, Lsk/mimac/slideshow/triggers/TriggerProcessor;->context:Lorg/mozilla/javascript/Context;

    if-nez v4, :cond_0

    return-void

    :cond_0
    sget-object v4, Lsk/mimac/slideshow/triggers/TriggerProcessor;->EXECUTOR:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    const/4 v6, 0x5

    if-le v5, v6, :cond_1

    sget-object v5, Lsk/mimac/slideshow/triggers/TriggerProcessor;->LOG:Lorg/slf4j/Logger;

    invoke-virtual {v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v6, "Trigger executor queue has size {}, skipping trigger with eventCode {}"

    invoke-interface {v5, v6, v4, p0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, v6}, Lsk/mimac/slideshow/triggers/TriggerProcessor;->appendLocalVariables(Ljava/util/Map;Ljava/lang/StringBuilder;)V

    const-string p1, "var count = 0; var funcs = triggers[\'"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\'];\n"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "for (i = 0; i < funcs.length; i++) { count += funcs[i](); }\n"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "count;"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_0
    sget-object v7, Lsk/mimac/slideshow/triggers/TriggerProcessor;->context:Lorg/mozilla/javascript/Context;

    sget-object v8, Lsk/mimac/slideshow/triggers/TriggerProcessor;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "<cmd>"

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Lorg/mozilla/javascript/Context;->evaluateString(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sget-boolean v8, Lsk/mimac/slideshow/triggers/TriggerProcessor;->debugOn:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/32 v9, 0xf4240

    const-string v11, "Event {} triggered {} action(s) in {} ms"

    if-eqz v8, :cond_2

    :try_start_1
    sget-object v8, Lsk/mimac/slideshow/triggers/TriggerProcessor;->LOG:Lorg/slf4j/Logger;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sub-long/2addr v6, v4

    div-long/2addr v6, v9

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v2

    aput-object p1, v3, v1

    aput-object v4, v3, v0

    invoke-interface {v8, v11, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_2
    if-lez p1, :cond_3

    sget-object v8, Lsk/mimac/slideshow/triggers/TriggerProcessor;->LOG:Lorg/slf4j/Logger;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sub-long/2addr v6, v4

    div-long/2addr v6, v9

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v2

    aput-object p1, v3, v1

    aput-object v4, v3, v0

    invoke-interface {v8, v11, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lsk/mimac/slideshow/triggers/TriggerProcessor;->LOG:Lorg/slf4j/Logger;

    const-string v0, "Can\'t evaluate trigger script"

    invoke-interface {p1, v0, p0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private static synthetic lambda$init$1()V
    .locals 2

    sget-object v0, Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;->TIMER:Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lsk/mimac/slideshow/triggers/TriggerProcessor;->evaluate(Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;Ljava/util/Map;)V

    return-void
.end method

.method private static synthetic lambda$init$2(Ljava/lang/String;)Lsk/mimac/slideshow/utils/Couple;
    .locals 15

    sget-object v0, Lsk/mimac/slideshow/triggers/TriggerProcessor;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    sput-object v1, Lsk/mimac/slideshow/triggers/TriggerProcessor;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xa

    if-le v0, v2, :cond_1

    sget-object v0, Lsk/mimac/slideshow/triggers/TriggerProcessor;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Creating new trigger script context"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lorg/mozilla/javascript/Context;->enter()Lorg/mozilla/javascript/Context;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/triggers/TriggerProcessor;->context:Lorg/mozilla/javascript/Context;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Context;->setOptimizationLevel(I)V

    sget-object v0, Lsk/mimac/slideshow/triggers/TriggerProcessor;->context:Lorg/mozilla/javascript/Context;

    invoke-virtual {v0}, Lorg/mozilla/javascript/Context;->initStandardObjects()Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/triggers/TriggerProcessor;->scope:Lorg/mozilla/javascript/Scriptable;

    const-string v1, "apiService"

    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getApiService()Lsk/mimac/slideshow/ApiService;

    move-result-object v2

    sget-object v3, Lsk/mimac/slideshow/triggers/TriggerProcessor;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v2, v3}, Lorg/mozilla/javascript/Context;->javaToJS(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/ScriptableObject;->putProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v3, Lsk/mimac/slideshow/triggers/TriggerProcessor;->context:Lorg/mozilla/javascript/Context;

    sget-object v4, Lsk/mimac/slideshow/triggers/TriggerProcessor;->scope:Lorg/mozilla/javascript/Scriptable;

    const-string v5, "var triggers = [];triggers[\'PANEL_CLICK\'] = [];triggers[\'FACE_DETECTION\'] = [];triggers[\'KEY_PRESS\'] = [];triggers[\'TIMER\'] = [];triggers[\'SERIAL_DATA\'] = [];triggers[\'OSC_DATA\'] = [];triggers[\'RSS_FEED_DOWNLOADED\'] = [];triggers[\'EXTERNAL_STORAGE_INSERTED\'] = [];triggers[\'EXTERNAL_STORAGE_REMOVED\'] = [];\n"

    const-string v6, "<definitions>"

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lorg/mozilla/javascript/Context;->evaluateString(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v9, Lsk/mimac/slideshow/triggers/TriggerProcessor;->context:Lorg/mozilla/javascript/Context;

    sget-object v10, Lsk/mimac/slideshow/triggers/TriggerProcessor;->scope:Lorg/mozilla/javascript/Scriptable;

    const-string v12, "<functions>"

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object v11, p0

    invoke-virtual/range {v9 .. v14}, Lorg/mozilla/javascript/Context;->evaluateString(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsk/mimac/slideshow/triggers/TriggerProcessor;->EXECUTOR:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Le1/c;

    const/4 p0, 0x7

    invoke-direct {v1, p0}, Le1/c;-><init>(I)V

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x1

    invoke-virtual/range {v0 .. v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    sput-object p0, Lsk/mimac/slideshow/triggers/TriggerProcessor;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    new-instance p0, Lsk/mimac/slideshow/utils/Couple;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "Triggers processing is on"

    invoke-direct {p0, v0, v1}, Lsk/mimac/slideshow/utils/Couple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lsk/mimac/slideshow/triggers/TriggerProcessor;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Can\'t create trigger script context"

    invoke-interface {v0, v1, p0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lsk/mimac/slideshow/utils/Couple;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t compile triggers: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lsk/mimac/slideshow/utils/Couple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_1
    sput-object v1, Lsk/mimac/slideshow/triggers/TriggerProcessor;->context:Lorg/mozilla/javascript/Context;

    sput-object v1, Lsk/mimac/slideshow/triggers/TriggerProcessor;->scope:Lorg/mozilla/javascript/Scriptable;

    new-instance p0, Lsk/mimac/slideshow/utils/Couple;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "Triggers processing is off"

    invoke-direct {p0, v0, v1}, Lsk/mimac/slideshow/utils/Couple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method private static synthetic lambda$static$0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "TriggerProcessorThread"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method

.method public static setDebugOn(Z)V
    .locals 0

    sput-boolean p0, Lsk/mimac/slideshow/triggers/TriggerProcessor;->debugOn:Z

    return-void
.end method
