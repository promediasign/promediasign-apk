.class Lcom/realtek/hardware/RtkHDMIRxRecorder$1;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/realtek/hardware/RtkHDMIRxRecorder;
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

    iput-object p1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder$1;->this$0:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2

    const-string v0, "RtkHDMIRxRecorder"

    const-string v1, "CameraDevice.StateCallback: onDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder$1;->this$0:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    invoke-static {v0}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->access$200(Lcom/realtek/hardware/RtkHDMIRxRecorder;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    iget-object p1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder$1;->this$0:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->access$002(Lcom/realtek/hardware/RtkHDMIRxRecorder;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 1

    const-string p2, "RtkHDMIRxRecorder"

    const-string v0, "CameraDevice.StateCallback: onError"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder$1;->this$0:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    invoke-static {p2}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->access$200(Lcom/realtek/hardware/RtkHDMIRxRecorder;)Ljava/util/concurrent/Semaphore;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/Semaphore;->release()V

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    iget-object p1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder$1;->this$0:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->access$002(Lcom/realtek/hardware/RtkHDMIRxRecorder;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2

    const-string v0, "RtkHDMIRxRecorder"

    const-string v1, "CameraDevice.StateCallback: onOpened"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder$1;->this$0:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    invoke-static {v0, p1}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->access$002(Lcom/realtek/hardware/RtkHDMIRxRecorder;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    iget-object p1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder$1;->this$0:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    invoke-static {p1}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->access$100(Lcom/realtek/hardware/RtkHDMIRxRecorder;)V

    iget-object p1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder$1;->this$0:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    invoke-static {p1}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->access$200(Lcom/realtek/hardware/RtkHDMIRxRecorder;)Ljava/util/concurrent/Semaphore;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method
