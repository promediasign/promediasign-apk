.class public abstract Lorg/apache/commons/codec/binary/Hex;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_CHARSET:Ljava/nio/charset/Charset;

.field private static final DIGITS_LOWER:[C

.field private static final DIGITS_UPPER:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    sput-object v0, Lorg/apache/commons/codec/binary/Hex;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    const/16 v0, 0x10

    new-array v1, v0, [C

    fill-array-data v1, :array_0

    sput-object v1, Lorg/apache/commons/codec/binary/Hex;->DIGITS_LOWER:[C

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/commons/codec/binary/Hex;->DIGITS_UPPER:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data

    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public static decodeHex([C[BI)I
    .locals 6

    .line 1
    array-length v0, p0

    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_2

    shr-int/lit8 v1, v0, 0x1

    array-length v2, p1

    sub-int/2addr v2, p2

    if-lt v2, v1, :cond_1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-char v3, p0, v2

    invoke-static {v3, v2}, Lorg/apache/commons/codec/binary/Hex;->toDigit(CI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    add-int/lit8 v4, v2, 0x1

    aget-char v5, p0, v4

    invoke-static {v5, v4}, Lorg/apache/commons/codec/binary/Hex;->toDigit(CI)I

    move-result v4

    or-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x2

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    new-instance p0, Lorg/apache/commons/codec/DecoderException;

    const-string p1, "Output array is not large enough to accommodate decoded data."

    invoke-direct {p0, p1}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lorg/apache/commons/codec/DecoderException;

    const-string p1, "Odd number of characters."

    invoke-direct {p0, p1}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static decodeHex(Ljava/lang/String;)[B
    .locals 0

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/codec/binary/Hex;->decodeHex([C)[B

    move-result-object p0

    return-object p0
.end method

.method public static decodeHex([C)[B
    .locals 2

    .line 3
    array-length v0, p0

    shr-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/codec/binary/Hex;->decodeHex([C[BI)I

    return-object v0
.end method

.method private static encodeHex([BII[C[CI)V
    .locals 4

    .line 1
    move v0, p1

    :goto_0
    add-int v1, p1, p2

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, p5, 0x1

    aget-byte v2, p0, v0

    and-int/lit16 v3, v2, 0xf0

    ushr-int/lit8 v3, v3, 0x4

    aget-char v3, p3, v3

    aput-char v3, p4, p5

    add-int/lit8 p5, p5, 0x2

    and-int/lit8 v2, v2, 0xf

    aget-char v2, p3, v2

    aput-char v2, p4, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static encodeHex([B)[C
    .locals 1

    .line 2
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/commons/codec/binary/Hex;->encodeHex([BZ)[C

    move-result-object p0

    return-object p0
.end method

.method public static encodeHex([BZ)[C
    .locals 0

    .line 3
    if-eqz p1, :cond_0

    sget-object p1, Lorg/apache/commons/codec/binary/Hex;->DIGITS_LOWER:[C

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/apache/commons/codec/binary/Hex;->DIGITS_UPPER:[C

    :goto_0
    invoke-static {p0, p1}, Lorg/apache/commons/codec/binary/Hex;->encodeHex([B[C)[C

    move-result-object p0

    return-object p0
.end method

.method public static encodeHex([B[C)[C
    .locals 7

    .line 4
    array-length v0, p0

    shl-int/lit8 v0, v0, 0x1

    new-array v0, v0, [C

    array-length v3, p0

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v5, v0

    invoke-static/range {v1 .. v6}, Lorg/apache/commons/codec/binary/Hex;->encodeHex([BII[C[CI)V

    return-object v0
.end method

.method public static encodeHexString([B)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lorg/apache/commons/codec/binary/Hex;->encodeHex([B)[C

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static toDigit(CI)I
    .locals 3

    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    new-instance v0, Lorg/apache/commons/codec/DecoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal hexadecimal character "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, " at index "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
