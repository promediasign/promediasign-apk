.class Lorg/h2/mvstore/StreamStore$Stream;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/mvstore/StreamStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Stream"
.end annotation


# instance fields
.field private buffer:Ljava/io/ByteArrayInputStream;

.field private idBuffer:Ljava/nio/ByteBuffer;

.field private final length:J

.field private oneByteBuffer:[B

.field private pos:J

.field private skip:J

.field private final store:Lorg/h2/mvstore/StreamStore;


# direct methods
.method public constructor <init>(Lorg/h2/mvstore/StreamStore;[B)V
    .locals 2

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lorg/h2/mvstore/StreamStore$Stream;->store:Lorg/h2/mvstore/StreamStore;

    invoke-virtual {p1, p2}, Lorg/h2/mvstore/StreamStore;->length([B)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/mvstore/StreamStore$Stream;->length:J

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/mvstore/StreamStore$Stream;->idBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private nextBuffer()Ljava/io/ByteArrayInputStream;
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    :goto_0
    iget-object v1, p0, Lorg/h2/mvstore/StreamStore$Stream;->idBuffer:Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_6

    .line 9
    .line 10
    iget-object v1, p0, Lorg/h2/mvstore/StreamStore$Stream;->idBuffer:Ljava/nio/ByteBuffer;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_4

    .line 17
    .line 18
    if-eq v1, v0, :cond_2

    .line 19
    .line 20
    const/4 v2, 0x2

    .line 21
    if-ne v1, v2, :cond_1

    .line 22
    .line 23
    iget-object v1, p0, Lorg/h2/mvstore/StreamStore$Stream;->idBuffer:Ljava/nio/ByteBuffer;

    .line 24
    .line 25
    invoke-static {v1}, Lorg/h2/mvstore/DataUtils;->readVarLong(Ljava/nio/ByteBuffer;)J

    .line 26
    .line 27
    .line 28
    move-result-wide v1

    .line 29
    iget-object v3, p0, Lorg/h2/mvstore/StreamStore$Stream;->idBuffer:Ljava/nio/ByteBuffer;

    .line 30
    .line 31
    invoke-static {v3}, Lorg/h2/mvstore/DataUtils;->readVarLong(Ljava/nio/ByteBuffer;)J

    .line 32
    .line 33
    .line 34
    move-result-wide v3

    .line 35
    iget-wide v5, p0, Lorg/h2/mvstore/StreamStore$Stream;->skip:J

    .line 36
    .line 37
    cmp-long v7, v5, v1

    .line 38
    .line 39
    if-ltz v7, :cond_0

    .line 40
    .line 41
    sub-long/2addr v5, v1

    .line 42
    iput-wide v5, p0, Lorg/h2/mvstore/StreamStore$Stream;->skip:J

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget-object v0, p0, Lorg/h2/mvstore/StreamStore$Stream;->store:Lorg/h2/mvstore/StreamStore;

    .line 46
    .line 47
    invoke-virtual {v0, v3, v4}, Lorg/h2/mvstore/StreamStore;->getBlock(J)[B

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    array-length v1, v0

    .line 52
    iget-object v2, p0, Lorg/h2/mvstore/StreamStore$Stream;->idBuffer:Ljava/nio/ByteBuffer;

    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    add-int/2addr v2, v1

    .line 59
    iget-object v1, p0, Lorg/h2/mvstore/StreamStore$Stream;->idBuffer:Ljava/nio/ByteBuffer;

    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    sub-int/2addr v2, v1

    .line 66
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lorg/h2/mvstore/StreamStore$Stream;->idBuffer:Ljava/nio/ByteBuffer;

    .line 74
    .line 75
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 79
    .line 80
    .line 81
    iput-object v1, p0, Lorg/h2/mvstore/StreamStore$Stream;->idBuffer:Ljava/nio/ByteBuffer;

    .line 82
    .line 83
    invoke-direct {p0}, Lorg/h2/mvstore/StreamStore$Stream;->nextBuffer()Ljava/io/ByteArrayInputStream;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    return-object v0

    .line 88
    :cond_1
    iget-object v1, p0, Lorg/h2/mvstore/StreamStore$Stream;->idBuffer:Ljava/nio/ByteBuffer;

    .line 89
    .line 90
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    new-array v0, v0, [Ljava/lang/Object;

    .line 99
    .line 100
    const/4 v2, 0x0

    .line 101
    aput-object v1, v0, v2

    .line 102
    .line 103
    const-string v1, "Unsupported id {0}"

    .line 104
    .line 105
    invoke-static {v1, v0}, Lorg/h2/mvstore/DataUtils;->newIllegalArgumentException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    throw v0

    .line 110
    :cond_2
    iget-object v1, p0, Lorg/h2/mvstore/StreamStore$Stream;->idBuffer:Ljava/nio/ByteBuffer;

    .line 111
    .line 112
    invoke-static {v1}, Lorg/h2/mvstore/DataUtils;->readVarInt(Ljava/nio/ByteBuffer;)I

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    iget-object v2, p0, Lorg/h2/mvstore/StreamStore$Stream;->idBuffer:Ljava/nio/ByteBuffer;

    .line 117
    .line 118
    invoke-static {v2}, Lorg/h2/mvstore/DataUtils;->readVarLong(Ljava/nio/ByteBuffer;)J

    .line 119
    .line 120
    .line 121
    move-result-wide v2

    .line 122
    iget-wide v4, p0, Lorg/h2/mvstore/StreamStore$Stream;->skip:J

    .line 123
    .line 124
    int-to-long v6, v1

    .line 125
    cmp-long v1, v4, v6

    .line 126
    .line 127
    if-ltz v1, :cond_3

    .line 128
    .line 129
    sub-long/2addr v4, v6

    .line 130
    iput-wide v4, p0, Lorg/h2/mvstore/StreamStore$Stream;->skip:J

    .line 131
    .line 132
    goto/16 :goto_0

    .line 133
    .line 134
    :cond_3
    iget-object v0, p0, Lorg/h2/mvstore/StreamStore$Stream;->store:Lorg/h2/mvstore/StreamStore;

    .line 135
    .line 136
    invoke-virtual {v0, v2, v3}, Lorg/h2/mvstore/StreamStore;->getBlock(J)[B

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    iget-wide v1, p0, Lorg/h2/mvstore/StreamStore$Stream;->skip:J

    .line 141
    .line 142
    long-to-int v2, v1

    .line 143
    const-wide/16 v3, 0x0

    .line 144
    .line 145
    iput-wide v3, p0, Lorg/h2/mvstore/StreamStore$Stream;->skip:J

    .line 146
    .line 147
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 148
    .line 149
    array-length v3, v0

    .line 150
    sub-int/2addr v3, v2

    .line 151
    invoke-direct {v1, v0, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 152
    .line 153
    .line 154
    return-object v1

    .line 155
    :cond_4
    iget-object v1, p0, Lorg/h2/mvstore/StreamStore$Stream;->idBuffer:Ljava/nio/ByteBuffer;

    .line 156
    .line 157
    invoke-static {v1}, Lorg/h2/mvstore/DataUtils;->readVarInt(Ljava/nio/ByteBuffer;)I

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    iget-wide v2, p0, Lorg/h2/mvstore/StreamStore$Stream;->skip:J

    .line 162
    .line 163
    int-to-long v4, v1

    .line 164
    cmp-long v6, v2, v4

    .line 165
    .line 166
    if-ltz v6, :cond_5

    .line 167
    .line 168
    sub-long/2addr v2, v4

    .line 169
    iput-wide v2, p0, Lorg/h2/mvstore/StreamStore$Stream;->skip:J

    .line 170
    .line 171
    iget-object v2, p0, Lorg/h2/mvstore/StreamStore$Stream;->idBuffer:Ljava/nio/ByteBuffer;

    .line 172
    .line 173
    invoke-static {v2, v1}, LA/g;->B(Ljava/nio/ByteBuffer;I)V

    .line 174
    .line 175
    .line 176
    goto/16 :goto_0

    .line 177
    .line 178
    :cond_5
    iget-object v0, p0, Lorg/h2/mvstore/StreamStore$Stream;->idBuffer:Ljava/nio/ByteBuffer;

    .line 179
    .line 180
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    int-to-long v0, v0

    .line 185
    iget-wide v2, p0, Lorg/h2/mvstore/StreamStore$Stream;->skip:J

    .line 186
    .line 187
    add-long/2addr v0, v2

    .line 188
    long-to-int v1, v0

    .line 189
    sub-long/2addr v4, v2

    .line 190
    long-to-int v0, v4

    .line 191
    iget-object v2, p0, Lorg/h2/mvstore/StreamStore$Stream;->idBuffer:Ljava/nio/ByteBuffer;

    .line 192
    .line 193
    add-int v3, v1, v0

    .line 194
    .line 195
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 196
    .line 197
    .line 198
    new-instance v2, Ljava/io/ByteArrayInputStream;

    .line 199
    .line 200
    iget-object v3, p0, Lorg/h2/mvstore/StreamStore$Stream;->idBuffer:Ljava/nio/ByteBuffer;

    .line 201
    .line 202
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    invoke-direct {v2, v3, v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 207
    .line 208
    .line 209
    return-object v2

    .line 210
    :cond_6
    const/4 v0, 0x0

    .line 211
    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/mvstore/StreamStore$Stream;->buffer:Ljava/io/ByteArrayInputStream;

    iget-object v0, p0, Lorg/h2/mvstore/StreamStore$Stream;->idBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-wide v0, p0, Lorg/h2/mvstore/StreamStore$Stream;->length:J

    iput-wide v0, p0, Lorg/h2/mvstore/StreamStore$Stream;->pos:J

    return-void
.end method

.method public read()I
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/h2/mvstore/StreamStore$Stream;->oneByteBuffer:[B

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-array v0, v1, [B

    iput-object v0, p0, Lorg/h2/mvstore/StreamStore$Stream;->oneByteBuffer:[B

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lorg/h2/mvstore/StreamStore$Stream;->read([BII)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    aget-byte v0, v0, v2

    and-int/lit16 v3, v0, 0xff

    :goto_0
    return v3
.end method

.method public read([BII)I
    .locals 4

    .line 2
    const/4 v0, 0x0

    if-gtz p3, :cond_0

    return v0

    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/h2/mvstore/StreamStore$Stream;->buffer:Ljava/io/ByteArrayInputStream;

    if-nez v1, :cond_1

    :try_start_0
    invoke-direct {p0}, Lorg/h2/mvstore/StreamStore$Stream;->nextBuffer()Ljava/io/ByteArrayInputStream;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/mvstore/StreamStore$Stream;->buffer:Ljava/io/ByteArrayInputStream;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    const/4 p1, -0x1

    return p1

    :catch_0
    move-exception p1

    iget-object p2, p0, Lorg/h2/mvstore/StreamStore$Stream;->idBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    aput-object p2, p3, v0

    const/16 p2, 0x32

    const-string v0, "Block not found in id {0}"

    invoke-static {p2, v0, p3}, Lorg/h2/mvstore/DataUtils;->formatMessage(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/io/IOException;

    invoke-direct {p3, p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    :cond_1
    iget-object v1, p0, Lorg/h2/mvstore/StreamStore$Stream;->buffer:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v1

    if-lez v1, :cond_2

    iget-wide p1, p0, Lorg/h2/mvstore/StreamStore$Stream;->pos:J

    int-to-long v2, v1

    add-long/2addr p1, v2

    iput-wide p1, p0, Lorg/h2/mvstore/StreamStore$Stream;->pos:J

    return v1

    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/h2/mvstore/StreamStore$Stream;->buffer:Ljava/io/ByteArrayInputStream;

    goto :goto_0
.end method

.method public skip(J)J
    .locals 5

    iget-wide v0, p0, Lorg/h2/mvstore/StreamStore$Stream;->length:J

    iget-wide v2, p0, Lorg/h2/mvstore/StreamStore$Stream;->pos:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    iget-object v2, p0, Lorg/h2/mvstore/StreamStore$Stream;->buffer:Ljava/io/ByteArrayInputStream;

    if-eqz v2, :cond_2

    invoke-virtual {v2, p1, p2}, Ljava/io/ByteArrayInputStream;->skip(J)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-lez v4, :cond_1

    move-wide p1, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/mvstore/StreamStore$Stream;->buffer:Ljava/io/ByteArrayInputStream;

    :cond_2
    iget-wide v0, p0, Lorg/h2/mvstore/StreamStore$Stream;->skip:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/h2/mvstore/StreamStore$Stream;->skip:J

    :goto_0
    iget-wide v0, p0, Lorg/h2/mvstore/StreamStore$Stream;->pos:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/h2/mvstore/StreamStore$Stream;->pos:J

    return-wide p1
.end method
