.class Lcom/realtek/hardware/RtkDPTxManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/realtek/hardware/RtkDPTxManager;->onHandleDPTxEvent(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/realtek/hardware/RtkDPTxManager;

.field final synthetic val$event:I


# direct methods
.method public constructor <init>(Lcom/realtek/hardware/RtkDPTxManager;I)V
    .locals 0

    iput-object p1, p0, Lcom/realtek/hardware/RtkDPTxManager$1;->this$0:Lcom/realtek/hardware/RtkDPTxManager;

    iput p2, p0, Lcom/realtek/hardware/RtkDPTxManager$1;->val$event:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/realtek/hardware/RtkDPTxManager$1;->this$0:Lcom/realtek/hardware/RtkDPTxManager;

    invoke-static {v0}, Lcom/realtek/hardware/RtkDPTxManager;->access$100(Lcom/realtek/hardware/RtkDPTxManager;)V

    iget-object v0, p0, Lcom/realtek/hardware/RtkDPTxManager$1;->this$0:Lcom/realtek/hardware/RtkDPTxManager;

    invoke-virtual {v0}, Lcom/realtek/hardware/RtkDPTxManager;->getVideoFormat()[I

    iget-object v0, p0, Lcom/realtek/hardware/RtkDPTxManager$1;->this$0:Lcom/realtek/hardware/RtkDPTxManager;

    invoke-static {v0}, Lcom/realtek/hardware/RtkDPTxManager;->access$200(Lcom/realtek/hardware/RtkDPTxManager;)Lcom/realtek/hardware/RtkDPTxManager$EventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/realtek/hardware/RtkDPTxManager$1;->this$0:Lcom/realtek/hardware/RtkDPTxManager;

    invoke-static {v0}, Lcom/realtek/hardware/RtkDPTxManager;->access$200(Lcom/realtek/hardware/RtkDPTxManager;)Lcom/realtek/hardware/RtkDPTxManager$EventListener;

    move-result-object v0

    iget v1, p0, Lcom/realtek/hardware/RtkDPTxManager$1;->val$event:I

    invoke-interface {v0, v1}, Lcom/realtek/hardware/RtkDPTxManager$EventListener;->onEvent(I)V

    :cond_0
    return-void
.end method
