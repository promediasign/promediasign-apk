.class public Lorg/apache/poi/util/StringUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/util/StringUtil$StringsIterator;
    }
.end annotation

.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field public static final BIG5:Ljava/nio/charset/Charset;

.field protected static final ISO_8859_1:Ljava/nio/charset/Charset;

.field public static final UTF16LE:Ljava/nio/charset/Charset;

.field public static final UTF8:Ljava/nio/charset/Charset;

.field public static final WIN_1252:Ljava/nio/charset/Charset;

.field private static final logger:Lorg/apache/poi/util/POILogger;

.field private static msCodepointToUnicode:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final symbolMap_f020:[I

.field private static final symbolMap_f0a0:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/apache/poi/util/StringUtil;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/util/StringUtil;->logger:Lorg/apache/poi/util/POILogger;

    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/util/StringUtil;->ISO_8859_1:Ljava/nio/charset/Charset;

    const-string v0, "UTF-16LE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/util/StringUtil;->UTF16LE:Ljava/nio/charset/Charset;

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/util/StringUtil;->UTF8:Ljava/nio/charset/Charset;

    const-string v0, "cp1252"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/util/StringUtil;->WIN_1252:Ljava/nio/charset/Charset;

    const-string v0, "Big5"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/util/StringUtil;->BIG5:Ljava/nio/charset/Charset;

    const/16 v0, 0x60

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lorg/apache/poi/util/StringUtil;->symbolMap_f020:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/poi/util/StringUtil;->symbolMap_f0a0:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x20
        0x21
        0x2200
        0x23
        0x2203
        0x25
        0x26
        0x220d
        0x28
        0x29
        0x2217
        0x2b
        0x2c
        0x2212
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        0x3e
        0x3f
        0x2245
        0x391
        0x392
        0x3a7
        0x394
        0x395
        0x3a6
        0x393
        0x397
        0x399
        0x3d1
        0x39a
        0x39b
        0x39c
        0x39d
        0x39f
        0x3a0
        0x398
        0x3a1
        0x3a3
        0x3a4
        0x3a5
        0x3c2
        0x3a9
        0x39e
        0x3a8
        0x396
        0x5b
        0x223d
        0x5d
        0x22a5
        0x5f
        0x20
        0x3b1
        0x3b2
        0x3c7
        0x3b4
        0x3b5
        0x3c6
        0x3b3
        0x3b7
        0x3b9
        0x3d5
        0x3ba
        0x3bb
        0x3bc
        0x3bd
        0x3bf
        0x3c0
        0x3b8
        0x3c1
        0x3c3
        0x3c4
        0x3c5
        0x3d6
        0x3c9
        0x3be
        0x3c8
        0x3b6
        0x7b
        0x7c
        0x7d
        0x223c
        0x20
    .end array-data

    :array_1
    .array-data 4
        0x20ac
        0x3d2
        0x2032
        0x2264
        0x2044
        0x221e
        0x192
        0x2663
        0x2666
        0x2665
        0x2660
        0x2194
        0x218f
        0x2191
        0x2192
        0x2193
        0xb0
        0xb1
        0x2033
        0x2265
        0xd7
        0xb5
        0x2202
        0x2219
        0xf7
        0x2260
        0x2261
        0x2248
        0x2026
        0x23d0
        0x23af
        0x21b5
        0x2135
        0x211b
        0x211c
        0x2118
        0x2297
        0x2295
        0x2205
        0x2229
        0x222a
        0x2283
        0x2287
        0x2284
        0x2282
        0x2286
        0x2208
        0x2209
        0x2220
        0x2207
        0xae
        0xa9
        0x2122
        0x220f
        0x221a
        0x22c5
        0xac
        0x2227
        0x2228
        0x21d4
        0x21d0
        0x21d1
        0x21d2
        0x21d3
        0x25ca
        0x2329
        0xae
        0xa9
        0x2122
        0x2211
        0x239b
        0x239c
        0x239d
        0x23a1
        0x23a2
        0x23a3
        0x23a7
        0x23a8
        0x23a9
        0x23aa
        0x20
        0x232a
        0x222b
        0x2320
        0x23ae
        0x2321
        0x239e
        0x239f
        0x23a0
        0x23a4
        0x23a5
        0x23a6
        0x23ab
        0x23ac
        0x23ad
        0x20
    .end array-data
.end method

.method public static countMatches(Ljava/lang/CharSequence;C)I
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v3, p1, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public static endsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v2, v0, v5

    const/4 v1, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public static getEncodedSize(Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p0}, Lorg/apache/poi/util/StringUtil;->hasMultibyte(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    mul-int v0, v0, p0

    add-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public static getFromCompressedUnicode([BII)Ljava/lang/String;
    .locals 2

    array-length v0, p0

    sub-int/2addr v0, p1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lorg/apache/poi/util/StringUtil;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static getFromUnicodeLE([B)Ljava/lang/String;
    .locals 2

    .line 1
    array-length v0, p0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    array-length v0, p0

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/apache/poi/util/StringUtil;->getFromUnicodeLE([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFromUnicodeLE([BII)Ljava/lang/String;
    .locals 2

    if-ltz p1, :cond_1

    array-length v0, p0

    if-ge p1, v0, :cond_1

    if-ltz p2, :cond_0

    array-length v0, p0

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    if-lt v0, p2, :cond_0

    new-instance v0, Ljava/lang/String;

    mul-int/lit8 p2, p2, 0x2

    sget-object v1, Lorg/apache/poi/util/StringUtil;->UTF16LE:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illegal length "

    .line 2
    invoke-static {p2, p1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p2, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v0, "Illegal offset "

    const-string v1, " (String data is of length "

    .line 4
    invoke-static {p1, v0, v1}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 5
    array-length p0, p0

    const-string v0, ")"

    .line 6
    invoke-static {v0, p0, p1}, Lorg/apache/ftpserver/main/a;->g(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    .line 7
    invoke-direct {p2, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static getPreferredEncoding()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/poi/util/StringUtil;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getToUnicodeLE(Ljava/lang/String;)[B
    .locals 1

    sget-object v0, Lorg/apache/poi/util/StringUtil;->UTF16LE:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method public static hasMultibyte(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-char v3, p0, v2

    const/16 v4, 0xff

    if-le v3, v4, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private static declared-synchronized initMsCodepointMap()V
    .locals 9

    const-class v0, Lorg/apache/poi/util/StringUtil;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/apache/poi/util/StringUtil;->msCodepointToUnicode:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/apache/poi/util/StringUtil;->msCodepointToUnicode:Ljava/util/Map;

    sget-object v1, Lorg/apache/poi/util/StringUtil;->symbolMap_f020:[I

    array-length v2, v1

    const/4 v3, 0x0

    const v4, 0xf020

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_1

    aget v6, v1, v5

    sget-object v7, Lorg/apache/poi/util/StringUtil;->msCodepointToUnicode:Ljava/util/Map;

    add-int/lit8 v8, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    move v4, v8

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    sget-object v1, Lorg/apache/poi/util/StringUtil;->symbolMap_f0a0:[I

    array-length v2, v1

    const v4, 0xf0a0

    :goto_1
    if-ge v3, v2, :cond_2

    aget v5, v1, v3

    sget-object v6, Lorg/apache/poi/util/StringUtil;->msCodepointToUnicode:Ljava/util/Map;

    add-int/lit8 v7, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v3, v3, 0x1

    move v4, v7

    goto :goto_1

    :cond_2
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0

    throw v1
.end method

.method public static isUnicodeString(Ljava/lang/String;)Z
    .locals 3

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lorg/apache/poi/util/StringUtil;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static varargs join(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 1
    invoke-static {p1, p0}, Lorg/apache/poi/util/StringUtil;->join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static join([Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 2
    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 3
    if-eqz p0, :cond_2

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    const-string p0, ""

    return-object p0
.end method

.method public static declared-synchronized mapMsCodepoint(II)V
    .locals 2

    const-class v0, Lorg/apache/poi/util/StringUtil;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lorg/apache/poi/util/StringUtil;->initMsCodepointMap()V

    sget-object v1, Lorg/apache/poi/util/StringUtil;->msCodepointToUnicode:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static mapMsCodepointString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    if-eqz p0, :cond_3

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {}, Lorg/apache/poi/util/StringUtil;->initMsCodepointMap()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lorg/apache/poi/util/StringUtil;->msCodepointToUnicode:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    move-object v4, v5

    :goto_1
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_3
    :goto_2
    return-object p0
.end method

.method public static putCompressedUnicode(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/poi/util/StringUtil;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    return-void
.end method

.method public static putCompressedUnicode(Ljava/lang/String;[BI)V
    .locals 2

    .line 2
    sget-object v0, Lorg/apache/poi/util/StringUtil;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static putUnicodeLE(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/poi/util/StringUtil;->UTF16LE:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    return-void
.end method

.method public static putUnicodeLE(Ljava/lang/String;[BI)V
    .locals 2

    .line 2
    sget-object v0, Lorg/apache/poi/util/StringUtil;->UTF16LE:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static readCompressedUnicode(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;
    .locals 1

    new-array p1, p1, [B

    invoke-interface {p0, p1}, Lorg/apache/poi/util/LittleEndianInput;->readFully([B)V

    new-instance p0, Ljava/lang/String;

    sget-object v0, Lorg/apache/poi/util/StringUtil;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p0
.end method

.method public static readUnicodeLE(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;
    .locals 1

    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [B

    invoke-interface {p0, p1}, Lorg/apache/poi/util/LittleEndianInput;->readFully([B)V

    new-instance p0, Ljava/lang/String;

    sget-object v0, Lorg/apache/poi/util/StringUtil;->UTF16LE:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p0
.end method

.method public static readUnicodeString(Lorg/apache/poi/util/LittleEndianInput;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-interface {p0}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v0

    invoke-interface {p0}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    invoke-static {p0, v0}, Lorg/apache/poi/util/StringUtil;->readCompressedUnicode(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0, v0}, Lorg/apache/poi/util/StringUtil;->readUnicodeLE(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static readUnicodeString(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;
    .locals 1

    .line 2
    invoke-interface {p0}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lorg/apache/poi/util/StringUtil;->readCompressedUnicode(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0, p1}, Lorg/apache/poi/util/StringUtil;->readUnicodeLE(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public static writeUnicodeString(Lorg/apache/poi/util/LittleEndianOutput;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-interface {p0, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-static {p1}, Lorg/apache/poi/util/StringUtil;->hasMultibyte(Ljava/lang/String;)Z

    move-result v0

    invoke-interface {p0, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    if-eqz v0, :cond_0

    invoke-static {p1, p0}, Lorg/apache/poi/util/StringUtil;->putUnicodeLE(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    goto :goto_0

    :cond_0
    invoke-static {p1, p0}, Lorg/apache/poi/util/StringUtil;->putCompressedUnicode(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    :goto_0
    return-void
.end method

.method public static writeUnicodeStringFlagAndData(Lorg/apache/poi/util/LittleEndianOutput;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lorg/apache/poi/util/StringUtil;->hasMultibyte(Ljava/lang/String;)Z

    move-result v0

    invoke-interface {p0, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    if-eqz v0, :cond_0

    invoke-static {p1, p0}, Lorg/apache/poi/util/StringUtil;->putUnicodeLE(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    goto :goto_0

    :cond_0
    invoke-static {p1, p0}, Lorg/apache/poi/util/StringUtil;->putCompressedUnicode(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    :goto_0
    return-void
.end method
