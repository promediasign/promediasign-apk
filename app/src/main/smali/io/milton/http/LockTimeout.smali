.class public Lio/milton/http/LockTimeout;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static log:Lorg/slf4j/Logger; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final otherSeconds:[Ljava/lang/Long;

.field final seconds:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/milton/http/LockTimeout;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/milton/http/LockTimeout;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/milton/http/LockTimeout;->seconds:Ljava/lang/Long;

    const/4 p1, 0x0

    iput-object p1, p0, Lio/milton/http/LockTimeout;->otherSeconds:[Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public getSeconds()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lio/milton/http/LockTimeout;->seconds:Ljava/lang/Long;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lio/milton/http/LockTimeout;->seconds:Ljava/lang/Long;

    const-string v1, "Infinite"

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-wide v2, 0x7fffffffffffffffL

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Second-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/milton/http/LockTimeout;->seconds:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
