.class public abstract Landroidx/media3/common/util/CodecSpecificDataUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final HEVC_GENERAL_PROFILE_SPACE_STRINGS:[Ljava/lang/String;

.field private static final NAL_START_CODE:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media3/common/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    const-string v0, "B"

    const-string v1, "C"

    const-string v2, ""

    const-string v3, "A"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/util/CodecSpecificDataUtil;->HEVC_GENERAL_PROFILE_SPACE_STRINGS:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method public static buildAvcCodecString(III)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const-string p0, "avc1.%02X%02X%02X"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static buildCea708InitializationData(Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    new-array p0, v1, [B

    aput-byte v1, p0, v0

    goto :goto_0

    :cond_0
    new-array p0, v1, [B

    aput-byte v0, p0, v0

    :goto_0
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static buildHevcCodecString(IZII[II)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Landroidx/media3/common/util/CodecSpecificDataUtil;->HEVC_GENERAL_PROFILE_SPACE_STRINGS:[Ljava/lang/String;

    aget-object p0, v3, p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    if-eqz p1, :cond_0

    const/16 p1, 0x48

    goto :goto_0

    :cond_0
    const/16 p1, 0x4c

    :goto_0
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v0

    aput-object p2, v3, v1

    const/4 p0, 0x2

    aput-object p3, v3, p0

    const/4 p0, 0x3

    aput-object p1, v3, p0

    const/4 p0, 0x4

    aput-object p5, v3, p0

    const-string p0, "hvc1.%s%d.%X.%c%d"

    invoke-static {p0, v3}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p0, p4

    :goto_1
    if-lez p0, :cond_1

    add-int/lit8 p1, p0, -0x1

    aget p1, p4, p1

    if-nez p1, :cond_1

    add-int/lit8 p0, p0, -0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_2
    if-ge p1, p0, :cond_2

    aget p2, p4, p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array p3, v1, [Ljava/lang/Object;

    aput-object p2, p3, v0

    const-string p2, ".%02X"

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p1, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static buildNalUnit([BII)[B
    .locals 4

    sget-object v0, Landroidx/media3/common/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    array-length v1, v0

    add-int/2addr v1, p2

    new-array v1, v1, [B

    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    invoke-static {p0, p1, v1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public static getVideoResolutionFromMpeg4VideoConfig([B)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0, p0}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v2, 0x3

    array-length v4, p0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ge v3, v4, :cond_2

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v4

    if-ne v4, v6, :cond_1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xf0

    const/16 v4, 0x20

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_2
    const-string v3, "Invalid input: VOL not found."

    invoke-static {v0, v3}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    new-instance v0, Landroidx/media3/common/util/ParsableBitArray;

    invoke-direct {v0, p0}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    const/4 p0, 0x4

    add-int/2addr v2, p0

    const/16 v3, 0x8

    mul-int/lit8 v2, v2, 0x8

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, p0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    :cond_3
    invoke-virtual {v0, p0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result p0

    const/16 v2, 0xf

    if-ne p0, v2, :cond_4

    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    :cond_4
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result p0

    if-eqz p0, :cond_5

    const/16 p0, 0x4f

    invoke-virtual {v0, p0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    :cond_5
    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result p0

    if-nez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_3

    :cond_6
    const/4 p0, 0x0

    :goto_3
    const-string v2, "Only supports rectangular video object layer shape."

    invoke-static {p0, v2}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result p0

    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    const/16 p0, 0x10

    invoke-virtual {v0, p0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result p0

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v2

    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_9

    if-lez p0, :cond_7

    const/4 v2, 0x1

    goto :goto_4

    :cond_7
    const/4 v2, 0x0

    :goto_4
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    add-int/lit8 p0, p0, -0x1

    :goto_5
    if-lez p0, :cond_8

    add-int/lit8 v1, v1, 0x1

    shr-int/lit8 p0, p0, 0x1

    goto :goto_5

    :cond_8
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    :cond_9
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result p0

    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    const/16 p0, 0xd

    invoke-virtual {v0, p0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v2

    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    invoke-virtual {v0, p0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result p0

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v2

    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static parseAlacAudioSpecificConfig([B)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0, p0}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    const/16 p0, 0x9

    invoke-virtual {v0, p0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static parseCea708InitializationData(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    if-ne v0, v2, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    aget-byte p0, p0, v1

    if-ne p0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
