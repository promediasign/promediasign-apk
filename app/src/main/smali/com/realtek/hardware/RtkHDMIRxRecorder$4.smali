.class Lcom/realtek/hardware/RtkHDMIRxRecorder$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/realtek/hardware/RtkHDMIRxRecorder;->startVideoAudioEncoder()V
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

    iput-object p1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder$4;->this$0:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder$4;->this$0:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    invoke-static {v0}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->access$600(Lcom/realtek/hardware/RtkHDMIRxRecorder;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder$4;->this$0:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    invoke-static {v0}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->access$700(Lcom/realtek/hardware/RtkHDMIRxRecorder;)Landroid/media/MediaCodec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder$4;->this$0:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    invoke-static {v0}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->access$800(Lcom/realtek/hardware/RtkHDMIRxRecorder;)Lcom/realtek/hardware/RtkAudioRxSource;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/realtek/hardware/RtkAudioRxSource;->setHDMIRxAudioRecord(Z)Z

    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder$4;->this$0:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    invoke-static {v0}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->access$900(Lcom/realtek/hardware/RtkHDMIRxRecorder;)Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V

    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder$4;->this$0:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    invoke-static {v0}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->access$1000(Lcom/realtek/hardware/RtkHDMIRxRecorder;)Landroid/media/MediaCodec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder$4;->this$0:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    invoke-static {v0}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->access$1100(Lcom/realtek/hardware/RtkHDMIRxRecorder;)Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V

    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder$4;->this$0:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    invoke-static {v0}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->access$1200(Lcom/realtek/hardware/RtkHDMIRxRecorder;)Landroid/media/MediaMuxer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder$4;->this$0:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    invoke-static {v0}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->access$1300(Lcom/realtek/hardware/RtkHDMIRxRecorder;)Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    const-string v0, "RtkHDMIRxRecorder"

    const-string v1, "MediaMuxer start success !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder$4;->this$0:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    invoke-static {v0}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->access$600(Lcom/realtek/hardware/RtkHDMIRxRecorder;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    iget-object v1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder$4;->this$0:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    invoke-static {v1}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->access$600(Lcom/realtek/hardware/RtkHDMIRxRecorder;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
