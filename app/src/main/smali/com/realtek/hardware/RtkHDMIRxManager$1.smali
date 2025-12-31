.class Lcom/realtek/hardware/RtkHDMIRxManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/realtek/hardware/RtkHDMIRxManager;->handleEventFromNative(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/realtek/hardware/RtkHDMIRxManager;

.field final synthetic val$fEvent:I

.field final synthetic val$fValue:I


# direct methods
.method public constructor <init>(Lcom/realtek/hardware/RtkHDMIRxManager;II)V
    .locals 0

    iput-object p1, p0, Lcom/realtek/hardware/RtkHDMIRxManager$1;->this$0:Lcom/realtek/hardware/RtkHDMIRxManager;

    iput p2, p0, Lcom/realtek/hardware/RtkHDMIRxManager$1;->val$fEvent:I

    iput p3, p0, Lcom/realtek/hardware/RtkHDMIRxManager$1;->val$fValue:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIRxManager$1;->this$0:Lcom/realtek/hardware/RtkHDMIRxManager;

    iget-object v0, v0, Lcom/realtek/hardware/RtkHDMIRxManager;->mListener:Lcom/realtek/hardware/RtkHDMIRxManager$HDMIRxListener;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/realtek/hardware/RtkHDMIRxManager$1;->val$fEvent:I

    iget v2, p0, Lcom/realtek/hardware/RtkHDMIRxManager$1;->val$fValue:I

    invoke-interface {v0, v1, v2}, Lcom/realtek/hardware/RtkHDMIRxManager$HDMIRxListener;->onEvent(II)V

    :cond_0
    return-void
.end method
