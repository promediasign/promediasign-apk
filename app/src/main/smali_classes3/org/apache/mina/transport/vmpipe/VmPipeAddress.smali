.class public Lorg/apache/mina/transport/vmpipe/VmPipeAddress;
.super Ljava/net/SocketAddress;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/net/SocketAddress;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/mina/transport/vmpipe/VmPipeAddress;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2d36303337353033L


# instance fields
.field private final port:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/net/SocketAddress;-><init>()V

    iput p1, p0, Lorg/apache/mina/transport/vmpipe/VmPipeAddress;->port:I

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/mina/transport/vmpipe/VmPipeAddress;

    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/vmpipe/VmPipeAddress;->compareTo(Lorg/apache/mina/transport/vmpipe/VmPipeAddress;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/apache/mina/transport/vmpipe/VmPipeAddress;)I
    .locals 1

    .line 2
    iget v0, p0, Lorg/apache/mina/transport/vmpipe/VmPipeAddress;->port:I

    iget p1, p1, Lorg/apache/mina/transport/vmpipe/VmPipeAddress;->port:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Lorg/apache/mina/transport/vmpipe/VmPipeAddress;

    if-eqz v2, :cond_2

    check-cast p1, Lorg/apache/mina/transport/vmpipe/VmPipeAddress;

    iget v2, p0, Lorg/apache/mina/transport/vmpipe/VmPipeAddress;->port:I

    iget p1, p1, Lorg/apache/mina/transport/vmpipe/VmPipeAddress;->port:I

    if-ne v2, p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public getPort()I
    .locals 1

    iget v0, p0, Lorg/apache/mina/transport/vmpipe/VmPipeAddress;->port:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lorg/apache/mina/transport/vmpipe/VmPipeAddress;->port:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lorg/apache/mina/transport/vmpipe/VmPipeAddress;->port:I

    if-ltz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "vm:server:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/apache/mina/transport/vmpipe/VmPipeAddress;->port:I

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "vm:client:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/apache/mina/transport/vmpipe/VmPipeAddress;->port:I

    neg-int v1, v1

    goto :goto_0
.end method
