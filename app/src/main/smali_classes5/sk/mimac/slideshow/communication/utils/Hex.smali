.class public abstract Lsk/mimac/slideshow/communication/utils/Hex;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DIGITS_LOWER:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lsk/mimac/slideshow/communication/utils/Hex;->DIGITS_LOWER:[C

    return-void

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
.end method

.method public static decodeHex(Ljava/lang/String;)[B
    .locals 6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    div-int/lit8 v3, v2, 0x2

    add-int/lit8 v4, v2, 0x2

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x10

    invoke-static {v2, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    move v2, v4

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static encodeHex([B)[C
    .locals 8

    array-length v0, p0

    shl-int/lit8 v0, v0, 0x1

    new-array v0, v0, [C

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v4, p0, v2

    add-int/lit8 v5, v3, 0x1

    sget-object v6, Lsk/mimac/slideshow/communication/utils/Hex;->DIGITS_LOWER:[C

    and-int/lit16 v7, v4, 0xf0

    ushr-int/lit8 v7, v7, 0x4

    aget-char v7, v6, v7

    aput-char v7, v0, v3

    add-int/lit8 v3, v3, 0x2

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v6, v4

    aput-char v4, v0, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static encodeHexString([B)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lsk/mimac/slideshow/communication/utils/Hex;->encodeHex([B)[C

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
