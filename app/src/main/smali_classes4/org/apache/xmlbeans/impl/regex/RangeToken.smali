.class final Lorg/apache/xmlbeans/impl/regex/RangeToken;
.super Lorg/apache/xmlbeans/impl/regex/Token;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field compacted:Z

.field icaseCache:Lorg/apache/xmlbeans/impl/regex/RangeToken;

.field map:[I

.field nonMapIndex:I

.field ranges:[I

.field sorted:Z


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/regex/Token;-><init>(I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->icaseCache:Lorg/apache/xmlbeans/impl/regex/RangeToken;

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->map:[I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->setSorted(Z)V

    return-void
.end method

.method public static complementRanges(Lorg/apache/xmlbeans/impl/regex/Token;)Lorg/apache/xmlbeans/impl/regex/Token;
    .locals 11

    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/Token;->type:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Token#complementRanges(): must be RANGE: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lorg/apache/xmlbeans/impl/regex/Token;->type:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    check-cast p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->sortRanges()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->compactRanges()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    array-length v1, v0

    add-int/lit8 v2, v1, 0x2

    const/4 v3, 0x0

    aget v4, v0, v3

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    array-length v2, v0

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    aget v0, v0, v2

    const v2, 0x10ffff

    if-ne v0, v2, :cond_3

    add-int/lit8 v1, v1, -0x2

    :cond_3
    invoke-static {}, Lorg/apache/xmlbeans/impl/regex/Token;->createRange()Lorg/apache/xmlbeans/impl/regex/RangeToken;

    move-result-object v5

    new-array v1, v1, [I

    iput-object v1, v5, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    iget-object v6, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    aget v7, v6, v3

    const/4 v8, 0x2

    if-lez v7, :cond_4

    aput v3, v1, v3

    aget v3, v6, v3

    sub-int/2addr v3, v4

    aput v3, v1, v4

    const/4 v3, 0x2

    :cond_4
    const/4 v1, 0x1

    :goto_2
    iget-object v6, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    array-length v7, v6

    sub-int/2addr v7, v8

    if-ge v1, v7, :cond_5

    iget-object v7, v5, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    add-int/lit8 v9, v3, 0x1

    aget v10, v6, v1

    add-int/2addr v10, v4

    aput v10, v7, v3

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v10, v1, 0x1

    aget v6, v6, v10

    sub-int/2addr v6, v4

    aput v6, v7, v9

    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    :cond_5
    if-eq v0, v2, :cond_6

    iget-object p0, v5, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    add-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v4

    aput v0, p0, v3

    aput v2, p0, v1

    :cond_6
    invoke-direct {v5}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->setCompacted()V

    return-object v5
.end method

.method private createMap()V
    .locals 10

    const/16 v0, 0x8

    new-array v1, v0, [I

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    array-length v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_0

    aput v3, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    array-length v4, v0

    if-ge v3, v4, :cond_4

    aget v4, v0, v3

    add-int/lit8 v5, v3, 0x1

    aget v0, v0, v5

    const/16 v5, 0x100

    if-ge v4, v5, :cond_3

    :goto_2
    if-gt v4, v0, :cond_1

    if-ge v4, v5, :cond_1

    div-int/lit8 v6, v4, 0x20

    aget v7, v1, v6

    and-int/lit8 v8, v4, 0x1f

    const/4 v9, 0x1

    shl-int v8, v9, v8

    or-int/2addr v7, v8

    aput v7, v1, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    if-lt v0, v5, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_3
    :goto_3
    move v2, v3

    :cond_4
    iput v2, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->nonMapIndex:I

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->map:[I

    return-void
.end method

.method private static escapeCharInCharClass(I)Ljava/lang/String;
    .locals 3

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    if-eq p0, v0, :cond_7

    .line 4
    .line 5
    const/16 v0, 0xa

    .line 6
    .line 7
    if-eq p0, v0, :cond_6

    .line 8
    .line 9
    const/16 v0, 0xc

    .line 10
    .line 11
    if-eq p0, v0, :cond_5

    .line 12
    .line 13
    const/16 v0, 0xd

    .line 14
    .line 15
    if-eq p0, v0, :cond_4

    .line 16
    .line 17
    const/16 v0, 0x1b

    .line 18
    .line 19
    if-eq p0, v0, :cond_3

    .line 20
    .line 21
    const/16 v0, 0x2c

    .line 22
    .line 23
    if-eq p0, v0, :cond_2

    .line 24
    .line 25
    const/16 v0, 0x2d

    .line 26
    .line 27
    if-eq p0, v0, :cond_2

    .line 28
    .line 29
    packed-switch p0, :pswitch_data_0

    .line 30
    .line 31
    .line 32
    const/16 v0, 0x20

    .line 33
    .line 34
    const-string v1, "0"

    .line 35
    .line 36
    if-ge p0, v0, :cond_0

    .line 37
    .line 38
    new-instance v0, Ljava/lang/StringBuffer;

    .line 39
    .line 40
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-static {p0, v0}, Lorg/apache/ftpserver/main/a;->f(ILjava/lang/StringBuffer;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    new-instance v0, Ljava/lang/StringBuffer;

    .line 48
    .line 49
    const-string v1, "\\x"

    .line 50
    .line 51
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    add-int/lit8 v1, v1, -0x2

    .line 59
    .line 60
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    .line 70
    .line 71
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    goto :goto_3

    .line 76
    :cond_0
    const/high16 v0, 0x10000

    .line 77
    .line 78
    if-lt p0, v0, :cond_1

    .line 79
    .line 80
    new-instance v0, Ljava/lang/StringBuffer;

    .line 81
    .line 82
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-static {p0, v0}, Lorg/apache/ftpserver/main/a;->f(ILjava/lang/StringBuffer;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    new-instance v0, Ljava/lang/StringBuffer;

    .line 90
    .line 91
    const-string v1, "\\v"

    .line 92
    .line 93
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    add-int/lit8 v1, v1, -0x6

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 104
    .line 105
    const-string v1, ""

    .line 106
    .line 107
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    :goto_2
    int-to-char p0, p0

    .line 111
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_2
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuffer;

    .line 116
    .line 117
    const-string v1, "\\"

    .line 118
    .line 119
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_3
    const-string p0, "\\e"

    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_4
    const-string p0, "\\r"

    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_5
    const-string p0, "\\f"

    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_6
    const-string p0, "\\n"

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_7
    const-string p0, "\\t"

    .line 136
    .line 137
    :goto_3
    return-object p0

    .line 138
    nop

    .line 139
    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private final isCompacted()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->compacted:Z

    return v0
.end method

.method private final isSorted()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->sorted:Z

    return v0
.end method

.method private final setCompacted()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->compacted:Z

    return-void
.end method

.method private final setSorted(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->sorted:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->compacted:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public addRange(II)V
    .locals 7

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->icaseCache:Lorg/apache/xmlbeans/impl/regex/RangeToken;

    if-gt p1, p2, :cond_0

    goto :goto_0

    :cond_0
    move v6, p2

    move p2, p1

    move p1, v6

    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    aput p1, v0, v1

    aput p2, v0, v2

    invoke-direct {p0, v2}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->setSorted(Z)V

    goto :goto_1

    :cond_1
    array-length v3, v0

    add-int/lit8 v4, v3, -0x1

    aget v5, v0, v4

    add-int/2addr v5, v2

    if-ne v5, p1, :cond_2

    aput p2, v0, v4

    return-void

    :cond_2
    add-int/lit8 v2, v3, 0x2

    new-array v2, v2, [I

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    aget v0, v2, v4

    if-lt v0, p1, :cond_3

    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->setSorted(Z)V

    :cond_3
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    add-int/lit8 v1, v3, 0x1

    aput p1, v0, v3

    aput p2, v0, v1

    iget-boolean p1, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->sorted:Z

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->sortRanges()V

    :cond_4
    :goto_1
    return-void
.end method

.method public compactRanges()V
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    .line 2
    .line 3
    if-eqz v0, :cond_a

    .line 4
    .line 5
    array-length v0, v0

    .line 6
    const/4 v1, 0x2

    .line 7
    if-gt v0, v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_5

    .line 10
    .line 11
    :cond_0
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->isCompacted()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    const/4 v0, 0x0

    .line 19
    const/4 v1, 0x0

    .line 20
    const/4 v2, 0x0

    .line 21
    :goto_0
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    .line 22
    .line 23
    array-length v4, v3

    .line 24
    if-ge v1, v4, :cond_8

    .line 25
    .line 26
    if-eq v2, v1, :cond_2

    .line 27
    .line 28
    add-int/lit8 v4, v1, 0x1

    .line 29
    .line 30
    aget v5, v3, v1

    .line 31
    .line 32
    aput v5, v3, v2

    .line 33
    .line 34
    add-int/lit8 v5, v2, 0x1

    .line 35
    .line 36
    add-int/lit8 v1, v1, 0x2

    .line 37
    .line 38
    aget v4, v3, v4

    .line 39
    .line 40
    aput v4, v3, v5

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    add-int/lit8 v1, v1, 0x2

    .line 44
    .line 45
    :goto_1
    add-int/lit8 v4, v2, 0x1

    .line 46
    .line 47
    aget v3, v3, v4

    .line 48
    .line 49
    :goto_2
    iget-object v5, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    .line 50
    .line 51
    array-length v6, v5

    .line 52
    if-ge v1, v6, :cond_7

    .line 53
    .line 54
    add-int/lit8 v6, v3, 0x1

    .line 55
    .line 56
    aget v7, v5, v1

    .line 57
    .line 58
    if-ge v6, v7, :cond_3

    .line 59
    .line 60
    goto :goto_4

    .line 61
    :cond_3
    if-ne v6, v7, :cond_4

    .line 62
    .line 63
    add-int/lit8 v3, v1, 0x1

    .line 64
    .line 65
    aget v3, v5, v3

    .line 66
    .line 67
    aput v3, v5, v4

    .line 68
    .line 69
    :goto_3
    add-int/lit8 v1, v1, 0x2

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_4
    add-int/lit8 v6, v1, 0x1

    .line 73
    .line 74
    aget v7, v5, v6

    .line 75
    .line 76
    if-lt v3, v7, :cond_5

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_5
    if-ge v3, v7, :cond_6

    .line 80
    .line 81
    aput v7, v5, v4

    .line 82
    .line 83
    add-int/lit8 v1, v1, 0x2

    .line 84
    .line 85
    move v3, v7

    .line 86
    goto :goto_2

    .line 87
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    .line 88
    .line 89
    new-instance v3, Ljava/lang/StringBuffer;

    .line 90
    .line 91
    const-string v5, "Token#compactRanges(): Internel Error: ["

    .line 92
    .line 93
    invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    iget-object v5, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    .line 97
    .line 98
    aget v2, v5, v2

    .line 99
    .line 100
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 101
    .line 102
    .line 103
    const-string v2, ","

    .line 104
    .line 105
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    .line 107
    .line 108
    iget-object v5, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    .line 109
    .line 110
    aget v4, v5, v4

    .line 111
    .line 112
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 113
    .line 114
    .line 115
    const-string v4, "] ["

    .line 116
    .line 117
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    .line 119
    .line 120
    iget-object v4, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    .line 121
    .line 122
    aget v1, v4, v1

    .line 123
    .line 124
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    .line 129
    .line 130
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    .line 131
    .line 132
    aget v1, v1, v6

    .line 133
    .line 134
    const-string v2, "]"

    .line 135
    .line 136
    invoke-static {v3, v2, v1}, Lorg/apache/ftpserver/main/a;->j(Ljava/lang/StringBuffer;Ljava/lang/String;I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw v0

    .line 144
    :cond_7
    :goto_4
    add-int/lit8 v2, v2, 0x2

    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_8
    array-length v1, v3

    .line 148
    if-eq v2, v1, :cond_9

    .line 149
    .line 150
    new-array v1, v2, [I

    .line 151
    .line 152
    invoke-static {v3, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    .line 154
    .line 155
    iput-object v1, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    .line 156
    .line 157
    :cond_9
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->setCompacted()V

    .line 158
    .line 159
    .line 160
    :cond_a
    :goto_5
    return-void
.end method

.method public declared-synchronized getCaseInsensitiveToken()Lorg/apache/xmlbeans/impl/regex/RangeToken;
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->icaseCache:Lorg/apache/xmlbeans/impl/regex/RangeToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/Token;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    invoke-static {}, Lorg/apache/xmlbeans/impl/regex/Token;->createRange()Lorg/apache/xmlbeans/impl/regex/RangeToken;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_1
    invoke-static {}, Lorg/apache/xmlbeans/impl/regex/Token;->createNRange()Lorg/apache/xmlbeans/impl/regex/RangeToken;

    move-result-object v0

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    array-length v5, v4

    const v6, 0xffff

    if-ge v3, v5, :cond_4

    aget v4, v4, v3

    :goto_2
    iget-object v5, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    add-int/lit8 v7, v3, 0x1

    aget v5, v5, v7

    if-gt v4, v5, :cond_3

    if-le v4, v6, :cond_2

    invoke-virtual {v0, v4, v4}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->addRange(II)V

    goto :goto_3

    :cond_2
    int-to-char v5, v4

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    invoke-virtual {v0, v5, v5}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->addRange(II)V

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_4
    iget v3, p0, Lorg/apache/xmlbeans/impl/regex/Token;->type:I

    if-ne v3, v1, :cond_5

    invoke-static {}, Lorg/apache/xmlbeans/impl/regex/Token;->createRange()Lorg/apache/xmlbeans/impl/regex/RangeToken;

    move-result-object v1

    goto :goto_4

    :cond_5
    invoke-static {}, Lorg/apache/xmlbeans/impl/regex/Token;->createNRange()Lorg/apache/xmlbeans/impl/regex/RangeToken;

    move-result-object v1

    :goto_4
    iget-object v3, v0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    array-length v4, v3

    if-ge v2, v4, :cond_8

    aget v3, v3, v2

    :goto_5
    iget-object v4, v0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    add-int/lit8 v5, v2, 0x1

    aget v4, v4, v5

    if-gt v3, v4, :cond_7

    if-le v3, v6, :cond_6

    invoke-virtual {v1, v3, v3}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->addRange(II)V

    goto :goto_6

    :cond_6
    int-to-char v4, v3

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    invoke-virtual {v1, v4, v4}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->addRange(II)V

    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_7
    add-int/lit8 v2, v2, 0x2

    goto :goto_4

    :cond_8
    invoke-virtual {v1, v0}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->mergeRanges(Lorg/apache/xmlbeans/impl/regex/Token;)V

    invoke-virtual {v1, p0}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->mergeRanges(Lorg/apache/xmlbeans/impl/regex/Token;)V

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->compactRanges()V

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->icaseCache:Lorg/apache/xmlbeans/impl/regex/RangeToken;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    :goto_7
    monitor-exit p0

    throw v0
.end method

.method public intersectRanges(Lorg/apache/xmlbeans/impl/regex/Token;)V
    .locals 12

    .line 1
    check-cast p1, Lorg/apache/xmlbeans/impl/regex/RangeToken;

    .line 2
    .line 3
    iget-object v0, p1, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    .line 4
    .line 5
    if-eqz v0, :cond_9

    .line 6
    .line 7
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_4

    .line 12
    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->icaseCache:Lorg/apache/xmlbeans/impl/regex/RangeToken;

    .line 15
    .line 16
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->sortRanges()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->compactRanges()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->sortRanges()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->compactRanges()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    .line 29
    .line 30
    array-length v0, v0

    .line 31
    iget-object v1, p1, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    .line 32
    .line 33
    array-length v1, v1

    .line 34
    add-int/2addr v0, v1

    .line 35
    new-array v0, v0, [I

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    const/4 v2, 0x0

    .line 39
    const/4 v3, 0x0

    .line 40
    const/4 v4, 0x0

    .line 41
    :goto_0
    iget-object v5, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    .line 42
    .line 43
    array-length v6, v5

    .line 44
    if-ge v2, v6, :cond_7

    .line 45
    .line 46
    iget-object v6, p1, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    .line 47
    .line 48
    array-length v7, v6

    .line 49
    if-ge v3, v7, :cond_7

    .line 50
    .line 51
    aget v7, v5, v2

    .line 52
    .line 53
    add-int/lit8 v8, v2, 0x1

    .line 54
    .line 55
    aget v9, v5, v8

    .line 56
    .line 57
    aget v10, v6, v3

    .line 58
    .line 59
    add-int/lit8 v11, v3, 0x1

    .line 60
    .line 61
    aget v6, v6, v11

    .line 62
    .line 63
    if-ge v9, v10, :cond_1

    .line 64
    .line 65
    :goto_1
    add-int/lit8 v2, v2, 0x2

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    if-lt v9, v10, :cond_5

    .line 69
    .line 70
    if-gt v7, v6, :cond_5

    .line 71
    .line 72
    if-gt v9, v6, :cond_2

    .line 73
    .line 74
    add-int/lit8 v5, v4, 0x1

    .line 75
    .line 76
    aput v7, v0, v4

    .line 77
    .line 78
    add-int/lit8 v4, v4, 0x2

    .line 79
    .line 80
    aput v9, v0, v5

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_2
    if-gt v10, v7, :cond_3

    .line 84
    .line 85
    add-int/lit8 v8, v4, 0x1

    .line 86
    .line 87
    aput v7, v0, v4

    .line 88
    .line 89
    add-int/lit8 v4, v4, 0x2

    .line 90
    .line 91
    aput v6, v0, v8

    .line 92
    .line 93
    add-int/lit8 v6, v6, 0x1

    .line 94
    .line 95
    aput v6, v5, v2

    .line 96
    .line 97
    :goto_2
    add-int/lit8 v3, v3, 0x2

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_3
    if-gt v9, v6, :cond_4

    .line 101
    .line 102
    add-int/lit8 v5, v4, 0x1

    .line 103
    .line 104
    aput v10, v0, v4

    .line 105
    .line 106
    add-int/lit8 v4, v4, 0x2

    .line 107
    .line 108
    aput v9, v0, v5

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_4
    add-int/lit8 v7, v4, 0x1

    .line 112
    .line 113
    aput v10, v0, v4

    .line 114
    .line 115
    add-int/lit8 v4, v4, 0x2

    .line 116
    .line 117
    aput v6, v0, v7

    .line 118
    .line 119
    add-int/lit8 v6, v6, 0x1

    .line 120
    .line 121
    aput v6, v5, v2

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_5
    if-ge v6, v7, :cond_6

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    .line 128
    .line 129
    new-instance v1, Ljava/lang/StringBuffer;

    .line 130
    .line 131
    const-string v4, "Token#intersectRanges(): Internal Error: ["

    .line 132
    .line 133
    invoke-direct {v1, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    iget-object v4, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    .line 137
    .line 138
    aget v2, v4, v2

    .line 139
    .line 140
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 141
    .line 142
    .line 143
    const-string v2, ","

    .line 144
    .line 145
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    .line 147
    .line 148
    iget-object v4, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    .line 149
    .line 150
    aget v4, v4, v8

    .line 151
    .line 152
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 153
    .line 154
    .line 155
    const-string v4, "] & ["

    .line 156
    .line 157
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 158
    .line 159
    .line 160
    iget-object v4, p1, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    .line 161
    .line 162
    aget v3, v4, v3

    .line 163
    .line 164
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 168
    .line 169
    .line 170
    iget-object p1, p1, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    .line 171
    .line 172
    aget p1, p1, v11

    .line 173
    .line 174
    const-string v2, "]"

    .line 175
    .line 176
    invoke-static {v1, v2, p1}, Lorg/apache/ftpserver/main/a;->j(Ljava/lang/StringBuffer;Ljava/lang/String;I)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    throw v0

    .line 184
    :cond_7
    :goto_3
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    .line 185
    .line 186
    array-length v3, p1

    .line 187
    if-ge v2, v3, :cond_8

    .line 188
    .line 189
    add-int/lit8 v3, v4, 0x1

    .line 190
    .line 191
    add-int/lit8 v5, v2, 0x1

    .line 192
    .line 193
    aget v6, p1, v2

    .line 194
    .line 195
    aput v6, v0, v4

    .line 196
    .line 197
    add-int/lit8 v4, v4, 0x2

    .line 198
    .line 199
    add-int/lit8 v2, v2, 0x2

    .line 200
    .line 201
    aget p1, p1, v5

    .line 202
    .line 203
    aput p1, v0, v3

    .line 204
    .line 205
    goto :goto_3

    .line 206
    :cond_8
    new-array p1, v4, [I

    .line 207
    .line 208
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    .line 209
    .line 210
    invoke-static {v0, v1, p1, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 211
    .line 212
    .line 213
    :cond_9
    :goto_4
    return-void
.end method

.method public match(I)Z
    .locals 5

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->map:[I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->createMap()V

    :cond_0
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/Token;->type:I

    const/4 v1, 0x4

    const/16 v2, 0x100

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v1, :cond_4

    if-ge p1, v2, :cond_2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->map:[I

    div-int/lit8 v1, p1, 0x20

    aget v0, v0, v1

    and-int/lit8 p1, p1, 0x1f

    shl-int p1, v4, p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    :cond_1
    return v3

    :cond_2
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->nonMapIndex:I

    :goto_0
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    array-length v2, v1

    if-ge v0, v2, :cond_9

    aget v2, v1, v0

    if-gt v2, p1, :cond_3

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v2

    if-gt p1, v1, :cond_3

    return v4

    :cond_3
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_4
    if-ge p1, v2, :cond_6

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->map:[I

    div-int/lit8 v1, p1, 0x20

    aget v0, v0, v1

    and-int/lit8 p1, p1, 0x1f

    shl-int p1, v4, p1

    and-int/2addr p1, v0

    if-nez p1, :cond_5

    const/4 v3, 0x1

    :cond_5
    return v3

    :cond_6
    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->nonMapIndex:I

    :goto_1
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    array-length v2, v1

    if-ge v0, v2, :cond_8

    aget v2, v1, v0

    if-gt v2, p1, :cond_7

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v2

    if-gt p1, v1, :cond_7

    return v3

    :cond_7
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_8
    const/4 v3, 0x1

    :cond_9
    return v3
.end method

.method public mergeRanges(Lorg/apache/xmlbeans/impl/regex/Token;)V
    .locals 10

    check-cast p1, Lorg/apache/xmlbeans/impl/regex/RangeToken;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->sortRanges()V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->sortRanges()V

    iget-object v0, p1, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->icaseCache:Lorg/apache/xmlbeans/impl/regex/RangeToken;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->setSorted(Z)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p1, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    array-length v2, p1

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_1
    array-length v0, v0

    iget-object v2, p1, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    array-length v2, v2

    add-int/2addr v0, v2

    new-array v0, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    array-length v5, v4

    if-lt v1, v5, :cond_3

    iget-object v5, p1, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    array-length v5, v5

    if-ge v2, v5, :cond_2

    goto :goto_1

    :cond_2
    iput-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    return-void

    :cond_3
    :goto_1
    array-length v5, v4

    if-lt v1, v5, :cond_4

    add-int/lit8 v4, v3, 0x1

    iget-object v5, p1, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    add-int/lit8 v6, v2, 0x1

    aget v7, v5, v2

    aput v7, v0, v3

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v2, v2, 0x2

    aget v5, v5, v6

    aput v5, v0, v4

    goto :goto_0

    :cond_4
    iget-object v5, p1, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    array-length v6, v5

    if-lt v2, v6, :cond_5

    add-int/lit8 v5, v3, 0x1

    add-int/lit8 v6, v1, 0x1

    aget v7, v4, v1

    aput v7, v0, v3

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v1, v1, 0x2

    aget v4, v4, v6

    aput v4, v0, v5

    goto :goto_0

    :cond_5
    aget v6, v5, v2

    aget v7, v4, v1

    if-lt v6, v7, :cond_7

    if-ne v6, v7, :cond_6

    add-int/lit8 v8, v2, 0x1

    aget v8, v5, v8

    add-int/lit8 v9, v1, 0x1

    aget v9, v4, v9

    if-ge v8, v9, :cond_6

    goto :goto_2

    :cond_6
    add-int/lit8 v5, v3, 0x1

    add-int/lit8 v6, v1, 0x1

    aput v7, v0, v3

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v1, v1, 0x2

    aget v4, v4, v6

    aput v4, v0, v5

    goto :goto_0

    :cond_7
    :goto_2
    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v7, v2, 0x1

    aput v6, v0, v3

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v2, v2, 0x2

    aget v5, v5, v7

    aput v5, v0, v4

    goto :goto_0
.end method

.method public sortRanges()V
    .locals 8

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->isSorted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    if-nez v0, :cond_1

    return-void

    :cond_1
    array-length v0, v0

    add-int/lit8 v0, v0, -0x4

    :goto_0
    if-ltz v0, :cond_5

    const/4 v1, 0x0

    :goto_1
    if-gt v1, v0, :cond_4

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    aget v3, v2, v1

    add-int/lit8 v4, v1, 0x2

    aget v5, v2, v4

    if-gt v3, v5, :cond_2

    if-ne v3, v5, :cond_3

    add-int/lit8 v6, v1, 0x1

    aget v6, v2, v6

    add-int/lit8 v7, v1, 0x3

    aget v7, v2, v7

    if-le v6, v7, :cond_3

    :cond_2
    aput v3, v2, v4

    aput v5, v2, v1

    add-int/lit8 v3, v1, 0x3

    aget v5, v2, v3

    add-int/lit8 v1, v1, 0x1

    aget v6, v2, v1

    aput v6, v2, v3

    aput v5, v2, v1

    :cond_3
    move v1, v4

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->setSorted(Z)V

    return-void
.end method

.method public subtractRanges(Lorg/apache/xmlbeans/impl/regex/Token;)V
    .locals 12

    .line 1
    iget v0, p1, Lorg/apache/xmlbeans/impl/regex/Token;->type:I

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->intersectRanges(Lorg/apache/xmlbeans/impl/regex/Token;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    check-cast p1, Lorg/apache/xmlbeans/impl/regex/RangeToken;

    .line 11
    .line 12
    iget-object v0, p1, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    .line 13
    .line 14
    if-eqz v0, :cond_a

    .line 15
    .line 16
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    goto/16 :goto_4

    .line 21
    .line 22
    :cond_1
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->icaseCache:Lorg/apache/xmlbeans/impl/regex/RangeToken;

    .line 24
    .line 25
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->sortRanges()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->compactRanges()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->sortRanges()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->compactRanges()V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    .line 38
    .line 39
    array-length v0, v0

    .line 40
    iget-object v1, p1, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    .line 41
    .line 42
    array-length v1, v1

    .line 43
    add-int/2addr v0, v1

    .line 44
    new-array v0, v0, [I

    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    const/4 v2, 0x0

    .line 48
    const/4 v3, 0x0

    .line 49
    const/4 v4, 0x0

    .line 50
    :goto_0
    iget-object v5, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    .line 51
    .line 52
    array-length v6, v5

    .line 53
    if-ge v2, v6, :cond_8

    .line 54
    .line 55
    iget-object v6, p1, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    .line 56
    .line 57
    array-length v7, v6

    .line 58
    if-ge v3, v7, :cond_8

    .line 59
    .line 60
    aget v7, v5, v2

    .line 61
    .line 62
    add-int/lit8 v8, v2, 0x1

    .line 63
    .line 64
    aget v9, v5, v8

    .line 65
    .line 66
    aget v10, v6, v3

    .line 67
    .line 68
    add-int/lit8 v11, v3, 0x1

    .line 69
    .line 70
    aget v6, v6, v11

    .line 71
    .line 72
    if-ge v9, v10, :cond_2

    .line 73
    .line 74
    add-int/lit8 v6, v4, 0x1

    .line 75
    .line 76
    aput v7, v0, v4

    .line 77
    .line 78
    add-int/lit8 v4, v4, 0x2

    .line 79
    .line 80
    add-int/lit8 v2, v2, 0x2

    .line 81
    .line 82
    aget v5, v5, v8

    .line 83
    .line 84
    aput v5, v0, v6

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_2
    if-lt v9, v10, :cond_6

    .line 88
    .line 89
    if-gt v7, v6, :cond_6

    .line 90
    .line 91
    if-gt v10, v7, :cond_3

    .line 92
    .line 93
    if-gt v9, v6, :cond_3

    .line 94
    .line 95
    :goto_1
    add-int/lit8 v2, v2, 0x2

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_3
    if-gt v10, v7, :cond_4

    .line 99
    .line 100
    add-int/lit8 v6, v6, 0x1

    .line 101
    .line 102
    aput v6, v5, v2

    .line 103
    .line 104
    :goto_2
    add-int/lit8 v3, v3, 0x2

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_4
    if-gt v9, v6, :cond_5

    .line 108
    .line 109
    add-int/lit8 v5, v4, 0x1

    .line 110
    .line 111
    aput v7, v0, v4

    .line 112
    .line 113
    add-int/lit8 v4, v4, 0x2

    .line 114
    .line 115
    add-int/lit8 v10, v10, -0x1

    .line 116
    .line 117
    aput v10, v0, v5

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_5
    add-int/lit8 v8, v4, 0x1

    .line 121
    .line 122
    aput v7, v0, v4

    .line 123
    .line 124
    add-int/lit8 v4, v4, 0x2

    .line 125
    .line 126
    add-int/lit8 v10, v10, -0x1

    .line 127
    .line 128
    aput v10, v0, v8

    .line 129
    .line 130
    add-int/lit8 v6, v6, 0x1

    .line 131
    .line 132
    aput v6, v5, v2

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_6
    if-ge v6, v7, :cond_7

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    .line 139
    .line 140
    new-instance v1, Ljava/lang/StringBuffer;

    .line 141
    .line 142
    const-string v4, "Token#subtractRanges(): Internal Error: ["

    .line 143
    .line 144
    invoke-direct {v1, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    iget-object v4, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    .line 148
    .line 149
    aget v2, v4, v2

    .line 150
    .line 151
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 152
    .line 153
    .line 154
    const-string v2, ","

    .line 155
    .line 156
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    .line 158
    .line 159
    iget-object v4, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    .line 160
    .line 161
    aget v4, v4, v8

    .line 162
    .line 163
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 164
    .line 165
    .line 166
    const-string v4, "] - ["

    .line 167
    .line 168
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    .line 170
    .line 171
    iget-object v4, p1, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    .line 172
    .line 173
    aget v3, v4, v3

    .line 174
    .line 175
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 179
    .line 180
    .line 181
    iget-object p1, p1, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    .line 182
    .line 183
    aget p1, p1, v11

    .line 184
    .line 185
    const-string v2, "]"

    .line 186
    .line 187
    invoke-static {v1, v2, p1}, Lorg/apache/ftpserver/main/a;->j(Ljava/lang/StringBuffer;Ljava/lang/String;I)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    throw v0

    .line 195
    :cond_8
    :goto_3
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    .line 196
    .line 197
    array-length v3, p1

    .line 198
    if-ge v2, v3, :cond_9

    .line 199
    .line 200
    add-int/lit8 v3, v4, 0x1

    .line 201
    .line 202
    add-int/lit8 v5, v2, 0x1

    .line 203
    .line 204
    aget v6, p1, v2

    .line 205
    .line 206
    aput v6, v0, v4

    .line 207
    .line 208
    add-int/lit8 v4, v4, 0x2

    .line 209
    .line 210
    add-int/lit8 v2, v2, 0x2

    .line 211
    .line 212
    aget p1, p1, v5

    .line 213
    .line 214
    aput p1, v0, v3

    .line 215
    .line 216
    goto :goto_3

    .line 217
    :cond_9
    new-array p1, v4, [I

    .line 218
    .line 219
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    .line 220
    .line 221
    invoke-static {v0, v1, p1, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 222
    .line 223
    .line 224
    :cond_a
    :goto_4
    return-void
.end method

.method public toString(I)Ljava/lang/String;
    .locals 8

    iget v0, p0, Lorg/apache/xmlbeans/impl/regex/Token;->type:I

    const/4 v1, 0x4

    const-string v2, "]"

    const/16 v3, 0x2d

    const-string v4, ","

    const/4 v5, 0x0

    if-ne v0, v1, :cond_7

    sget-object v0, Lorg/apache/xmlbeans/impl/regex/Token;->token_dot:Lorg/apache/xmlbeans/impl/regex/Token;

    if-ne p0, v0, :cond_0

    const-string p1, "."

    goto/16 :goto_6

    :cond_0
    sget-object v0, Lorg/apache/xmlbeans/impl/regex/Token;->token_0to9:Lorg/apache/xmlbeans/impl/regex/Token;

    if-ne p0, v0, :cond_1

    const-string p1, "\\d"

    goto/16 :goto_6

    :cond_1
    sget-object v0, Lorg/apache/xmlbeans/impl/regex/Token;->token_wordchars:Lorg/apache/xmlbeans/impl/regex/Token;

    if-ne p0, v0, :cond_2

    const-string p1, "\\w"

    goto/16 :goto_6

    :cond_2
    sget-object v0, Lorg/apache/xmlbeans/impl/regex/Token;->token_spaces:Lorg/apache/xmlbeans/impl/regex/Token;

    if-ne p0, v0, :cond_3

    const-string p1, "\\s"

    goto/16 :goto_6

    :cond_3
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    array-length v1, v1

    if-ge v5, v1, :cond_6

    and-int/lit16 v1, p1, 0x400

    if-eqz v1, :cond_4

    if-lez v5, :cond_4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    aget v6, v1, v5

    add-int/lit8 v7, v5, 0x1

    aget v1, v1, v7

    if-ne v6, v1, :cond_5

    invoke-static {v6}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->escapeCharInCharClass(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_5
    invoke-static {v6}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->escapeCharInCharClass(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    aget v1, v1, v7

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->escapeCharInCharClass(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :goto_2
    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    :cond_6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    :cond_7
    sget-object v0, Lorg/apache/xmlbeans/impl/regex/Token;->token_not_0to9:Lorg/apache/xmlbeans/impl/regex/Token;

    if-ne p0, v0, :cond_8

    const-string p1, "\\D"

    goto :goto_6

    :cond_8
    sget-object v0, Lorg/apache/xmlbeans/impl/regex/Token;->token_not_wordchars:Lorg/apache/xmlbeans/impl/regex/Token;

    if-ne p0, v0, :cond_9

    const-string p1, "\\W"

    goto :goto_6

    :cond_9
    sget-object v0, Lorg/apache/xmlbeans/impl/regex/Token;->token_not_spaces:Lorg/apache/xmlbeans/impl/regex/Token;

    if-ne p0, v0, :cond_a

    const-string p1, "\\S"

    goto :goto_6

    :cond_a
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "[^"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :goto_3
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    array-length v1, v1

    if-ge v5, v1, :cond_6

    and-int/lit16 v1, p1, 0x400

    if-eqz v1, :cond_b

    if-lez v5, :cond_b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_b
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    aget v6, v1, v5

    add-int/lit8 v7, v5, 0x1

    aget v1, v1, v7

    if-ne v6, v1, :cond_c

    invoke-static {v6}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->escapeCharInCharClass(I)Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_c
    invoke-static {v6}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->escapeCharInCharClass(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/regex/RangeToken;->ranges:[I

    aget v1, v1, v7

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/regex/RangeToken;->escapeCharInCharClass(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :goto_5
    add-int/lit8 v5, v5, 0x2

    goto :goto_3

    :goto_6
    return-object p1
.end method
