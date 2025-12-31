.class Lcom/realtek/hardware/RtkHDMIRxRecorder$2;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/realtek/hardware/RtkHDMIRxRecorder;->startPreview()V
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

    iput-object p1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder$2;->this$0:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    const-string p1, "RtkHDMIRxRecorder"

    const-string v0, "Failed"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder$2;->this$0:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    invoke-static {v0, p1}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->access$302(Lcom/realtek/hardware/RtkHDMIRxRecorder;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    iget-object p1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder$2;->this$0:Lcom/realtek/hardware/RtkHDMIRxRecorder;

    invoke-static {p1}, Lcom/realtek/hardware/RtkHDMIRxRecorder;->access$400(Lcom/realtek/hardware/RtkHDMIRxRecorder;)V

    return-void
.end method
