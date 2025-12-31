.class public Ludt/util/UDTThreadFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# static fields
.field private static final num:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static theInstance:Ludt/util/UDTThreadFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Ludt/util/UDTThreadFactory;->num:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    sput-object v0, Ludt/util/UDTThreadFactory;->theInstance:Ludt/util/UDTThreadFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized get()Ludt/util/UDTThreadFactory;
    .locals 2

    const-class v0, Ludt/util/UDTThreadFactory;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ludt/util/UDTThreadFactory;->theInstance:Ludt/util/UDTThreadFactory;

    if-nez v1, :cond_0

    new-instance v1, Ludt/util/UDTThreadFactory;

    invoke-direct {v1}, Ludt/util/UDTThreadFactory;-><init>()V

    sput-object v1, Ludt/util/UDTThreadFactory;->theInstance:Ludt/util/UDTThreadFactory;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Ludt/util/UDTThreadFactory;->theInstance:Ludt/util/UDTThreadFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "UDT-Thread-"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ludt/util/UDTThreadFactory;->num:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-object v0
.end method
