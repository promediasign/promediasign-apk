.class Lcom/realtek/hardware/RtkHDMIRxRecorder$7;
.super Lcom/realtek/hardware/RtkAudioRxSource$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/realtek/hardware/RtkHDMIRxRecorder;->setUpAudioRxSourceCallback(Landroid/os/Handler;)V
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

    iput-object p1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder$7;->this$0:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    invoke-direct {p0}, Lcom/realtek/hardware/RtkAudioRxSource$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioDataAvailable(JLjava/nio/ByteBuffer;)V
    .locals 2

    :goto_0
    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder$7;->this$0:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    invoke-static {v0}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->access$1500(Lcom/realtek/hardware/RtkHDMIRxRecorder;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder$7;->this$0:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    invoke-static {v0}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->access$1800(Lcom/realtek/hardware/RtkHDMIRxRecorder;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x32

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder$7;->this$0:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    invoke-static {v0}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->access$1900(Lcom/realtek/hardware/RtkHDMIRxRecorder;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    :cond_0
    const-wide/16 v0, 0x5

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder$7;->this$0:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    invoke-static {v0}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->access$1500(Lcom/realtek/hardware/RtkHDMIRxRecorder;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder$7;->this$0:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    invoke-static {v0}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->access$1800(Lcom/realtek/hardware/RtkHDMIRxRecorder;)Ljava/util/LinkedList;

    move-result-object v0

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder$7;->this$0:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    invoke-static {v1}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->access$1800(Lcom/realtek/hardware/RtkHDMIRxRecorder;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    iget-object p3, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder$7;->this$0:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    invoke-static {p3}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->access$1900(Lcom/realtek/hardware/RtkHDMIRxRecorder;)Ljava/util/LinkedList;

    move-result-object p3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
