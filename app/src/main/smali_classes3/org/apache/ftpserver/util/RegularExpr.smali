.class public Lorg/apache/ftpserver/util/RegularExpr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private pattern:[C


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Lorg/apache/ftpserver/util/RegularExpr;->pattern:[C

    return-void
.end method

.method private isMatch([CII)Z
    .locals 11

    .line 2
    :goto_0
    iget-object v0, p0, Lorg/apache/ftpserver/util/RegularExpr;->pattern:[C

    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt p3, v1, :cond_1

    array-length p1, p1

    if-ne p2, p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    return v2

    :cond_1
    add-int/lit8 v1, p3, 0x1

    aget-char p3, v0, p3

    const/16 v4, 0x2a

    if-eq p3, v4, :cond_13

    const/16 v0, 0x3f

    if-eq p3, v0, :cond_11

    const/16 v0, 0x5b

    if-eq p3, v0, :cond_4

    array-length v0, p1

    if-lt p2, v0, :cond_2

    return v3

    :cond_2
    add-int/lit8 v0, p2, 0x1

    aget-char p2, p1, p2

    if-eq p2, p3, :cond_3

    return v3

    :cond_3
    move p2, v0

    :goto_2
    move p3, v1

    goto :goto_0

    :cond_4
    array-length p3, p1

    if-lt p2, p3, :cond_5

    return v3

    :cond_5
    add-int/lit8 p3, p2, 0x1

    aget-char v0, p1, p2

    const/4 p2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_3
    iget-object v7, p0, Lorg/apache/ftpserver/util/RegularExpr;->pattern:[C

    array-length v8, v7

    if-lt v1, v8, :cond_6

    return v3

    :cond_6
    add-int/lit8 v8, v1, 0x1

    aget-char v9, v7, v1

    const/16 v10, 0x5d

    if-ne v9, v10, :cond_a

    if-eqz v4, :cond_7

    goto :goto_4

    :cond_7
    move v2, p2

    :goto_4
    if-eqz v5, :cond_8

    if-eqz v2, :cond_9

    return v3

    :cond_8
    if-nez v2, :cond_9

    return v3

    :cond_9
    move p2, p3

    move p3, v8

    goto :goto_0

    :cond_a
    if-eqz p2, :cond_b

    move v1, v8

    goto :goto_3

    :cond_b
    const/16 v10, 0x5e

    if-ne v9, v10, :cond_c

    if-eqz v4, :cond_c

    move v1, v8

    const/4 v5, 0x1

    goto :goto_3

    :cond_c
    const/16 p2, 0x2d

    if-ne v9, p2, :cond_f

    array-length p2, v7

    if-lt v8, p2, :cond_d

    return v3

    :cond_d
    add-int/lit8 v1, v1, 0x2

    aget-char v9, v7, v8

    if-lt v0, v6, :cond_e

    if-gt v0, v9, :cond_e

    const/4 p2, 0x1

    goto :goto_5

    :cond_e
    const/4 p2, 0x0

    :goto_5
    move v6, v9

    const/4 v4, 0x0

    goto :goto_3

    :cond_f
    if-ne v9, v0, :cond_10

    const/4 p2, 0x1

    goto :goto_6

    :cond_10
    const/4 p2, 0x0

    :goto_6
    move v1, v8

    goto :goto_5

    :cond_11
    array-length p3, p1

    if-lt p2, p3, :cond_12

    return v3

    :cond_12
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_13
    array-length p3, v0

    if-lt v1, p3, :cond_14

    return v2

    :cond_14
    :goto_7
    add-int/lit8 p3, p2, 0x1

    invoke-direct {p0, p1, p2, v1}, Lorg/apache/ftpserver/util/RegularExpr;->isMatch([CII)Z

    move-result p2

    if-eqz p2, :cond_15

    return v2

    :cond_15
    array-length p2, p1

    if-lt p3, p2, :cond_16

    return v3

    :cond_16
    move p2, p3

    goto :goto_7
.end method


# virtual methods
.method public isMatch(Ljava/lang/String;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/apache/ftpserver/util/RegularExpr;->pattern:[C

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    aget-char v0, v0, v2

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_0

    return v3

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-direct {p0, p1, v2, v2}, Lorg/apache/ftpserver/util/RegularExpr;->isMatch([CII)Z

    move-result p1

    return p1
.end method
