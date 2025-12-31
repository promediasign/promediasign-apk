.class public Lio/milton/http/fs/SimpleLockManager$CurrentLock;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/milton/http/fs/SimpleLockManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CurrentLock"
.end annotation


# instance fields
.field final id:Ljava/lang/String;

.field final lockedByUser:Ljava/lang/String;

.field final token:Lio/milton/http/LockToken;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/milton/http/fs/SimpleLockManager$CurrentLock;->id:Ljava/lang/String;

    iput-object p4, p0, Lio/milton/http/fs/SimpleLockManager$CurrentLock;->lockedByUser:Ljava/lang/String;

    new-instance p1, Lio/milton/http/LockTimeout;

    invoke-direct {p1, p5}, Lio/milton/http/LockTimeout;-><init>(Ljava/lang/Long;)V

    new-instance p5, Lio/milton/http/LockInfo;

    sget-object v0, Lio/milton/http/LockInfo$LockScope;->EXCLUSIVE:Lio/milton/http/LockInfo$LockScope;

    sget-object v1, Lio/milton/http/LockInfo$LockType;->WRITE:Lio/milton/http/LockInfo$LockType;

    sget-object v2, Lio/milton/http/LockInfo$LockDepth;->ZERO:Lio/milton/http/LockInfo$LockDepth;

    invoke-direct {p5, v0, v1, p4, v2}, Lio/milton/http/LockInfo;-><init>(Lio/milton/http/LockInfo$LockScope;Lio/milton/http/LockInfo$LockType;Ljava/lang/String;Lio/milton/http/LockInfo$LockDepth;)V

    new-instance p4, Lio/milton/http/LockToken;

    invoke-direct {p4, p2, p5, p1}, Lio/milton/http/LockToken;-><init>(Ljava/lang/String;Lio/milton/http/LockInfo;Lio/milton/http/LockTimeout;)V

    iput-object p4, p0, Lio/milton/http/fs/SimpleLockManager$CurrentLock;->token:Lio/milton/http/LockToken;

    invoke-virtual {p4, p3}, Lio/milton/http/LockToken;->setFrom(Ljava/util/Date;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lio/milton/http/fs/SimpleLockManager;->access$000(Lio/milton/http/fs/SimpleLockManager$CurrentLock;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
