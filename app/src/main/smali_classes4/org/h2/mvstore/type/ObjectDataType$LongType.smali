.class Lorg/h2/mvstore/type/ObjectDataType$LongType;
.super Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/mvstore/type/ObjectDataType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LongType"
.end annotation


# direct methods
.method public constructor <init>(Lorg/h2/mvstore/type/ObjectDataType;)V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;-><init>(Lorg/h2/mvstore/type/ObjectDataType;I)V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Long;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p1, p2}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getMemory(Ljava/lang/Object;)I
    .locals 1

    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    const/16 p1, 0x1e

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;->getMemory(Ljava/lang/Object;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public read(Ljava/nio/ByteBuffer;I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x5

    if-eq p2, v0, :cond_2

    const/16 v0, 0x23

    if-eq p2, v0, :cond_1

    const/16 v0, 0x24

    if-eq p2, v0, :cond_0

    add-int/lit8 p2, p2, -0x50

    int-to-long p1, p2

    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide p1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lorg/h2/mvstore/DataUtils;->readVarLong(Ljava/nio/ByteBuffer;)J

    move-result-wide p1

    neg-long p1, p1

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lorg/h2/mvstore/DataUtils;->readVarLong(Ljava/nio/ByteBuffer;)J

    move-result-wide p1

    goto :goto_0
.end method

.method public write(Lorg/h2/mvstore/WriteBuffer;Ljava/lang/Object;)V
    .locals 9

    instance-of v0, p2, Ljava/lang/Long;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;->write(Lorg/h2/mvstore/WriteBuffer;Ljava/lang/Object;)V

    return-void

    :cond_0
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/16 p2, 0x24

    const-wide v2, 0x1ffffffffffffL

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-gez v6, :cond_3

    neg-long v6, v0

    cmp-long v8, v6, v4

    if-ltz v8, :cond_2

    cmp-long v4, v6, v2

    if-lez v4, :cond_1

    goto :goto_0

    :cond_1
    const/16 p2, 0x23

    invoke-virtual {p1, p2}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    invoke-virtual {p1, v6, v7}, Lorg/h2/mvstore/WriteBuffer;->putVarLong(J)Lorg/h2/mvstore/WriteBuffer;

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p1, p2}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    invoke-virtual {p1, v0, v1}, Lorg/h2/mvstore/WriteBuffer;->putLong(J)Lorg/h2/mvstore/WriteBuffer;

    goto :goto_1

    :cond_3
    const-wide/16 v4, 0x7

    cmp-long v6, v0, v4

    if-gtz v6, :cond_4

    const-wide/16 v2, 0x50

    add-long/2addr v0, v2

    long-to-int p2, v0

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    goto :goto_1

    :cond_4
    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    invoke-virtual {p1, v0, v1}, Lorg/h2/mvstore/WriteBuffer;->putVarLong(J)Lorg/h2/mvstore/WriteBuffer;

    :goto_1
    return-void
.end method
