.class Lorg/h2/mvstore/type/ObjectDataType$ObjectArrayType;
.super Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/mvstore/type/ObjectDataType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ObjectArrayType"
.end annotation


# instance fields
.field private final elementType:Lorg/h2/mvstore/type/ObjectDataType;


# direct methods
.method public constructor <init>(Lorg/h2/mvstore/type/ObjectDataType;)V
    .locals 1

    const/16 v0, 0xe

    invoke-direct {p0, p1, v0}, Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;-><init>(Lorg/h2/mvstore/type/ObjectDataType;I)V

    new-instance p1, Lorg/h2/mvstore/type/ObjectDataType;

    invoke-direct {p1}, Lorg/h2/mvstore/type/ObjectDataType;-><init>()V

    iput-object p1, p0, Lorg/h2/mvstore/type/ObjectDataType$ObjectArrayType;->elementType:Lorg/h2/mvstore/type/ObjectDataType;

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 13

    invoke-static {p1}, Lorg/h2/mvstore/type/ObjectDataType;->isArray(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {p2}, Lorg/h2/mvstore/type/ObjectDataType;->isArray(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_7

    :cond_0
    const/4 v0, 0x0

    if-ne p1, p2, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq v1, v2, :cond_5

    invoke-static {v1}, Lorg/h2/mvstore/type/ObjectDataType;->getCommonClassId(Ljava/lang/Class;)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2}, Lorg/h2/mvstore/type/ObjectDataType;->getCommonClassId(Ljava/lang/Class;)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p1

    return p1

    :cond_2
    return v3

    :cond_3
    if-eqz p2, :cond_4

    return v4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_5
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v7

    if-eqz v7, :cond_11

    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v1, v7, :cond_6

    check-cast p1, [B

    check-cast p2, [B

    invoke-static {p1, p2}, Lorg/h2/mvstore/type/ObjectDataType;->compareNotNull([B[B)I

    move-result p1

    return p1

    :cond_6
    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_13

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v1, v8, :cond_7

    move-object v8, p1

    check-cast v8, [Z

    aget-boolean v8, v8, v7

    move-object v9, p2

    check-cast v9, [Z

    aget-boolean v9, v9, v7

    :goto_1
    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->signum(I)I

    move-result v8

    goto/16 :goto_4

    :cond_7
    sget-object v8, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v1, v8, :cond_8

    move-object v8, p1

    check-cast v8, [C

    aget-char v8, v8, v7

    move-object v9, p2

    check-cast v9, [C

    aget-char v9, v9, v7

    goto :goto_1

    :cond_8
    sget-object v8, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v1, v8, :cond_9

    move-object v8, p1

    check-cast v8, [S

    aget-short v8, v8, v7

    move-object v9, p2

    check-cast v9, [S

    aget-short v9, v9, v7

    goto :goto_1

    :cond_9
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v1, v8, :cond_c

    move-object v8, p1

    check-cast v8, [I

    aget v8, v8, v7

    move-object v9, p2

    check-cast v9, [I

    aget v9, v9, v7

    if-ne v8, v9, :cond_a

    :goto_2
    const/4 v8, 0x0

    goto :goto_4

    :cond_a
    if-ge v8, v9, :cond_b

    :goto_3
    const/4 v8, -0x1

    goto :goto_4

    :cond_b
    const/4 v8, 0x1

    goto :goto_4

    :cond_c
    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v1, v8, :cond_d

    move-object v8, p1

    check-cast v8, [F

    aget v8, v8, v7

    move-object v9, p2

    check-cast v9, [F

    aget v9, v9, v7

    invoke-static {v8, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    goto :goto_4

    :cond_d
    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v1, v8, :cond_e

    move-object v8, p1

    check-cast v8, [D

    aget-wide v9, v8, v7

    move-object v8, p2

    check-cast v8, [D

    aget-wide v11, v8, v7

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Double;->compare(DD)I

    move-result v8

    goto :goto_4

    :cond_e
    move-object v8, p1

    check-cast v8, [J

    aget-wide v9, v8, v7

    move-object v8, p2

    check-cast v8, [J

    aget-wide v11, v8, v7

    cmp-long v8, v9, v11

    if-nez v8, :cond_f

    goto :goto_2

    :cond_f
    if-gez v8, :cond_b

    goto :goto_3

    :goto_4
    if-eqz v8, :cond_10

    return v8

    :cond_10
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_11
    check-cast p1, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v6, :cond_13

    iget-object v7, p0, Lorg/h2/mvstore/type/ObjectDataType$ObjectArrayType;->elementType:Lorg/h2/mvstore/type/ObjectDataType;

    aget-object v8, p1, v1

    aget-object v9, p2, v1

    invoke-virtual {v7, v8, v9}, Lorg/h2/mvstore/type/ObjectDataType;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    if-eqz v7, :cond_12

    return v7

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_13
    if-ne v2, v5, :cond_14

    goto :goto_6

    :cond_14
    if-ge v2, v5, :cond_15

    const/4 v0, -0x1

    goto :goto_6

    :cond_15
    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_16
    :goto_7
    invoke-super {p0, p1, p2}, Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getMemory(Ljava/lang/Object;)I
    .locals 5

    invoke-static {p1}, Lorg/h2/mvstore/type/ObjectDataType;->isArray(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;->getMemory(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    const/16 v2, 0x40

    if-eqz v1, :cond_8

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p1

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    :goto_0
    add-int/2addr v2, p1

    goto :goto_5

    :cond_1
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_3

    :goto_1
    mul-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_3
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_4

    goto :goto_1

    :cond_4
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_5

    :goto_2
    mul-int/lit8 p1, p1, 0x4

    goto :goto_0

    :cond_5
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_6

    goto :goto_2

    :cond_6
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_7

    :goto_3
    mul-int/lit8 p1, p1, 0x8

    goto :goto_0

    :cond_7
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_a

    goto :goto_3

    :cond_8
    check-cast p1, [Ljava/lang/Object;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_a

    aget-object v3, p1, v1

    if-eqz v3, :cond_9

    iget-object v4, p0, Lorg/h2/mvstore/type/ObjectDataType$ObjectArrayType;->elementType:Lorg/h2/mvstore/type/ObjectDataType;

    invoke-virtual {v4, v3}, Lorg/h2/mvstore/type/ObjectDataType;->getMemory(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v3, v2

    move v2, v3

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_a
    :goto_5
    mul-int/lit8 v2, v2, 0x2

    return v2
.end method

.method public read(Ljava/nio/ByteBuffer;I)Ljava/lang/Object;
    .locals 8

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0xe

    if-eq p2, v3, :cond_0

    add-int/lit8 p2, p2, -0x68

    invoke-static {p2}, Lorg/h2/mvstore/DataUtils;->newBytes(I)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object p2

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p2

    const/4 v3, -0x1

    const/16 v4, 0x8

    if-ne p2, v3, :cond_1

    sget-object p2, Lorg/h2/mvstore/type/StringDataType;->INSTANCE:Lorg/h2/mvstore/type/StringDataType;

    invoke-virtual {p2, p1}, Lorg/h2/mvstore/type/StringDataType;->read(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p2

    :try_start_0
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v3, "Could not get class {0}"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v1

    aput-object p1, v0, v2

    invoke-static {v4, v3, v0}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1

    :cond_1
    sget-object v3, Lorg/h2/mvstore/type/ObjectDataType;->COMMON_CLASSES:[Ljava/lang/Class;

    aget-object p2, v3, p2

    :goto_0
    invoke-static {p1}, Lorg/h2/mvstore/DataUtils;->readVarInt(Ljava/nio/ByteBuffer;)I

    move-result v3

    :try_start_1
    invoke-static {p2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_b

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p2, v5, :cond_3

    move-object v5, v0

    check-cast v5, [Z

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    if-ne v6, v2, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    aput-boolean v6, v5, v4

    goto :goto_3

    :cond_3
    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p2, v5, :cond_4

    move-object v5, v0

    check-cast v5, [B

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    aput-byte v6, v5, v4

    goto :goto_3

    :cond_4
    sget-object v5, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p2, v5, :cond_5

    move-object v5, v0

    check-cast v5, [C

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v6

    aput-char v6, v5, v4

    goto :goto_3

    :cond_5
    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p2, v5, :cond_6

    move-object v5, v0

    check-cast v5, [S

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v6

    aput-short v6, v5, v4

    goto :goto_3

    :cond_6
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p2, v5, :cond_7

    move-object v5, v0

    check-cast v5, [I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    aput v6, v5, v4

    goto :goto_3

    :cond_7
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p2, v5, :cond_8

    move-object v5, v0

    check-cast v5, [F

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v6

    aput v6, v5, v4

    goto :goto_3

    :cond_8
    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p2, v5, :cond_9

    move-object v5, v0

    check-cast v5, [D

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v6

    aput-wide v6, v5, v4

    goto :goto_3

    :cond_9
    move-object v5, v0

    check-cast v5, [J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v6

    aput-wide v6, v5, v4

    :goto_3
    add-int/2addr v4, v2

    goto :goto_1

    :cond_a
    move-object p2, v0

    check-cast p2, [Ljava/lang/Object;

    :goto_4
    if-ge v1, v3, :cond_b

    iget-object v4, p0, Lorg/h2/mvstore/type/ObjectDataType$ObjectArrayType;->elementType:Lorg/h2/mvstore/type/ObjectDataType;

    invoke-virtual {v4, p1}, Lorg/h2/mvstore/type/ObjectDataType;->read(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, p2, v1

    add-int/2addr v1, v2

    goto :goto_4

    :cond_b
    return-object v0

    :catch_1
    move-exception p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p2, v5, v1

    aput-object v3, v5, v2

    aput-object p1, v5, v0

    const-string p1, "Could not create array of type {0} length {1}"

    invoke-static {v4, p1, v5}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1
.end method

.method public write(Lorg/h2/mvstore/WriteBuffer;Ljava/lang/Object;)V
    .locals 7

    invoke-static {p2}, Lorg/h2/mvstore/type/ObjectDataType;->isArray(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lorg/h2/mvstore/type/ObjectDataType$AutoDetectDataType;->write(Lorg/h2/mvstore/WriteBuffer;Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/mvstore/type/ObjectDataType;->getCommonClassId(Ljava/lang/Class;)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0xe

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-eqz v4, :cond_a

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v4, :cond_2

    check-cast p2, [B

    array-length v0, p2

    const/16 v2, 0xf

    if-gt v0, v2, :cond_1

    add-int/lit8 v0, v0, 0x68

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v3}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v2, v1}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/h2/mvstore/WriteBuffer;->putVarInt(I)Lorg/h2/mvstore/WriteBuffer;

    :goto_0
    invoke-virtual {p1, p2}, Lorg/h2/mvstore/WriteBuffer;->put([B)Lorg/h2/mvstore/WriteBuffer;

    return-void

    :cond_2
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {p1, v3}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v3, v1}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/h2/mvstore/WriteBuffer;->putVarInt(I)Lorg/h2/mvstore/WriteBuffer;

    :goto_1
    if-ge v2, v4, :cond_9

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_3

    move-object v1, p2

    check-cast v1, [Z

    aget-boolean v1, v1, v2

    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    goto :goto_2

    :cond_3
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_4

    move-object v1, p2

    check-cast v1, [C

    aget-char v1, v1, v2

    invoke-virtual {p1, v1}, Lorg/h2/mvstore/WriteBuffer;->putChar(C)Lorg/h2/mvstore/WriteBuffer;

    goto :goto_2

    :cond_4
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_5

    move-object v1, p2

    check-cast v1, [S

    aget-short v1, v1, v2

    invoke-virtual {p1, v1}, Lorg/h2/mvstore/WriteBuffer;->putShort(S)Lorg/h2/mvstore/WriteBuffer;

    goto :goto_2

    :cond_5
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_6

    move-object v1, p2

    check-cast v1, [I

    aget v1, v1, v2

    invoke-virtual {p1, v1}, Lorg/h2/mvstore/WriteBuffer;->putInt(I)Lorg/h2/mvstore/WriteBuffer;

    goto :goto_2

    :cond_6
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_7

    move-object v1, p2

    check-cast v1, [F

    aget v1, v1, v2

    invoke-virtual {p1, v1}, Lorg/h2/mvstore/WriteBuffer;->putFloat(F)Lorg/h2/mvstore/WriteBuffer;

    goto :goto_2

    :cond_7
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_8

    move-object v1, p2

    check-cast v1, [D

    aget-wide v5, v1, v2

    invoke-virtual {p1, v5, v6}, Lorg/h2/mvstore/WriteBuffer;->putDouble(D)Lorg/h2/mvstore/WriteBuffer;

    goto :goto_2

    :cond_8
    move-object v1, p2

    check-cast v1, [J

    aget-wide v5, v1, v2

    invoke-virtual {p1, v5, v6}, Lorg/h2/mvstore/WriteBuffer;->putLong(J)Lorg/h2/mvstore/WriteBuffer;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_9
    return-void

    :cond_a
    invoke-virtual {p1, v3}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    goto :goto_3

    :cond_b
    invoke-virtual {p1, v3}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    move-result-object v1

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Lorg/h2/mvstore/WriteBuffer;->put(B)Lorg/h2/mvstore/WriteBuffer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/h2/mvstore/type/StringDataType;->INSTANCE:Lorg/h2/mvstore/type/StringDataType;

    invoke-virtual {v1, p1, v0}, Lorg/h2/mvstore/type/StringDataType;->write(Lorg/h2/mvstore/WriteBuffer;Ljava/lang/Object;)V

    :goto_3
    check-cast p2, [Ljava/lang/Object;

    array-length v0, p2

    invoke-virtual {p1, v0}, Lorg/h2/mvstore/WriteBuffer;->putVarInt(I)Lorg/h2/mvstore/WriteBuffer;

    array-length v0, p2

    :goto_4
    if-ge v2, v0, :cond_c

    aget-object v1, p2, v2

    iget-object v3, p0, Lorg/h2/mvstore/type/ObjectDataType$ObjectArrayType;->elementType:Lorg/h2/mvstore/type/ObjectDataType;

    invoke-virtual {v3, p1, v1}, Lorg/h2/mvstore/type/ObjectDataType;->write(Lorg/h2/mvstore/WriteBuffer;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_c
    return-void
.end method
