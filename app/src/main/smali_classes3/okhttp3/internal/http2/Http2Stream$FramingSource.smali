.class final Lokhttp3/internal/http2/Http2Stream$FramingSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/Http2Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FramingSource"
.end annotation


# instance fields
.field closed:Z

.field finished:Z

.field private final maxByteCount:J

.field private final readBuffer:Lokio/Buffer;

.field private final receiveBuffer:Lokio/Buffer;

.field final synthetic this$0:Lokhttp3/internal/http2/Http2Stream;


# direct methods
.method public constructor <init>(Lokhttp3/internal/http2/Http2Stream;J)V
    .locals 0

    iput-object p1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lokio/Buffer;

    invoke-direct {p1}, Lokio/Buffer;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->receiveBuffer:Lokio/Buffer;

    new-instance p1, Lokio/Buffer;

    invoke-direct {p1}, Lokio/Buffer;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    iput-wide p2, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->maxByteCount:J

    return-void
.end method

.method private updateConnectionFlowControl(J)V
    .locals 1

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v0, v0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p1, p2}, Lokhttp3/internal/http2/Http2Connection;->updateConnectionFlowControl(J)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 5

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->closed:Z

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v1

    iget-object v3, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->clear()V

    iget-object v3, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-static {v3}, Lokhttp3/internal/http2/Http2Stream;->access$000(Lokhttp3/internal/http2/Http2Stream;)Ljava/util/Deque;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-static {v3}, Lokhttp3/internal/http2/Http2Stream;->access$100(Lokhttp3/internal/http2/Http2Stream;)Lokhttp3/internal/http2/Header$Listener;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-lez v0, :cond_1

    invoke-direct {p0, v1, v2}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->updateConnectionFlowControl(J)V

    :cond_1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Stream;->cancelStreamIfNecessary()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public read(Lokio/Buffer;J)J
    .locals 11

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p2, v0

    .line 4
    .line 5
    if-ltz v2, :cond_8

    .line 6
    .line 7
    :goto_0
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    .line 8
    .line 9
    monitor-enter v2

    .line 10
    :try_start_0
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    .line 11
    .line 12
    iget-object v3, v3, Lokhttp3/internal/http2/Http2Stream;->readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    .line 13
    .line 14
    invoke-virtual {v3}, Lokio/AsyncTimeout;->enter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    .line 16
    .line 17
    :try_start_1
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    .line 18
    .line 19
    iget-object v4, v3, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    .line 20
    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    const/4 v4, 0x0

    .line 25
    :goto_1
    iget-boolean v5, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->closed:Z

    .line 26
    .line 27
    if-nez v5, :cond_7

    .line 28
    .line 29
    invoke-static {v3}, Lokhttp3/internal/http2/Http2Stream;->access$000(Lokhttp3/internal/http2/Http2Stream;)Ljava/util/Deque;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-nez v3, :cond_1

    .line 38
    .line 39
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    .line 40
    .line 41
    invoke-static {v3}, Lokhttp3/internal/http2/Http2Stream;->access$100(Lokhttp3/internal/http2/Http2Stream;)Lokhttp3/internal/http2/Header$Listener;

    .line 42
    .line 43
    .line 44
    goto :goto_2

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    goto/16 :goto_4

    .line 47
    .line 48
    :cond_1
    :goto_2
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    .line 49
    .line 50
    invoke-virtual {v3}, Lokio/Buffer;->size()J

    .line 51
    .line 52
    .line 53
    move-result-wide v5

    .line 54
    const-wide/16 v7, -0x1

    .line 55
    .line 56
    cmp-long v3, v5, v0

    .line 57
    .line 58
    if-lez v3, :cond_2

    .line 59
    .line 60
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    .line 61
    .line 62
    invoke-virtual {v3}, Lokio/Buffer;->size()J

    .line 63
    .line 64
    .line 65
    move-result-wide v5

    .line 66
    invoke-static {p2, p3, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 67
    .line 68
    .line 69
    move-result-wide p2

    .line 70
    invoke-virtual {v3, p1, p2, p3}, Lokio/Buffer;->read(Lokio/Buffer;J)J

    .line 71
    .line 72
    .line 73
    move-result-wide p1

    .line 74
    iget-object p3, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    .line 75
    .line 76
    iget-wide v5, p3, Lokhttp3/internal/http2/Http2Stream;->unacknowledgedBytesRead:J

    .line 77
    .line 78
    add-long/2addr v5, p1

    .line 79
    iput-wide v5, p3, Lokhttp3/internal/http2/Http2Stream;->unacknowledgedBytesRead:J

    .line 80
    .line 81
    if-nez v4, :cond_4

    .line 82
    .line 83
    iget-object p3, p3, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    .line 84
    .line 85
    iget-object p3, p3, Lokhttp3/internal/http2/Http2Connection;->okHttpSettings:Lokhttp3/internal/http2/Settings;

    .line 86
    .line 87
    invoke-virtual {p3}, Lokhttp3/internal/http2/Settings;->getInitialWindowSize()I

    .line 88
    .line 89
    .line 90
    move-result p3

    .line 91
    div-int/lit8 p3, p3, 0x2

    .line 92
    .line 93
    int-to-long v9, p3

    .line 94
    cmp-long p3, v5, v9

    .line 95
    .line 96
    if-ltz p3, :cond_4

    .line 97
    .line 98
    iget-object p3, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    .line 99
    .line 100
    iget-object v3, p3, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    .line 101
    .line 102
    iget v5, p3, Lokhttp3/internal/http2/Http2Stream;->id:I

    .line 103
    .line 104
    iget-wide v9, p3, Lokhttp3/internal/http2/Http2Stream;->unacknowledgedBytesRead:J

    .line 105
    .line 106
    invoke-virtual {v3, v5, v9, v10}, Lokhttp3/internal/http2/Http2Connection;->writeWindowUpdateLater(IJ)V

    .line 107
    .line 108
    .line 109
    iget-object p3, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    .line 110
    .line 111
    iput-wide v0, p3, Lokhttp3/internal/http2/Http2Stream;->unacknowledgedBytesRead:J

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_2
    iget-boolean v3, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    .line 115
    .line 116
    if-nez v3, :cond_3

    .line 117
    .line 118
    if-nez v4, :cond_3

    .line 119
    .line 120
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    .line 121
    .line 122
    invoke-virtual {v3}, Lokhttp3/internal/http2/Http2Stream;->waitForIo()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    .line 124
    .line 125
    :try_start_2
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    .line 126
    .line 127
    iget-object v3, v3, Lokhttp3/internal/http2/Http2Stream;->readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    .line 128
    .line 129
    invoke-virtual {v3}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .line 130
    .line 131
    .line 132
    monitor-exit v2

    .line 133
    goto :goto_0

    .line 134
    :catchall_1
    move-exception p1

    .line 135
    goto :goto_5

    .line 136
    :cond_3
    move-wide p1, v7

    .line 137
    :cond_4
    :goto_3
    iget-object p3, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    .line 138
    .line 139
    iget-object p3, p3, Lokhttp3/internal/http2/Http2Stream;->readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    .line 140
    .line 141
    invoke-virtual {p3}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .line 142
    .line 143
    .line 144
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 145
    cmp-long p3, p1, v7

    .line 146
    .line 147
    if-eqz p3, :cond_5

    .line 148
    .line 149
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->updateConnectionFlowControl(J)V

    .line 150
    .line 151
    .line 152
    return-wide p1

    .line 153
    :cond_5
    if-nez v4, :cond_6

    .line 154
    .line 155
    return-wide v7

    .line 156
    :cond_6
    new-instance p1, Lokhttp3/internal/http2/StreamResetException;

    .line 157
    .line 158
    invoke-direct {p1, v4}, Lokhttp3/internal/http2/StreamResetException;-><init>(Lokhttp3/internal/http2/ErrorCode;)V

    .line 159
    .line 160
    .line 161
    throw p1

    .line 162
    :cond_7
    :try_start_3
    new-instance p1, Ljava/io/IOException;

    .line 163
    .line 164
    const-string p2, "stream closed"

    .line 165
    .line 166
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 170
    :goto_4
    :try_start_4
    iget-object p2, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    .line 171
    .line 172
    iget-object p2, p2, Lokhttp3/internal/http2/Http2Stream;->readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    .line 173
    .line 174
    invoke-virtual {p2}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .line 175
    .line 176
    .line 177
    throw p1

    .line 178
    :goto_5
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 179
    throw p1

    .line 180
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 181
    .line 182
    const-string v0, "byteCount < 0: "

    .line 183
    .line 184
    invoke-static {v0, p2, p3}, Lorg/apache/ftpserver/main/a;->h(Ljava/lang/String;J)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p2

    .line 188
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    throw p1
.end method

.method public receive(Lokio/BufferedSource;J)V
    .locals 11

    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_8

    iget-object v2, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    monitor-enter v2

    :try_start_0
    iget-boolean v3, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    iget-object v4, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v4

    add-long/2addr v4, p2

    iget-wide v6, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->maxByteCount:J

    const/4 v8, 0x0

    const/4 v9, 0x1

    cmp-long v10, v4, v6

    if-lez v10, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_2

    invoke-interface {p1, p2, p3}, Lokio/BufferedSource;->skip(J)V

    iget-object p1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    sget-object p2, Lokhttp3/internal/http2/ErrorCode;->FLOW_CONTROL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {p1, p2}, Lokhttp3/internal/http2/Http2Stream;->closeLater(Lokhttp3/internal/http2/ErrorCode;)V

    return-void

    :cond_2
    if-eqz v3, :cond_3

    invoke-interface {p1, p2, p3}, Lokio/BufferedSource;->skip(J)V

    return-void

    :cond_3
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->receiveBuffer:Lokio/Buffer;

    invoke-interface {p1, v2, p2, p3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_7

    sub-long/2addr p2, v2

    iget-object v2, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    monitor-enter v2

    :try_start_1
    iget-boolean v3, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->closed:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->receiveBuffer:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v3

    iget-object v5, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->receiveBuffer:Lokio/Buffer;

    invoke-virtual {v5}, Lokio/Buffer;->clear()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_4
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v3

    cmp-long v5, v3, v0

    if-nez v5, :cond_5

    const/4 v8, 0x1

    :cond_5
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    iget-object v4, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->receiveBuffer:Lokio/Buffer;

    invoke-virtual {v3, v4}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    if-eqz v8, :cond_6

    iget-object v3, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    :cond_6
    move-wide v3, v0

    :goto_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v2, v3, v0

    if-lez v2, :cond_0

    invoke-direct {p0, v3, v4}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->updateConnectionFlowControl(J)V

    goto :goto_0

    :goto_3
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_7
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_8
    return-void
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v0, v0, Lokhttp3/internal/http2/Http2Stream;->readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    return-object v0
.end method
