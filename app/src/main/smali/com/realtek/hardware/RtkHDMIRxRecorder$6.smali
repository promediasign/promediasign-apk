.class Lcom/realtek/hardware/RtkHDMIRxRecorder$6;
.super Landroid/media/MediaCodec$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/realtek/hardware/RtkHDMIRxRecorder;->setUpAudioEncoderCallback(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/realtek/hardware/RtkHDMIRxRecorder;


# direct methods
.method public constructor <init>(Lcom/realtek/hardware/RtkHDMIRxRecorder;)V
    .locals 0

    iput-object p1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder$6;->this$0:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .locals 11

    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder$6;->this$0:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    invoke-static {v0}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->access$700(Lcom/realtek/hardware/RtkHDMIRxRecorder;)Landroid/media/MediaCodec;

    move-result-object v0

    monitor-enter v0

    :catch_0
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder$6;->this$0:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    invoke-static {v1}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->access$1500(Lcom/realtek/hardware/RtkHDMIRxRecorder;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder$6;->this$0:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    invoke-static {v1}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->access$1800(Lcom/realtek/hardware/RtkHDMIRxRecorder;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder$6;->this$0:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    invoke-static {v1}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->access$1900(Lcom/realtek/hardware/RtkHDMIRxRecorder;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v1, :cond_1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_1
    const-wide/16 v1, 0x5

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder$6;->this$0:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    invoke-static {v1}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->access$1500(Lcom/realtek/hardware/RtkHDMIRxRecorder;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const-wide/16 v7, 0x0

    const/4 v9, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    monitor-exit v0

    return-void

    :cond_2
    iget-object v1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder$6;->this$0:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    invoke-static {v1}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->access$1800(Lcom/realtek/hardware/RtkHDMIRxRecorder;)Ljava/util/LinkedList;

    move-result-object v1

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v2, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder$6;->this$0:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    invoke-static {v2}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->access$1800(Lcom/realtek/hardware/RtkHDMIRxRecorder;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder$6;->this$0:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    invoke-static {v3}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->access$1900(Lcom/realtek/hardware/RtkHDMIRxRecorder;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v7

    const/4 v10, 0x0

    const/4 v6, 0x0

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    :catchall_1
    move-exception p1

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p1

    :goto_2
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p1
.end method

.method public onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 4

    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder$6;->this$0:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    invoke-static {v0}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->access$700(Lcom/realtek/hardware/RtkHDMIRxRecorder;)Landroid/media/MediaCodec;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder$6;->this$0:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    invoke-static {v1}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->access$1400(Lcom/realtek/hardware/RtkHDMIRxRecorder;)Z

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder$6;->this$0:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    invoke-static {v1}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->access$1500(Lcom/realtek/hardware/RtkHDMIRxRecorder;)Z

    move-result v1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget v2, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v2, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v3, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v2, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder$6;->this$0:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    invoke-static {v2}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->access$1200(Lcom/realtek/hardware/RtkHDMIRxRecorder;)Landroid/media/MediaMuxer;

    move-result-object v2

    iget-object v3, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder$6;->this$0:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    invoke-static {v3}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->access$2000(Lcom/realtek/hardware/RtkHDMIRxRecorder;)I

    move-result v3

    invoke-virtual {v2, v3, v1, p3}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 3

    const-string p1, "AudioEncoder onOutputFormatChanged: New format = "

    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder$6;->this$0:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    invoke-static {v0}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->access$700(Lcom/realtek/hardware/RtkHDMIRxRecorder;)Landroid/media/MediaCodec;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v1, "RtkHDMIRxRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder$6;->this$0:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    invoke-static {p1}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->access$600(Lcom/realtek/hardware/RtkHDMIRxRecorder;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object p1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder$6;->this$0:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    invoke-static {p1}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->access$1200(Lcom/realtek/hardware/RtkHDMIRxRecorder;)Landroid/media/MediaMuxer;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->access$2002(Lcom/realtek/hardware/RtkHDMIRxRecorder;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder$6;->this$0:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    invoke-static {p1}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->access$900(Lcom/realtek/hardware/RtkHDMIRxRecorder;)Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V

    iget-object p1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder$6;->this$0:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    invoke-static {p1}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->access$1300(Lcom/realtek/hardware/RtkHDMIRxRecorder;)Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object p1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder$6;->this$0:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    invoke-static {p1}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->access$600(Lcom/realtek/hardware/RtkHDMIRxRecorder;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object p1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder$6;->this$0:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    invoke-static {p1}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->access$600(Lcom/realtek/hardware/RtkHDMIRxRecorder;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    goto :goto_0

    :goto_1
    const-string p1, "RtkHDMIRxRecorder"

    const-string p2, "AudioEncoder onOutputFormatChanged: add AudioTrack success!!!"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :goto_2
    iget-object p2, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder$6;->this$0:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    invoke-static {p2}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->access$600(Lcom/realtek/hardware/RtkHDMIRxRecorder;)Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :goto_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method
