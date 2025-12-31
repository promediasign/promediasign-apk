.class public Lio/grpc/Context;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/Context$ParentListener;,
        Lio/grpc/Context$Storage;,
        Lio/grpc/Context$Key;,
        Lio/grpc/Context$CancellationListener;,
        Lio/grpc/Context$CancellableContext;
    }
.end annotation


# static fields
.field private static final EMPTY_ENTRIES:Lio/grpc/PersistentHashArrayMappedTrie;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/PersistentHashArrayMappedTrie<",
            "Lio/grpc/Context$Key<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final ROOT:Lio/grpc/Context;

.field private static final log:Ljava/util/logging/Logger;

.field private static final storage:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/grpc/Context$Storage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final generation:I

.field final keyValueEntries:Lio/grpc/PersistentHashArrayMappedTrie;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/PersistentHashArrayMappedTrie<",
            "Lio/grpc/Context$Key<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private parentListener:Lio/grpc/Context$CancellationListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lio/grpc/Context;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/Context;->log:Ljava/util/logging/Logger;

    new-instance v0, Lio/grpc/PersistentHashArrayMappedTrie;

    invoke-direct {v0}, Lio/grpc/PersistentHashArrayMappedTrie;-><init>()V

    sput-object v0, Lio/grpc/Context;->EMPTY_ENTRIES:Lio/grpc/PersistentHashArrayMappedTrie;

    new-instance v1, Lio/grpc/Context;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lio/grpc/Context;-><init>(Lio/grpc/Context;Lio/grpc/PersistentHashArrayMappedTrie;)V

    sput-object v1, Lio/grpc/Context;->ROOT:Lio/grpc/Context;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lio/grpc/Context;->storage:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>(Lio/grpc/Context;Lio/grpc/PersistentHashArrayMappedTrie;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/Context;",
            "Lio/grpc/PersistentHashArrayMappedTrie<",
            "Lio/grpc/Context$Key<",
            "*>;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/grpc/Context$ParentListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/Context$ParentListener;-><init>(Lio/grpc/Context;Lio/grpc/Context$1;)V

    iput-object v0, p0, Lio/grpc/Context;->parentListener:Lio/grpc/Context$CancellationListener;

    invoke-static {p1}, Lio/grpc/Context;->cancellableAncestor(Lio/grpc/Context;)Lio/grpc/Context$CancellableContext;

    iput-object p2, p0, Lio/grpc/Context;->keyValueEntries:Lio/grpc/PersistentHashArrayMappedTrie;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget p1, p1, Lio/grpc/Context;->generation:I

    add-int/lit8 p1, p1, 0x1

    :goto_0
    iput p1, p0, Lio/grpc/Context;->generation:I

    invoke-static {p1}, Lio/grpc/Context;->validateGeneration(I)V

    return-void
.end method

.method public static synthetic access$800(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lio/grpc/Context;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$900(Lio/grpc/Context;Lio/grpc/Context$Key;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/Context;->lookup(Lio/grpc/Context$Key;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static cancellableAncestor(Lio/grpc/Context;)Lio/grpc/Context$CancellableContext;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method private static checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static createStorage()Lio/grpc/Context$Storage;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "io.grpc.override.ContextStorageOverride"

    .line 3
    .line 4
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lio/grpc/Context$Storage;

    .line 17
    .line 18
    sget-object v2, Lio/grpc/Context;->storage:Ljava/util/concurrent/atomic/AtomicReference;

    .line 19
    .line 20
    :cond_0
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_1
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :catch_0
    move-exception v0

    .line 35
    goto :goto_0

    .line 36
    :catch_1
    move-exception v1

    .line 37
    goto :goto_1

    .line 38
    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    .line 39
    .line 40
    const-string v2, "Storage override failed to initialize"

    .line 41
    .line 42
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    throw v1

    .line 46
    :goto_1
    new-instance v2, Lio/grpc/ThreadLocalContextStorage;

    .line 47
    .line 48
    invoke-direct {v2}, Lio/grpc/ThreadLocalContextStorage;-><init>()V

    .line 49
    .line 50
    .line 51
    sget-object v3, Lio/grpc/Context;->storage:Ljava/util/concurrent/atomic/AtomicReference;

    .line 52
    .line 53
    :cond_2
    invoke-virtual {v3, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-eqz v4, :cond_3

    .line 58
    .line 59
    sget-object v0, Lio/grpc/Context;->log:Ljava/util/logging/Logger;

    .line 60
    .line 61
    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 62
    .line 63
    const-string v3, "Storage override doesn\'t exist. Using default"

    .line 64
    .line 65
    invoke-virtual {v0, v2, v3, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_3
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    if-eqz v4, :cond_2

    .line 74
    .line 75
    :goto_2
    sget-object v0, Lio/grpc/Context;->storage:Ljava/util/concurrent/atomic/AtomicReference;

    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Lio/grpc/Context$Storage;

    .line 82
    .line 83
    return-object v0
.end method

.method public static current()Lio/grpc/Context;
    .locals 1

    invoke-static {}, Lio/grpc/Context;->storage()Lio/grpc/Context$Storage;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/Context$Storage;->current()Lio/grpc/Context;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lio/grpc/Context;->ROOT:Lio/grpc/Context;

    :cond_0
    return-object v0
.end method

.method public static key(Ljava/lang/String;)Lio/grpc/Context$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lio/grpc/Context$Key<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lio/grpc/Context$Key;

    invoke-direct {v0, p0}, Lio/grpc/Context$Key;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private lookup(Lio/grpc/Context$Key;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/Context$Key<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/Context;->keyValueEntries:Lio/grpc/PersistentHashArrayMappedTrie;

    invoke-virtual {v0, p1}, Lio/grpc/PersistentHashArrayMappedTrie;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public static storage()Lio/grpc/Context$Storage;
    .locals 1

    sget-object v0, Lio/grpc/Context;->storage:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/Context$Storage;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/Context;->createStorage()Lio/grpc/Context$Storage;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static validateGeneration(I)V
    .locals 3

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_0

    sget-object p0, Lio/grpc/Context;->log:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    const-string v2, "Context ancestry chain length is abnormally long. This suggests an error in application code. Length exceeded: 1000"

    invoke-virtual {p0, v0, v2, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public attach()Lio/grpc/Context;
    .locals 1

    invoke-static {}, Lio/grpc/Context;->storage()Lio/grpc/Context$Storage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/Context$Storage;->doAttach(Lio/grpc/Context;)Lio/grpc/Context;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lio/grpc/Context;->ROOT:Lio/grpc/Context;

    :cond_0
    return-object v0
.end method

.method public detach(Lio/grpc/Context;)V
    .locals 1

    const-string v0, "toAttach"

    invoke-static {p1, v0}, Lio/grpc/Context;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lio/grpc/Context;->storage()Lio/grpc/Context$Storage;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lio/grpc/Context$Storage;->detach(Lio/grpc/Context;Lio/grpc/Context;)V

    return-void
.end method

.method public withValue(Lio/grpc/Context$Key;Ljava/lang/Object;)Lio/grpc/Context;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/Context$Key<",
            "TV;>;TV;)",
            "Lio/grpc/Context;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/Context;->keyValueEntries:Lio/grpc/PersistentHashArrayMappedTrie;

    invoke-virtual {v0, p1, p2}, Lio/grpc/PersistentHashArrayMappedTrie;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/grpc/PersistentHashArrayMappedTrie;

    move-result-object p1

    new-instance p2, Lio/grpc/Context;

    invoke-direct {p2, p0, p1}, Lio/grpc/Context;-><init>(Lio/grpc/Context;Lio/grpc/PersistentHashArrayMappedTrie;)V

    return-object p2
.end method
