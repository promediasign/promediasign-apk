.class public Lio/milton/http/fs/SimpleLockManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/http/LockManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/milton/http/fs/SimpleLockManager$CurrentLock;
    }
.end annotation


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final locksByToken:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final locksByUniqueId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/milton/http/fs/SimpleLockManager;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/milton/http/fs/SimpleLockManager;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lio/milton/cache/CacheManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "fuse-locks-byuniqueId"

    invoke-interface {p1, v0}, Lio/milton/cache/CacheManager;->getMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/milton/http/fs/SimpleLockManager;->locksByUniqueId:Ljava/util/Map;

    const-string v0, "fuse-locks-bytoken"

    invoke-interface {p1, v0}, Lio/milton/cache/CacheManager;->getMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lio/milton/http/fs/SimpleLockManager;->locksByToken:Ljava/util/Map;

    return-void
.end method

.method public static synthetic access$000(Lio/milton/http/fs/SimpleLockManager$CurrentLock;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lio/milton/http/fs/SimpleLockManager;->toString(Lio/milton/http/fs/SimpleLockManager$CurrentLock;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static toCurrentLock(Ljava/lang/String;)Lio/milton/http/fs/SimpleLockManager$CurrentLock;
    .locals 9

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "\n"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v4, v1, v2

    const/4 v2, 0x1

    aget-object v5, v1, v2

    const/4 v2, 0x2

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v2, v3}, Ljava/util/Date;-><init>(J)V

    const/4 v2, 0x3

    aget-object v7, v1, v2

    array-length v2, v1

    const/4 v3, 0x4

    if-le v2, v3, :cond_1

    aget-object v1, v1, v3

    if-eqz v1, :cond_1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object v8, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    move-object v8, v0

    :goto_0
    new-instance v1, Lio/milton/http/fs/SimpleLockManager$CurrentLock;

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lio/milton/http/fs/SimpleLockManager$CurrentLock;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :goto_1
    sget-object v2, Lio/milton/http/fs/SimpleLockManager;->log:Lorg/slf4j/Logger;

    const-string v3, "Exception parsing lock: "

    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2, p0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static toString(Lio/milton/http/fs/SimpleLockManager$CurrentLock;)Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lio/milton/http/fs/SimpleLockManager$CurrentLock;->id:Ljava/lang/String;

    iget-object v1, p0, Lio/milton/http/fs/SimpleLockManager$CurrentLock;->token:Lio/milton/http/LockToken;

    iget-object v2, v1, Lio/milton/http/LockToken;->tokenId:Ljava/lang/String;

    invoke-virtual {v1}, Lio/milton/http/LockToken;->getFrom()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    iget-object v1, p0, Lio/milton/http/fs/SimpleLockManager$CurrentLock;->lockedByUser:Ljava/lang/String;

    iget-object p0, p0, Lio/milton/http/fs/SimpleLockManager$CurrentLock;->token:Lio/milton/http/LockToken;

    iget-object p0, p0, Lio/milton/http/LockToken;->timeout:Lio/milton/http/LockTimeout;

    invoke-virtual {p0}, Lio/milton/http/LockTimeout;->getSeconds()Ljava/lang/Long;

    move-result-object p0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getCurrentToken(Lio/milton/resource/LockableResource;)Lio/milton/http/LockToken;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p1}, Lio/milton/resource/Resource;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v1, Lio/milton/http/fs/SimpleLockManager;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No uniqueID for resource: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lio/milton/resource/Resource;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-object v0

    :cond_1
    iget-object v1, p0, Lio/milton/http/fs/SimpleLockManager;->locksByUniqueId:Ljava/util/Map;

    invoke-interface {p1}, Lio/milton/resource/Resource;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_2

    return-object v0

    :cond_2
    invoke-static {p1}, Lio/milton/http/fs/SimpleLockManager;->toCurrentLock(Ljava/lang/String;)Lio/milton/http/fs/SimpleLockManager$CurrentLock;

    move-result-object p1

    if-nez p1, :cond_3

    return-object v0

    :cond_3
    new-instance v0, Lio/milton/http/LockToken;

    invoke-direct {v0}, Lio/milton/http/LockToken;-><init>()V

    new-instance v1, Lio/milton/http/LockInfo;

    sget-object v2, Lio/milton/http/LockInfo$LockScope;->EXCLUSIVE:Lio/milton/http/LockInfo$LockScope;

    sget-object v3, Lio/milton/http/LockInfo$LockType;->WRITE:Lio/milton/http/LockInfo$LockType;

    iget-object v4, p1, Lio/milton/http/fs/SimpleLockManager$CurrentLock;->lockedByUser:Ljava/lang/String;

    sget-object v5, Lio/milton/http/LockInfo$LockDepth;->ZERO:Lio/milton/http/LockInfo$LockDepth;

    invoke-direct {v1, v2, v3, v4, v5}, Lio/milton/http/LockInfo;-><init>(Lio/milton/http/LockInfo$LockScope;Lio/milton/http/LockInfo$LockType;Ljava/lang/String;Lio/milton/http/LockInfo$LockDepth;)V

    iput-object v1, v0, Lio/milton/http/LockToken;->info:Lio/milton/http/LockInfo;

    iget-object v2, p1, Lio/milton/http/fs/SimpleLockManager$CurrentLock;->lockedByUser:Ljava/lang/String;

    iput-object v2, v1, Lio/milton/http/LockInfo;->lockedByUser:Ljava/lang/String;

    iget-object p1, p1, Lio/milton/http/fs/SimpleLockManager$CurrentLock;->token:Lio/milton/http/LockToken;

    iget-object v1, p1, Lio/milton/http/LockToken;->timeout:Lio/milton/http/LockTimeout;

    iput-object v1, v0, Lio/milton/http/LockToken;->timeout:Lio/milton/http/LockTimeout;

    iget-object p1, p1, Lio/milton/http/LockToken;->tokenId:Ljava/lang/String;

    iput-object p1, v0, Lio/milton/http/LockToken;->tokenId:Ljava/lang/String;

    return-object v0
.end method
