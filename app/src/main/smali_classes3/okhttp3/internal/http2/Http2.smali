.class public abstract Lokhttp3/internal/http2/Http2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final BINARY:[Ljava/lang/String;

.field static final CONNECTION_PREFACE:Lokio/ByteString;

.field static final FLAGS:[Ljava/lang/String;

.field private static final FRAME_NAMES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const-string v2, "PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n"

    .line 5
    .line 6
    invoke-static {v2}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    sput-object v2, Lokhttp3/internal/http2/Http2;->CONNECTION_PREFACE:Lokio/ByteString;

    .line 11
    .line 12
    const-string v11, "WINDOW_UPDATE"

    .line 13
    .line 14
    const-string v12, "CONTINUATION"

    .line 15
    .line 16
    const-string v3, "DATA"

    .line 17
    .line 18
    const-string v4, "HEADERS"

    .line 19
    .line 20
    const-string v5, "PRIORITY"

    .line 21
    .line 22
    const-string v6, "RST_STREAM"

    .line 23
    .line 24
    const-string v7, "SETTINGS"

    .line 25
    .line 26
    const-string v8, "PUSH_PROMISE"

    .line 27
    .line 28
    const-string v9, "PING"

    .line 29
    .line 30
    const-string v10, "GOAWAY"

    .line 31
    .line 32
    filled-new-array/range {v3 .. v12}, [Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    sput-object v2, Lokhttp3/internal/http2/Http2;->FRAME_NAMES:[Ljava/lang/String;

    .line 37
    .line 38
    const/16 v2, 0x40

    .line 39
    .line 40
    new-array v2, v2, [Ljava/lang/String;

    .line 41
    .line 42
    sput-object v2, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    .line 43
    .line 44
    const/16 v2, 0x100

    .line 45
    .line 46
    new-array v2, v2, [Ljava/lang/String;

    .line 47
    .line 48
    sput-object v2, Lokhttp3/internal/http2/Http2;->BINARY:[Ljava/lang/String;

    .line 49
    .line 50
    const/4 v2, 0x0

    .line 51
    const/4 v3, 0x0

    .line 52
    :goto_0
    sget-object v4, Lokhttp3/internal/http2/Http2;->BINARY:[Ljava/lang/String;

    .line 53
    .line 54
    array-length v5, v4

    .line 55
    const/16 v6, 0x20

    .line 56
    .line 57
    if-ge v3, v5, :cond_0

    .line 58
    .line 59
    invoke-static {v3}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    new-array v7, v1, [Ljava/lang/Object;

    .line 64
    .line 65
    aput-object v5, v7, v2

    .line 66
    .line 67
    const-string v5, "%8s"

    .line 68
    .line 69
    invoke-static {v5, v7}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    const/16 v7, 0x30

    .line 74
    .line 75
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    aput-object v5, v4, v3

    .line 80
    .line 81
    add-int/2addr v3, v1

    .line 82
    goto :goto_0

    .line 83
    :cond_0
    sget-object v3, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    .line 84
    .line 85
    const-string v4, ""

    .line 86
    .line 87
    aput-object v4, v3, v2

    .line 88
    .line 89
    const-string v4, "END_STREAM"

    .line 90
    .line 91
    aput-object v4, v3, v1

    .line 92
    .line 93
    filled-new-array {v1}, [I

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    const-string v5, "PADDED"

    .line 98
    .line 99
    aput-object v5, v3, v0

    .line 100
    .line 101
    aget v5, v4, v2

    .line 102
    .line 103
    or-int/lit8 v7, v5, 0x8

    .line 104
    .line 105
    new-instance v8, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    aget-object v5, v3, v5

    .line 111
    .line 112
    const-string v9, "|PADDED"

    .line 113
    .line 114
    invoke-static {v5, v9, v8}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    aput-object v5, v3, v7

    .line 119
    .line 120
    const-string v5, "END_HEADERS"

    .line 121
    .line 122
    const/4 v7, 0x4

    .line 123
    aput-object v5, v3, v7

    .line 124
    .line 125
    const-string v5, "PRIORITY"

    .line 126
    .line 127
    aput-object v5, v3, v6

    .line 128
    .line 129
    const-string v5, "END_HEADERS|PRIORITY"

    .line 130
    .line 131
    const/16 v8, 0x24

    .line 132
    .line 133
    aput-object v5, v3, v8

    .line 134
    .line 135
    filled-new-array {v7, v6, v8}, [I

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    const/4 v5, 0x0

    .line 140
    :goto_1
    const/4 v6, 0x3

    .line 141
    if-ge v5, v6, :cond_1

    .line 142
    .line 143
    aget v6, v3, v5

    .line 144
    .line 145
    aget v7, v4, v2

    .line 146
    .line 147
    sget-object v8, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    .line 148
    .line 149
    or-int v10, v7, v6

    .line 150
    .line 151
    new-instance v11, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .line 155
    .line 156
    aget-object v12, v8, v7

    .line 157
    .line 158
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const/16 v12, 0x7c

    .line 162
    .line 163
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    aget-object v13, v8, v6

    .line 167
    .line 168
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v11

    .line 175
    aput-object v11, v8, v10

    .line 176
    .line 177
    or-int/2addr v10, v0

    .line 178
    new-instance v11, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .line 182
    .line 183
    aget-object v7, v8, v7

    .line 184
    .line 185
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    aget-object v6, v8, v6

    .line 192
    .line 193
    invoke-static {v6, v9, v11}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v6

    .line 197
    aput-object v6, v8, v10

    .line 198
    .line 199
    add-int/2addr v5, v1

    .line 200
    goto :goto_1

    .line 201
    :cond_1
    :goto_2
    sget-object v0, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    .line 202
    .line 203
    array-length v3, v0

    .line 204
    if-ge v2, v3, :cond_3

    .line 205
    .line 206
    aget-object v3, v0, v2

    .line 207
    .line 208
    if-nez v3, :cond_2

    .line 209
    .line 210
    sget-object v3, Lokhttp3/internal/http2/Http2;->BINARY:[Ljava/lang/String;

    .line 211
    .line 212
    aget-object v3, v3, v2

    .line 213
    .line 214
    aput-object v3, v0, v2

    .line 215
    .line 216
    :cond_2
    add-int/2addr v2, v1

    .line 217
    goto :goto_2

    .line 218
    :cond_3
    return-void
.end method

.method public static formatFlags(BB)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-eq p0, v0, :cond_6

    const/4 v0, 0x3

    if-eq p0, v0, :cond_6

    const/4 v0, 0x4

    if-eq p0, v0, :cond_4

    const/4 v0, 0x6

    if-eq p0, v0, :cond_4

    const/4 v0, 0x7

    if-eq p0, v0, :cond_6

    const/16 v0, 0x8

    if-eq p0, v0, :cond_6

    sget-object v0, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    array-length v1, v0

    if-ge p1, v1, :cond_1

    aget-object v0, v0, p1

    goto :goto_0

    :cond_1
    sget-object v0, Lokhttp3/internal/http2/Http2;->BINARY:[Ljava/lang/String;

    aget-object v0, v0, p1

    :goto_0
    const/4 v1, 0x5

    if-ne p0, v1, :cond_2

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_2

    const-string p0, "HEADERS"

    const-string p1, "PUSH_PROMISE"

    invoke-virtual {v0, p0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    if-nez p0, :cond_3

    and-int/lit8 p0, p1, 0x20

    if-eqz p0, :cond_3

    const-string p0, "PRIORITY"

    const-string p1, "COMPRESSED"

    invoke-virtual {v0, p0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v0

    :cond_4
    const/4 p0, 0x1

    if-ne p1, p0, :cond_5

    const-string p0, "ACK"

    goto :goto_1

    :cond_5
    sget-object p0, Lokhttp3/internal/http2/Http2;->BINARY:[Ljava/lang/String;

    aget-object p0, p0, p1

    :goto_1
    return-object p0

    :cond_6
    sget-object p0, Lokhttp3/internal/http2/Http2;->BINARY:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public static frameLog(ZIIBB)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    sget-object v2, Lokhttp3/internal/http2/Http2;->FRAME_NAMES:[Ljava/lang/String;

    array-length v3, v2

    if-ge p3, v3, :cond_0

    aget-object v2, v2, p3

    goto :goto_0

    :cond_0
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    aput-object v2, v3, v0

    const-string v2, "0x%02x"

    invoke-static {v2, v3}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {p3, p4}, Lokhttp3/internal/http2/Http2;->formatFlags(BB)Ljava/lang/String;

    move-result-object p3

    if-eqz p0, :cond_1

    const-string p0, "<<"

    goto :goto_1

    :cond_1
    const-string p0, ">>"

    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p4, 0x5

    new-array p4, p4, [Ljava/lang/Object;

    aput-object p0, p4, v0

    aput-object p1, p4, v1

    const/4 p0, 0x2

    aput-object p2, p4, p0

    const/4 p0, 0x3

    aput-object v2, p4, p0

    const/4 p0, 0x4

    aput-object p3, p4, p0

    const-string p0, "%s 0x%08x %5d %-13s %s"

    invoke-static {p0, p4}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    .locals 1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0, p1}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    .locals 1

    new-instance v0, Ljava/io/IOException;

    invoke-static {p0, p1}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
