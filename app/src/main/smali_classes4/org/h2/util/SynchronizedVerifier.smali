.class public Lorg/h2/util/SynchronizedVerifier;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CURRENT:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final DETECT:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile enabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, LA/g;->r()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lorg/h2/util/SynchronizedVerifier;->DETECT:Ljava/util/Map;

    .line 6
    .line 7
    new-instance v0, Ljava/util/IdentityHashMap;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lj$/util/DesugarCollections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lorg/h2/util/SynchronizedVerifier;->CURRENT:Ljava/util/Map;

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static check(Ljava/lang/Object;)V
    .locals 1

    sget-boolean v0, Lorg/h2/util/SynchronizedVerifier;->enabled:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/h2/util/SynchronizedVerifier;->detectConcurrentAccess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static detectConcurrentAccess(Ljava/lang/Object;)V
    .locals 3

    sget-object v0, Lorg/h2/util/SynchronizedVerifier;->DETECT:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, Lorg/h2/util/SynchronizedVerifier;->CURRENT:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Concurrent access"

    if-nez v1, :cond_1

    invoke-interface {v0, p0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v0, 0x1

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    sget-object v0, Lorg/h2/util/SynchronizedVerifier;->CURRENT:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_2
    :goto_1
    return-void
.end method

.method public static setDetect(Ljava/lang/Class;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    sget-object p1, Lorg/h2/util/SynchronizedVerifier;->DETECT:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/h2/util/SynchronizedVerifier;->DETECT:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_2

    :goto_0
    sget-object p0, Lorg/h2/util/SynchronizedVerifier;->DETECT:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    sput-boolean p0, Lorg/h2/util/SynchronizedVerifier;->enabled:Z

    return-void

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "No object of this class was tested"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Detection was not enabled"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method
