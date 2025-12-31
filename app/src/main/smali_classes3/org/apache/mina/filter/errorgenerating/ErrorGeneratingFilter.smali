.class public Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;
.super Lorg/apache/mina/core/filterchain/IoFilterAdapter;
.source "SourceFile"


# instance fields
.field private changeByteProbability:I

.field private duplicatePduProbability:I

.field private insertByteProbability:I

.field private final logger:Lorg/slf4j/Logger;

.field private manipulateReads:Z

.field private manipulateWrites:Z

.field private maxInsertByte:I

.field private removeByteProbability:I

.field private removePduProbability:I

.field private resendPduLasterProbability:I

.field private rng:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->removeByteProbability:I

    iput v0, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->insertByteProbability:I

    iput v0, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->changeByteProbability:I

    iput v0, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->removePduProbability:I

    iput v0, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->duplicatePduProbability:I

    iput v0, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->resendPduLasterProbability:I

    const/16 v1, 0xa

    iput v1, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->maxInsertByte:I

    iput-boolean v0, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->manipulateWrites:Z

    iput-boolean v0, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->manipulateReads:Z

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->rng:Ljava/util/Random;

    const-class v0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method private insertBytesToNewIoBuffer(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 5

    iget p1, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->insertByteProbability:I

    iget-object v0, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->rng:Ljava/util/Random;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-le p1, v0, :cond_3

    iget-object p1, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->getHexDump()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->rng:Ljava/util/Random;

    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iget-object v0, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->rng:Ljava/util/Random;

    iget v1, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->maxInsertByte:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_0

    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->get()B

    move-result v4

    invoke-virtual {v1, v4}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v2, v0, :cond_1

    iget-object p1, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->rng:Ljava/util/Random;

    const/16 v3, 0x100

    invoke-virtual {p1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    int-to-byte p1, p1

    invoke-virtual {v1, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result p1

    if-lez p1, :cond_2

    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->get()B

    move-result p1

    invoke-virtual {v1, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    iget-object p1, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->logger:Lorg/slf4j/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "Inserted "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->getHexDump()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    return-object v1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private manipulateIoBuffer(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 7

    .line 1
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x0

    .line 6
    const/16 v1, 0x3e8

    .line 7
    .line 8
    if-lez p1, :cond_3

    .line 9
    .line 10
    iget p1, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->removeByteProbability:I

    .line 11
    .line 12
    iget-object v2, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->rng:Ljava/util/Random;

    .line 13
    .line 14
    invoke-virtual {v2, v1}, Ljava/util/Random;->nextInt(I)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-le p1, v2, :cond_3

    .line 19
    .line 20
    iget-object p1, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->logger:Lorg/slf4j/Logger;

    .line 21
    .line 22
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->getHexDump()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-interface {p1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->rng:Ljava/util/Random;

    .line 30
    .line 31
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-virtual {p1, v2}, Ljava/util/Random;->nextInt(I)I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    iget-object v2, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->rng:Ljava/util/Random;

    .line 40
    .line 41
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    sub-int/2addr v3, p1

    .line 46
    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    add-int/lit8 v2, v2, 0x1

    .line 51
    .line 52
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-ne v2, v3, :cond_0

    .line 57
    .line 58
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    add-int/lit8 v2, v2, -0x1

    .line 63
    .line 64
    :cond_0
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    sub-int/2addr v3, v2

    .line 69
    invoke-static {v3}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    const/4 v4, 0x0

    .line 74
    :goto_0
    if-ge v4, p1, :cond_1

    .line 75
    .line 76
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->get()B

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    invoke-virtual {v3, v5}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 81
    .line 82
    .line 83
    add-int/lit8 v4, v4, 0x1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    invoke-virtual {p2, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->skip(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 87
    .line 88
    .line 89
    :goto_1
    invoke-virtual {v3}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    if-lez v4, :cond_2

    .line 94
    .line 95
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->get()B

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    invoke-virtual {v3, v4}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_2
    invoke-virtual {v3}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->rewind()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2, v3}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 113
    .line 114
    .line 115
    iget-object v3, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->logger:Lorg/slf4j/Logger;

    .line 116
    .line 117
    const-string v4, "Removed "

    .line 118
    .line 119
    const-string v5, " bytes at position "

    .line 120
    .line 121
    const-string v6, "."

    .line 122
    .line 123
    invoke-static {v4, v2, v5, p1, v6}, Ls/a;->b(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-interface {v3, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    iget-object p1, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->logger:Lorg/slf4j/Logger;

    .line 131
    .line 132
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->getHexDump()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-interface {p1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    :cond_3
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    if-lez p1, :cond_5

    .line 144
    .line 145
    iget p1, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->changeByteProbability:I

    .line 146
    .line 147
    iget-object v2, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->rng:Ljava/util/Random;

    .line 148
    .line 149
    invoke-virtual {v2, v1}, Ljava/util/Random;->nextInt(I)I

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-le p1, v1, :cond_5

    .line 154
    .line 155
    iget-object p1, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->logger:Lorg/slf4j/Logger;

    .line 156
    .line 157
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->getHexDump()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-interface {p1, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    iget-object p1, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->rng:Ljava/util/Random;

    .line 165
    .line 166
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    add-int/lit8 v1, v1, -0x1

    .line 171
    .line 172
    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    .line 173
    .line 174
    .line 175
    move-result p1

    .line 176
    add-int/lit8 p1, p1, 0x1

    .line 177
    .line 178
    new-array v1, p1, [B

    .line 179
    .line 180
    iget-object v2, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->rng:Ljava/util/Random;

    .line 181
    .line 182
    invoke-virtual {v2, v1}, Ljava/util/Random;->nextBytes([B)V

    .line 183
    .line 184
    .line 185
    :goto_2
    if-ge v0, p1, :cond_4

    .line 186
    .line 187
    iget-object v2, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->rng:Ljava/util/Random;

    .line 188
    .line 189
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    .line 190
    .line 191
    .line 192
    move-result v3

    .line 193
    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    aget-byte v3, v1, v0

    .line 198
    .line 199
    invoke-virtual {p2, v2, v3}, Lorg/apache/mina/core/buffer/IoBuffer;->put(IB)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 200
    .line 201
    .line 202
    add-int/lit8 v0, v0, 0x1

    .line 203
    .line 204
    goto :goto_2

    .line 205
    :cond_4
    iget-object v0, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->logger:Lorg/slf4j/Logger;

    .line 206
    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    const-string v2, "Modified "

    .line 210
    .line 211
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    const-string p1, " bytes."

    .line 218
    .line 219
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    iget-object p1, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->logger:Lorg/slf4j/Logger;

    .line 230
    .line 231
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->getHexDump()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object p2

    .line 235
    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    :cond_5
    return-void
.end method


# virtual methods
.method public filterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 3

    iget-boolean v0, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->manipulateWrites:Z

    if-eqz v0, :cond_2

    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v0, :cond_0

    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-direct {p0, p2, v0}, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->manipulateIoBuffer(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;)V

    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-direct {p0, p2, v0}, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->insertBytesToNewIoBuffer(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Lorg/apache/mina/core/write/DefaultWriteRequest;

    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getFuture()Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v2

    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getDestination()Ljava/net/SocketAddress;

    move-result-object p3

    invoke-direct {v1, v0, v2, p3}, Lorg/apache/mina/core/write/DefaultWriteRequest;-><init>(Ljava/lang/Object;Lorg/apache/mina/core/future/WriteFuture;Ljava/net/SocketAddress;)V

    move-object p3, v1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->duplicatePduProbability:I

    iget-object v1, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->rng:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    if-le v0, v1, :cond_1

    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterWrite(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    :cond_1
    iget-object v0, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->rng:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    iget v0, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->removePduProbability:I

    iget-object v1, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->rng:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    if-le v0, v1, :cond_2

    return-void

    :cond_2
    :goto_0
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterWrite(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    return-void
.end method

.method public getChangeByteProbability()I
    .locals 1

    iget v0, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->changeByteProbability:I

    return v0
.end method

.method public getDuplicatePduProbability()I
    .locals 1

    iget v0, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->duplicatePduProbability:I

    return v0
.end method

.method public getInsertByteProbability()I
    .locals 1

    iget v0, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->insertByteProbability:I

    return v0
.end method

.method public getMaxInsertByte()I
    .locals 1

    iget v0, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->maxInsertByte:I

    return v0
.end method

.method public getRemoveByteProbability()I
    .locals 1

    iget v0, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->removeByteProbability:I

    return v0
.end method

.method public getRemovePduProbability()I
    .locals 1

    iget v0, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->removePduProbability:I

    return v0
.end method

.method public getResendPduLasterProbability()I
    .locals 1

    iget v0, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->resendPduLasterProbability:I

    return v0
.end method

.method public isManipulateReads()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->manipulateReads:Z

    return v0
.end method

.method public isManipulateWrites()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->manipulateWrites:Z

    return v0
.end method

.method public messageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->manipulateReads:Z

    if-eqz v0, :cond_0

    instance-of v0, p3, Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-direct {p0, p2, v0}, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->manipulateIoBuffer(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;)V

    invoke-direct {p0, p2, v0}, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->insertBytesToNewIoBuffer(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p3, v0

    :cond_0
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageReceived(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    return-void
.end method

.method public setChangeByteProbability(I)V
    .locals 0

    iput p1, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->changeByteProbability:I

    return-void
.end method

.method public setDuplicatePduProbability(I)V
    .locals 0

    iput p1, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->duplicatePduProbability:I

    return-void
.end method

.method public setInsertByteProbability(I)V
    .locals 0

    iput p1, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->insertByteProbability:I

    return-void
.end method

.method public setManipulateReads(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->manipulateReads:Z

    return-void
.end method

.method public setManipulateWrites(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->manipulateWrites:Z

    return-void
.end method

.method public setMaxInsertByte(I)V
    .locals 0

    iput p1, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->maxInsertByte:I

    return-void
.end method

.method public setRemoveByteProbability(I)V
    .locals 0

    iput p1, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->removeByteProbability:I

    return-void
.end method

.method public setRemovePduProbability(I)V
    .locals 0

    iput p1, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->removePduProbability:I

    return-void
.end method

.method public setResendPduLasterProbability(I)V
    .locals 0

    iput p1, p0, Lorg/apache/mina/filter/errorgenerating/ErrorGeneratingFilter;->resendPduLasterProbability:I

    return-void
.end method
