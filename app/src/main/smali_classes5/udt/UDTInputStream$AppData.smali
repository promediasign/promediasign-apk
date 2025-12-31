.class public Ludt/UDTInputStream$AppData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ludt/UDTInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Ludt/UDTInputStream$AppData;",
        ">;"
    }
.end annotation


# instance fields
.field final data:[B

.field final sequenceNumber:J


# direct methods
.method public constructor <init>(J[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Ludt/UDTInputStream$AppData;->sequenceNumber:J

    iput-object p3, p0, Ludt/UDTInputStream$AppData;->data:[B

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ludt/UDTInputStream$AppData;

    invoke-virtual {p0, p1}, Ludt/UDTInputStream$AppData;->compareTo(Ludt/UDTInputStream$AppData;)I

    move-result p1

    return p1
.end method

.method public compareTo(Ludt/UDTInputStream$AppData;)I
    .locals 4

    .line 2
    iget-wide v0, p0, Ludt/UDTInputStream$AppData;->sequenceNumber:J

    iget-wide v2, p1, Ludt/UDTInputStream$AppData;->sequenceNumber:J

    sub-long/2addr v0, v2

    long-to-int p1, v0

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Ludt/UDTInputStream$AppData;

    iget-wide v2, p0, Ludt/UDTInputStream$AppData;->sequenceNumber:J

    iget-wide v4, p1, Ludt/UDTInputStream$AppData;->sequenceNumber:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getSequenceNumber()J
    .locals 2

    iget-wide v0, p0, Ludt/UDTInputStream$AppData;->sequenceNumber:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Ludt/UDTInputStream$AppData;->sequenceNumber:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    const/16 v0, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-wide v1, p0, Ludt/UDTInputStream$AppData;->sequenceNumber:J

    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "["

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Ludt/UDTInputStream$AppData;->data:[B

    .line 17
    .line 18
    array-length v1, v1

    .line 19
    const-string v2, "]"

    .line 20
    .line 21
    invoke-static {v2, v1, v0}, Lorg/apache/ftpserver/main/a;->g(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method
