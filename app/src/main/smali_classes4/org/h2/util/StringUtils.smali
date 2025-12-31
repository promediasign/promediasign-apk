.class public Lorg/h2/util/StringUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final HEX:[C

.field private static final HEX_DECODE:[I

.field private static final TO_UPPER_CACHE:[[Ljava/lang/String;

.field private static final TO_UPPER_CACHE_LENGTH:I = 0x800

.field private static final TO_UPPER_CACHE_MAX_ENTRY_LENGTH:I = 0x40

.field private static softCache:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static softCacheCreatedNs:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/h2/util/StringUtils;->softCache:Ljava/lang/ref/SoftReference;

    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/h2/util/StringUtils;->HEX:[C

    const/16 v0, 0x67

    new-array v0, v0, [I

    sput-object v0, Lorg/h2/util/StringUtils;->HEX_DECODE:[I

    const/16 v0, 0x800

    new-array v0, v0, [[Ljava/lang/String;

    sput-object v0, Lorg/h2/util/StringUtils;->TO_UPPER_CACHE:[[Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lorg/h2/util/StringUtils;->HEX_DECODE:[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    const/4 v3, -0x1

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    const/16 v2, 0x9

    if-gt v1, v2, :cond_1

    sget-object v2, Lorg/h2/util/StringUtils;->HEX_DECODE:[I

    add-int/lit8 v3, v1, 0x30

    aput v1, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    const/4 v1, 0x5

    if-gt v0, v1, :cond_2

    sget-object v1, Lorg/h2/util/StringUtils;->HEX_DECODE:[I

    add-int/lit8 v2, v0, 0x61

    add-int/lit8 v3, v0, 0x41

    add-int/lit8 v4, v0, 0xa

    aput v4, v1, v3

    aput v4, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAsterisk(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    const-string v2, "[*]"

    .line 18
    .line 19
    invoke-static {p0, v1, p1, v0, v2}, Ls/a;->h(Ljava/lang/String;IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p0, p1, v0}, Ls/a;->c(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    :cond_0
    return-object p0
.end method

.method public static appendZeroPadded(Ljava/lang/StringBuilder;IJ)V
    .locals 4

    const/4 v0, 0x2

    const/16 v1, 0x30

    if-ne p1, v0, :cond_1

    const-wide/16 v2, 0xa

    cmp-long p1, p2, v2

    if-gez p1, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    sub-int/2addr p1, p3

    :goto_0
    if-lez p1, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    return-void
.end method

.method public static arrayCombine([Ljava/lang/String;C)Ljava/lang/String;
    .locals 9

    new-instance v0, Lorg/h2/util/StatementBuilder;

    invoke-direct {v0}, Lorg/h2/util/StatementBuilder;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, p0, v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    if-nez v4, :cond_0

    const-string v4, ""

    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_3

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x5c

    if-eq v7, v8, :cond_1

    if-ne v7, p1, :cond_2

    :cond_1
    invoke-virtual {v0, v8}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    :cond_2
    invoke-virtual {v0, v7}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static arraySplit(Ljava/lang/String;CZ)[Ljava/lang/String;
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-array p0, v1, [Ljava/lang/String;

    return-object p0

    :cond_1
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_5

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, p1, :cond_3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-eqz p2, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    :cond_2
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_1

    :cond_3
    const/16 v6, 0x5c

    if-ne v5, v6, :cond_4

    add-int/lit8 v6, v0, -0x1

    if-ge v4, v6, :cond_4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :cond_4
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :cond_6
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p0
.end method

.method public static cache(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    sget-boolean v0, Lorg/h2/engine/SysProperties;->OBJECT_CACHE:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    const-string p0, ""

    return-object p0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {}, Lorg/h2/util/StringUtils;->getCache()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    sget v2, Lorg/h2/engine/SysProperties;->OBJECT_CACHE_SIZE:I

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v0, v2

    aget-object v2, v1, v0

    if-eqz v2, :cond_3

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return-object v2

    :cond_3
    aput-object p0, v1, v0

    :cond_4
    return-object p0
.end method

.method public static clearCache()V
    .locals 2

    new-instance v0, Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/h2/util/StringUtils;->softCache:Ljava/lang/ref/SoftReference;

    return-void
.end method

.method public static cloneCharArray([C)[C
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    return-object p0

    :cond_1
    new-array v1, v0, [C

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public static convertBytesToHex([B)Ljava/lang/String;
    .locals 1

    .line 1
    array-length v0, p0

    invoke-static {p0, v0}, Lorg/h2/util/StringUtils;->convertBytesToHex([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static convertBytesToHex([BI)Ljava/lang/String;
    .locals 6

    .line 2
    add-int v0, p1, p1

    new-array v0, v0, [C

    sget-object v1, Lorg/h2/util/StringUtils;->HEX:[C

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    aget-byte v3, p0, v2

    and-int/lit16 v4, v3, 0xff

    add-int v5, v2, v2

    shr-int/lit8 v4, v4, 0x4

    aget-char v4, v1, v4

    aput-char v4, v0, v5

    add-int/lit8 v5, v5, 0x1

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v1, v3

    aput-char v3, v0, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static convertHexToBytes(Ljava/lang/String;)[B
    .locals 8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_2

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    sget-object v2, Lorg/h2/util/StringUtils;->HEX_DECODE:[I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const v5, 0x15f94

    if-ge v3, v0, :cond_0

    add-int v6, v3, v3

    :try_start_0
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    aget v7, v2, v7

    shl-int/lit8 v7, v7, 0x4

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aget v6, v2, v6

    or-int/2addr v6, v7

    or-int/2addr v4, v6

    int-to-byte v6, v6

    aput-byte v6, v1, v3
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    invoke-static {v5, p0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    :cond_0
    and-int/lit16 v0, v4, -0x100

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-static {v5, p0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    :cond_2
    const v0, 0x15f93

    invoke-static {v0, p0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method public static enclose(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "("

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    const-string v1, ")"

    .line 11
    .line 12
    invoke-static {v0, p0, v1}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static equals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static escapeMetaDataPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "\\"

    const-string v1, "\\\\"

    invoke-static {p0, v0, v1}, Lorg/h2/util/StringUtils;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method private static getCache()[Ljava/lang/String;
    .locals 7

    sget-object v0, Lorg/h2/util/StringUtils;->softCache:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sget-wide v2, Lorg/h2/util/StringUtils;->softCacheCreatedNs:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    sub-long/2addr v0, v2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x5

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    :try_start_0
    sget v0, Lorg/h2/engine/SysProperties;->OBJECT_CACHE_SIZE:I

    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lorg/h2/util/StringUtils;->softCache:Ljava/lang/ref/SoftReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    sput-wide v1, Lorg/h2/util/StringUtils;->softCacheCreatedNs:J

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    sput-wide v1, Lorg/h2/util/StringUtils;->softCacheCreatedNs:J

    throw v0
.end method

.method private static getFormatException(Ljava/lang/String;I)Lorg/h2/message/DbException;
    .locals 1

    const v0, 0x15fef

    invoke-static {p0, p1}, Lorg/h2/util/StringUtils;->addAsterisk(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    return-object p0
.end method

.method public static indent(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/h2/util/StringUtils;->indent(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static indent(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 6

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, p1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xa

    if-ge v2, v3, :cond_2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, p1, :cond_0

    const/16 v5, 0x20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-gez v3, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    :goto_2
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v3

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    const-string p1, "\n"

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isNullOrEmpty(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isNumber(Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    array-length v0, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-char v3, p0, v2

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static javaDecode(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_a

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_0

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_9

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x22

    if-eq v5, v6, :cond_7

    const/16 v6, 0x23

    if-eq v5, v6, :cond_7

    const/16 v6, 0x3a

    if-eq v5, v6, :cond_7

    const/16 v6, 0x3d

    if-eq v5, v6, :cond_7

    if-eq v5, v4, :cond_8

    const/16 v4, 0x62

    const/16 v6, 0x8

    if-eq v5, v4, :cond_7

    const/16 v4, 0x66

    if-eq v5, v4, :cond_6

    const/16 v4, 0x6e

    if-eq v5, v4, :cond_5

    const/16 v4, 0x72

    if-eq v5, v4, :cond_4

    const/16 v4, 0x74

    if-eq v5, v4, :cond_3

    const/16 v4, 0x75

    if-eq v5, v4, :cond_2

    const/16 v4, 0x30

    if-lt v5, v4, :cond_1

    const/16 v4, 0x39

    if-gt v5, v4, :cond_1

    add-int/lit8 v4, v2, 0x4

    :try_start_0
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-char v3, v3

    add-int/lit8 v2, v2, 0x3

    :cond_0
    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    :catch_0
    invoke-static {p0, v3}, Lorg/h2/util/StringUtils;->getFormatException(Ljava/lang/String;I)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    :cond_1
    invoke-static {p0, v3}, Lorg/h2/util/StringUtils;->getFormatException(Ljava/lang/String;I)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    :cond_2
    add-int/lit8 v4, v2, 0x2

    add-int/lit8 v5, v2, 0x6

    :try_start_1
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    int-to-char v3, v3

    add-int/lit8 v2, v2, 0x5

    goto :goto_1

    :catch_1
    invoke-static {p0, v3}, Lorg/h2/util/StringUtils;->getFormatException(Ljava/lang/String;I)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    :cond_3
    const/16 v2, 0x9

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_4
    const/16 v2, 0xd

    goto :goto_2

    :cond_5
    const/16 v2, 0xa

    goto :goto_2

    :cond_6
    const/16 v2, 0xc

    goto :goto_2

    :cond_7
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_8
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    move v2, v3

    goto :goto_4

    :cond_9
    invoke-static {p0, v2}, Lorg/h2/util/StringUtils;->getFormatException(Ljava/lang/String;I)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static javaEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_8

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_7

    const/16 v4, 0xa

    if-eq v3, v4, :cond_6

    const/16 v4, 0xc

    if-eq v3, v4, :cond_5

    const/16 v4, 0xd

    if-eq v3, v4, :cond_4

    const/16 v4, 0x22

    if-eq v3, v4, :cond_3

    const/16 v4, 0x5c

    if-eq v3, v4, :cond_2

    const v4, 0xffff

    and-int/2addr v4, v3

    const/16 v5, 0x20

    if-lt v4, v5, :cond_0

    const/16 v5, 0x80

    if-ge v4, v5, :cond_0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_0
    const-string v3, "\\u"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    :goto_1
    const/4 v5, 0x4

    if-ge v4, v5, :cond_1

    const/16 v5, 0x30

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_2
    const-string v3, "\\\\"

    goto :goto_2

    :cond_3
    const-string v3, "\\\""

    goto :goto_2

    :cond_4
    const-string v3, "\\r"

    goto :goto_2

    :cond_5
    const-string v3, "\\f"

    goto :goto_2

    :cond_6
    const-string v3, "\\n"

    goto :goto_2

    :cond_7
    const-string v3, "\\t"

    goto :goto_2

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static pad(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p1, v1, :cond_1

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne p1, v1, :cond_2

    return-object p0

    :cond_2
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result p2

    goto :goto_1

    :cond_4
    :goto_0
    const/16 p2, 0x20

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr p1, v2

    if-eqz p3, :cond_5

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    :goto_2
    if-ge v0, p1, :cond_6

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    if-nez p3, :cond_7

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v2, :cond_0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static quoteJavaIntArray([I)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    :cond_0
    new-instance v0, Lorg/h2/util/StatementBuilder;

    const-string v1, "new int[]{"

    invoke-direct {v0, v1}, Lorg/h2/util/StatementBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p0, v2

    const-string v4, ", "

    invoke-virtual {v0, v4}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Lorg/h2/util/StatementBuilder;->append(J)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static quoteJavaString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lorg/h2/util/StringUtils;->javaEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static quoteJavaStringArray([Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    :cond_0
    new-instance v0, Lorg/h2/util/StatementBuilder;

    const-string v1, "new String[]{"

    invoke-direct {v0, v1}, Lorg/h2/util/StatementBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    const-string v4, ", "

    invoke-virtual {v0, v4}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    invoke-static {v3}, Lorg/h2/util/StringUtils;->quoteJavaString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static quoteRemarkSQL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "*/"

    const-string v1, "++/"

    invoke-static {p0, v0, v1}, Lorg/h2/util/StringUtils;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "/*"

    const-string v1, "/++"

    invoke-static {p0, v0, v1}, Lorg/h2/util/StringUtils;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static quoteStringSQL(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const-string p0, "NULL"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_4

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v2, :cond_1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const/16 v5, 0x20

    if-lt v4, v5, :cond_3

    const/16 v5, 0x7f

    if-le v4, v5, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "STRINGDECODE("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lorg/h2/util/StringUtils;->javaEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/h2/util/StringUtils;->quoteStringSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gez v0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    sub-int/2addr v2, v3

    .line 19
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    add-int/2addr v3, v2

    .line 24
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 25
    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    :cond_1
    invoke-static {p0, v2, v0, v1, p2}, Ls/a;->h(Ljava/lang/String;IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    add-int/2addr v2, v0

    .line 36
    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-gez v0, :cond_1

    .line 41
    .line 42
    invoke-static {p0, v2, v1}, Ls/a;->c(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method

.method public static startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static toLowerEnglish(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-le v0, v1, :cond_0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    and-int/lit16 v0, v0, 0x7ff

    sget-object v1, Lorg/h2/util/StringUtils;->TO_UPPER_CACHE:[[Ljava/lang/String;

    aget-object v2, v1, v0

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    aget-object p0, v2, p0

    return-object p0

    :cond_1
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {p0, v2}, [Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v0

    return-object v2
.end method

.method public static trim(Ljava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result p3

    goto :goto_1

    :cond_1
    :goto_0
    const/16 p3, 0x20

    :goto_1
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, p1, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, p3, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_4
    :goto_3
    if-eqz p2, :cond_7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v1

    move p2, p1

    :goto_4
    if-ltz p2, :cond_5

    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, p3, :cond_5

    add-int/lit8 p2, p2, -0x1

    goto :goto_4

    :cond_5
    if-ne p2, p1, :cond_6

    goto :goto_5

    :cond_6
    add-int/2addr p2, v1

    invoke-virtual {p0, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_7
    :goto_5
    return-object p0
.end method

.method public static unEnclose(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "("

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, ")"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    invoke-static {p0, v0, v0}, LA/g;->e(Ljava/lang/String;II)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    :cond_0
    return-object p0
.end method

.method public static urlDecode(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v0, :cond_4

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2b

    const/16 v7, 0x20

    if-ne v5, v6, :cond_0

    add-int/lit8 v5, v4, 0x1

    aput-byte v7, v1, v4

    :goto_1
    move v4, v5

    goto :goto_3

    :cond_0
    const/16 v6, 0x25

    if-ne v5, v6, :cond_1

    add-int/lit8 v5, v4, 0x1

    add-int/lit8 v6, v3, 0x1

    add-int/lit8 v7, v3, 0x3

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v1, v4

    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_1
    sget-boolean v6, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v6, :cond_3

    const/16 v6, 0x7f

    if-gt v5, v6, :cond_2

    if-lt v5, v7, :cond_2

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected char "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " decoding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_2
    add-int/lit8 v6, v4, 0x1

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    move v4, v6

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/lang/String;

    sget-object v0, Lorg/h2/engine/Constants;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {p0, v1, v2, v4, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object p0
.end method

.method public static urlEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method public static xmlAttr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, " "

    .line 2
    .line 3
    const-string v1, "=\""

    .line 4
    .line 5
    invoke-static {v0, p0, v1}, LA/g;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p1}, Lorg/h2/util/StringUtils;->xmlText(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p1, "\""

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public static xmlCData(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "]]>"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-static {p0}, Lorg/h2/util/StringUtils;->xmlText(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    const-string v1, "\n"

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const-string v3, "<![CDATA["

    .line 21
    .line 22
    invoke-static {v3, p0, v0}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    invoke-static {p0, v1}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    :cond_1
    return-object p0
.end method

.method public static xmlComment(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    const-string v2, "--"

    .line 4
    .line 5
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-gez v1, :cond_1

    .line 10
    .line 11
    const/16 v0, 0xa

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-ltz v0, :cond_0

    .line 18
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v1, "<!--\n"

    .line 22
    .line 23
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p0}, Lorg/h2/util/StringUtils;->indent(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p0, "-->\n"

    .line 34
    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0

    .line 43
    :cond_0
    const-string v0, "<!-- "

    .line 44
    .line 45
    const-string v1, " -->\n"

    .line 46
    .line 47
    invoke-static {v0, p0, v1}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0

    .line 52
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    add-int/lit8 v3, v1, 0x1

    .line 58
    .line 59
    const-string v4, " "

    .line 60
    .line 61
    invoke-static {p0, v0, v3, v2, v4}, Ls/a;->h(Ljava/lang/String;IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-static {p0, v3, v2}, Ls/a;->c(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    goto :goto_0
.end method

.method public static xmlNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/h2/util/StringUtils;->xmlNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static xmlNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    move-object p1, p0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0, p1}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    :goto_0
    const-string v0, "<"

    if-nez p2, :cond_1

    const-string p0, "/>\n"

    .line 4
    invoke-static {v0, p1, p0}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-eqz p3, :cond_2

    const/16 p3, 0xa

    .line 5
    invoke-virtual {p2, p3}, Ljava/lang/String;->indexOf(I)I

    move-result p3

    if-ltz p3, :cond_2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lorg/h2/util/StringUtils;->indent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_2
    const-string p3, ">"

    const-string v1, "</"

    .line 6
    invoke-static {v0, p1, p3, p2, v1}, Lorg/apache/ftpserver/main/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 7
    const-string p2, ">\n"

    .line 8
    invoke-static {p0, p2, p1}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static xmlStartDoc()Ljava/lang/String;
    .locals 1

    const-string v0, "<?xml version=\"1.0\"?>\n"

    return-object v0
.end method

.method public static xmlText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/h2/util/StringUtils;->xmlText(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static xmlText(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_8

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_0

    const/16 v4, 0xa

    const/16 v5, 0x3b

    const-string v6, "&#x"

    if-eq v3, v4, :cond_7

    const/16 v4, 0xd

    if-eq v3, v4, :cond_7

    const/16 v4, 0x22

    if-eq v3, v4, :cond_6

    const/16 v4, 0x3c

    if-eq v3, v4, :cond_5

    const/16 v4, 0x3e

    if-eq v3, v4, :cond_4

    const/16 v4, 0x26

    if-eq v3, v4, :cond_3

    const/16 v4, 0x27

    if-eq v3, v4, :cond_2

    const/16 v4, 0x20

    if-lt v3, v4, :cond_1

    const/16 v4, 0x7f

    if-le v3, v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_1
    :goto_1
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_2
    const-string v3, "&apos;"

    :goto_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    const-string v3, "&amp;"

    goto :goto_2

    :cond_4
    const-string v3, "&gt;"

    goto :goto_2

    :cond_5
    const-string v3, "&lt;"

    goto :goto_2

    :cond_6
    const-string v3, "&quot;"

    goto :goto_2

    :cond_7
    if-eqz p1, :cond_0

    goto :goto_1

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
