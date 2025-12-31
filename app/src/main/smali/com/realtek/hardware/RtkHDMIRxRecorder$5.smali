.class Lcom/realtek/hardware/RtkHDMIRxRecorder$5;
.super Landroid/media/MediaCodec$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/realtek/hardware/RtkHDMIRxRecorder;->setUpVideoEncoderCallback(Landroid/os/Handler;)V
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

    iput-object p1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder$5;->this$0:Lcom/realtek/hardware/RtkHDMIRxRecorder;

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
    .locals 0

    return-void
.end method

.method public onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 8

    const-string v0, "VideoEncoder FirstVideoFrameTimeUs = "

    iget-object v1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder$5;->this$0:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    invoke-static {v1}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->access$1000(Lcom/realtek/hardware/RtkHDMIRxRecorder;)Landroid/media/MediaCodec;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder$5;->this$0:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    invoke-static {v2}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->access$1400(Lcom/realtek/hardware/RtkHDMIRxRecorder;)Z

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder$5;->this$0:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    invoke-static {v2}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->access$1500(Lcom/realtek/hardware/RtkHDMIRxRecorder;)Z

    move-result v2

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder$5;->this$0:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    invoke-static {v2}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->access$1600(Lcom/realtek/hardware/RtkHDMIRxRecorder;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-gez v2, :cond_1

    iget v2, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder$5;->this$0:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    iget-wide v3, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-static {v2, v3, v4}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->access$1602(Lcom/realtek/hardware/RtkHDMIRxRecorder;J)J

    const-string v2, "RtkHDMIRxRecorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder$5;->this$0:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    invoke-static {v0}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->access$1600(Lcom/realtek/hardware/RtkHDMIRxRecorder;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    iget-wide v2, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder$5;->this$0:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    invoke-static {v0}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->access$1600(Lcom/realtek/hardware/RtkHDMIRxRecorder;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v2, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v2, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v3, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v2, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder$5;->this$0:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    invoke-static {v2}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->access$1200(Lcom/realtek/hardware/RtkHDMIRxRecorder;)Landroid/media/MediaMuxer;

    move-result-object v2

    iget-object v3, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder$5;->this$0:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    invoke-static {v3}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->access$1700(Lcom/realtek/hardware/RtkHDMIRxRecorder;)I

    move-result v3

    invoke-virtual {v2, v3, v0, p3}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    monitor-exit v1

    return-void

    :cond_2
    :goto_1
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 3

    const-string p1, "VideoEncoder onOutputFormatChanged: New format = "

    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder$5;->this$0:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    invoke-static {v0}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->access$1000(Lcom/realtek/hardware/RtkHDMIRxRecorder;)Landroid/media/MediaCodec;

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

    iget-object p1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder$5;->this$0:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    invoke-static {p1}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->access$600(Lcom/realtek/hardware/RtkHDMIRxRecorder;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object p1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder$5;->this$0:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    invoke-static {p1}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->access$1200(Lcom/realtek/hardware/RtkHDMIRxRecorder;)Landroid/media/MediaMuxer;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->access$1702(Lcom/realtek/hardware/RtkHDMIRxRecorder;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder$5;->this$0:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    invoke-static {p1}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->access$1100(Lcom/realtek/hardware/RtkHDMIRxRecorder;)Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V

    iget-object p1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder$5;->this$0:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    invoke-static {p1}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->access$1300(Lcom/realtek/hardware/RtkHDMIRxRecorder;)Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object p1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder$5;->this$0:Lcom/realtek/hardware/RtkHDMIRxRecorder;

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
    iget-object p1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder$5;->this$0:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    invoke-static {p1}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->access$600(Lcom/realtek/hardware/RtkHDMIRxRecorder;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    goto :goto_0

    :goto_1
    const-string p1, "RtkHDMIRxRecorder"

    const-string p2, "VideoEncoder onOutputFormatChanged: add VideoTrack success!!!"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :goto_2
    iget-object p2, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder$5;->this$0:Lcom/realtek/hardware/RtkHDMIRxRecorder;

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
