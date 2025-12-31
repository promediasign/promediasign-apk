.class public Lio/milton/http/LockInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/milton/http/LockInfo$LockDepth;,
        Lio/milton/http/LockInfo$LockType;,
        Lio/milton/http/LockInfo$LockScope;
    }
.end annotation


# static fields
.field private static final log:Lorg/slf4j/Logger;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public depth:Lio/milton/http/LockInfo$LockDepth;

.field public lockedByUser:Ljava/lang/String;

.field public scope:Lio/milton/http/LockInfo$LockScope;

.field public type:Lio/milton/http/LockInfo$LockType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/milton/http/LockInfo;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/milton/http/LockInfo;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lio/milton/http/LockInfo$LockScope;Lio/milton/http/LockInfo$LockType;Ljava/lang/String;Lio/milton/http/LockInfo$LockDepth;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/milton/http/LockInfo;->scope:Lio/milton/http/LockInfo$LockScope;

    iput-object p2, p0, Lio/milton/http/LockInfo;->type:Lio/milton/http/LockInfo$LockType;

    iput-object p3, p0, Lio/milton/http/LockInfo;->lockedByUser:Ljava/lang/String;

    iput-object p4, p0, Lio/milton/http/LockInfo;->depth:Lio/milton/http/LockInfo$LockDepth;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "scope: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/milton/http/LockInfo;->scope:Lio/milton/http/LockInfo$LockScope;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/milton/http/LockInfo;->type:Lio/milton/http/LockInfo$LockType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", owner: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/milton/http/LockInfo;->lockedByUser:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", depth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/milton/http/LockInfo;->depth:Lio/milton/http/LockInfo$LockDepth;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
