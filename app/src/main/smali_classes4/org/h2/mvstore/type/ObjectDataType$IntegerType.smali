.class Lorg/h2/mvstore/type/ObjectDataType$IntegerType;
.super Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/mvstore/type/ObjectDataType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntegerType"
.end annotation


# direct methods
.method public constructor <init>(Lorg/h2/mvstore/type/ObjectDataType;)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;-><init>(Lorg/h2/mvstore/type/ObjectDataType;I)V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getMemory(Ljava/lang/Object;)I
    .locals 1

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/16 p1, 0x18

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;->getMemory(Ljava/lang/Object;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public read(Ljava/nio/ByteBuffer;I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_2

    const/16 v0, 0x21

    if-eq p2, v0, :cond_1

    const/16 v0, 0x22

    if-eq p2, v0, :cond_0

    add-int/lit8 p2, p2, -0x40

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {p1}, Lorg/h2/mvstore/DataUtils;->readVarInt(Ljava/nio/ByteBuffer;)I

    move-result p1

    neg-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-static {p1}, Lorg/h2/mvstore/DataUtils;->readVarInt(Ljava/nio/ByteBuffer;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public write(Lorg/h2/mvstore/WriteBuffer;Ljava/lang/Object;)V
    .locals 3

    instance-of v0, p2, Ljava/lang/Integer;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;->write(Lorg/h2/mvstore/WriteBuffer;Ljava/lang/Object;)V

    return-void

    :cond_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/16 v0, 0x22

    const v1, 0x1fffff

    if-gez p2, :cond_3

    neg-int v2, p2

    if-ltz v2, :cond_2

    if-le v2, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 p2, 0x21

    invoke-virtual {p1, p2}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/h2/mvstore/WriteBuffer;->putVarInt(I)Lorg/h2/mvstore/WriteBuffer;

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p1, v0}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/h2/mvstore/WriteBuffer;->putInt(I)Lorg/h2/mvstore/WriteBuffer;

    goto :goto_1

    :cond_3
    const/16 v2, 0xf

    if-gt p2, v2, :cond_4

    add-int/lit8 p2, p2, 0x40

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    goto :goto_1

    :cond_4
    if-gt p2, v1, :cond_2

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/h2/mvstore/WriteBuffer;->putVarInt(I)Lorg/h2/mvstore/WriteBuffer;

    :goto_1
    return-void
.end method
