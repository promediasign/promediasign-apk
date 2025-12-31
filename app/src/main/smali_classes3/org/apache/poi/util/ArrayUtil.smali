.class public Lorg/apache/poi/util/ArrayUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static arrayMoveWithin([Ljava/lang/Object;III)V
    .locals 5

    if-gtz p3, :cond_0

    return-void

    :cond_0
    if-ne p1, p2, :cond_1

    return-void

    :cond_1
    if-ltz p1, :cond_6

    array-length v0, p0

    if-ge p1, v0, :cond_6

    if-ltz p2, :cond_5

    array-length v0, p0

    if-ge p2, v0, :cond_5

    add-int v0, p1, p3

    array-length v1, p0

    if-gt v0, v1, :cond_4

    add-int v1, p2, p3

    array-length v2, p0

    if-gt v1, v2, :cond_3

    new-array v2, p3, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, p1, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-le p1, p2, :cond_2

    sub-int/2addr p1, p2

    new-array v0, p1, [Ljava/lang/Object;

    invoke-static {p0, p2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move p1, v1

    goto :goto_0

    :cond_2
    sub-int v1, p2, p1

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v4

    :goto_0
    invoke-static {v2, v3, p0, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p2, v0

    invoke-static {v0, v3, p0, p1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Asked to move to a position that doesn\'t have enough space"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Asked to move more entries than the array has"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The moveTo must be a valid array index"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The moveFrom must be a valid array index"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static arraycopy([BI[BII)V
    .locals 4

    .line 1
    if-ltz p1, :cond_5

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    const-string v1, " but the array length is "

    .line 5
    .line 6
    if-ge p1, v0, :cond_4

    .line 7
    .line 8
    add-int v0, p1, p4

    .line 9
    .line 10
    array-length v2, p0

    .line 11
    const-string v3, " actual end at "

    .line 12
    .line 13
    if-gt v0, v2, :cond_3

    .line 14
    .line 15
    if-ltz p3, :cond_2

    .line 16
    .line 17
    array-length v0, p2

    .line 18
    if-ge p3, v0, :cond_1

    .line 19
    .line 20
    add-int v0, p3, p4

    .line 21
    .line 22
    array-length v1, p2

    .line 23
    if-gt v0, v1, :cond_0

    .line 24
    .line 25
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 30
    .line 31
    const-string p1, "dst_position + length would overrun the dst array.  Expected end at "

    .line 32
    .line 33
    invoke-static {v0, p1, v3}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    array-length p2, p2

    .line 38
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p0

    .line 49
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 50
    .line 51
    const-string p1, "dst_position was greater than dst array size.  Tried to write starting at position "

    .line 52
    .line 53
    invoke-static {p3, p1, v1}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    array-length p2, p2

    .line 58
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p0

    .line 69
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 70
    .line 71
    const-string p1, "dst_position was less than 0.  Actual value "

    .line 72
    .line 73
    invoke-static {p3, p1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw p0

    .line 81
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 82
    .line 83
    const-string p2, "src_position + length would overrun the src array.  Expected end at "

    .line 84
    .line 85
    invoke-static {v0, p2, v3}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    array-length p0, p0

    .line 90
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw p1

    .line 101
    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 102
    .line 103
    const-string p3, "src_position was greater than src array size.  Tried to write starting at position "

    .line 104
    .line 105
    invoke-static {p1, p3, v1}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    array-length p0, p0

    .line 110
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw p2

    .line 121
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 122
    .line 123
    const-string p2, "src_position was less than 0.  Actual value "

    .line 124
    .line 125
    invoke-static {p1, p2}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw p0
.end method
