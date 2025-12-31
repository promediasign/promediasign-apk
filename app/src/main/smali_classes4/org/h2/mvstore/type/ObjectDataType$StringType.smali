.class Lorg/h2/mvstore/type/ObjectDataType$StringType;
.super Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/mvstore/type/ObjectDataType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringType"
.end annotation


# direct methods
.method public constructor <init>(Lorg/h2/mvstore/type/ObjectDataType;)V
    .locals 1

    const/16 v0, 0xb

    invoke-direct {p0, p1, v0}, Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;-><init>(Lorg/h2/mvstore/type/ObjectDataType;I)V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getMemory(Ljava/lang/Object;)I
    .locals 1

    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;->getMemory(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x18

    return p1
.end method

.method public read(Ljava/nio/ByteBuffer;I)Ljava/lang/Object;
    .locals 1

    const/16 v0, 0xb

    if-ne p2, v0, :cond_0

    invoke-static {p1}, Lorg/h2/mvstore/DataUtils;->readVarInt(Ljava/nio/ByteBuffer;)I

    move-result p2

    goto :goto_0

    :cond_0
    add-int/lit8 p2, p2, -0x58

    :goto_0
    invoke-static {p1, p2}, Lorg/h2/mvstore/DataUtils;->readString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public write(Lorg/h2/mvstore/WriteBuffer;Ljava/lang/Object;)V
    .locals 2

    instance-of v0, p2, Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;->write(Lorg/h2/mvstore/WriteBuffer;Ljava/lang/Object;)V

    return-void

    :cond_0
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xf

    if-gt v0, v1, :cond_1

    add-int/lit8 v1, v0, 0x58

    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    goto :goto_0

    :cond_1
    const/16 v1, 0xb

    invoke-virtual {p1, v1}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/h2/mvstore/WriteBuffer;->putVarInt(I)Lorg/h2/mvstore/WriteBuffer;

    :goto_0
    invoke-virtual {p1, p2, v0}, Lorg/h2/mvstore/WriteBuffer;->putStringData(Ljava/lang/String;I)Lorg/h2/mvstore/WriteBuffer;

    return-void
.end method
