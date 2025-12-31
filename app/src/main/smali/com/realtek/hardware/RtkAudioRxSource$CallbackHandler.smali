.class Lcom/realtek/hardware/RtkAudioRxSource$CallbackHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/realtek/hardware/RtkAudioRxSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CallbackHandler"
.end annotation


# instance fields
.field private mSource:Lcom/realtek/hardware/RtkAudioRxSource;

.field final synthetic this$0:Lcom/realtek/hardware/RtkAudioRxSource;


# direct methods
.method public constructor <init>(Lcom/realtek/hardware/RtkAudioRxSource;Lcom/realtek/hardware/RtkAudioRxSource;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/realtek/hardware/RtkAudioRxSource$CallbackHandler;->this$0:Lcom/realtek/hardware/RtkAudioRxSource;

    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/realtek/hardware/RtkAudioRxSource$CallbackHandler;->mSource:Lcom/realtek/hardware/RtkAudioRxSource;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget-object v0, p0, Lcom/realtek/hardware/RtkAudioRxSource$CallbackHandler;->this$0:Lcom/realtek/hardware/RtkAudioRxSource;

    invoke-static {v0}, Lcom/realtek/hardware/RtkAudioRxSource;->access$000(Lcom/realtek/hardware/RtkAudioRxSource;)Lcom/realtek/hardware/RtkAudioRxSource$Callback;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    int-to-long v0, v0

    iget v2, p1, Landroid/os/Message;->arg2:I

    int-to-long v2, v2

    const-wide/32 v4, 0xf4240

    mul-long v0, v0, v4

    add-long/2addr v0, v2

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/realtek/hardware/RtkAudioRxSource$CallbackHandler;->this$0:Lcom/realtek/hardware/RtkAudioRxSource;

    invoke-static {v2}, Lcom/realtek/hardware/RtkAudioRxSource;->access$000(Lcom/realtek/hardware/RtkAudioRxSource;)Lcom/realtek/hardware/RtkAudioRxSource$Callback;

    move-result-object v2

    invoke-virtual {v2, v0, v1, p1}, Lcom/realtek/hardware/RtkAudioRxSource$Callback;->onAudioDataAvailable(JLjava/nio/ByteBuffer;)V

    :goto_0
    return-void
.end method
