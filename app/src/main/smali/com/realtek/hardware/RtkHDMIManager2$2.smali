.class Lcom/realtek/hardware/RtkHDMIManager2$2;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/realtek/hardware/RtkHDMIManager2;->setTVSystem(I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/realtek/hardware/RtkHDMIManager2;

.field final synthetic val$tvSystem:I


# direct methods
.method public constructor <init>(Lcom/realtek/hardware/RtkHDMIManager2;I)V
    .locals 0

    iput-object p1, p0, Lcom/realtek/hardware/RtkHDMIManager2$2;->this$0:Lcom/realtek/hardware/RtkHDMIManager2;

    iput p2, p0, Lcom/realtek/hardware/RtkHDMIManager2$2;->val$tvSystem:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIManager2$2;->this$0:Lcom/realtek/hardware/RtkHDMIManager2;

    invoke-virtual {v0}, Lcom/realtek/hardware/RtkHDMIManager2;->checkIfHDMIPlugged()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIManager2$2;->this$0:Lcom/realtek/hardware/RtkHDMIManager2;

    iget v1, p0, Lcom/realtek/hardware/RtkHDMIManager2$2;->val$tvSystem:I

    invoke-static {v0, v1}, Lcom/realtek/hardware/RtkHDMIManager2;->access$1100(Lcom/realtek/hardware/RtkHDMIManager2;I)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIManager2$2;->this$0:Lcom/realtek/hardware/RtkHDMIManager2;

    invoke-static {v0}, Lcom/realtek/hardware/RtkHDMIManager2;->access$200(Lcom/realtek/hardware/RtkHDMIManager2;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIManager2$2;->this$0:Lcom/realtek/hardware/RtkHDMIManager2;

    iget v1, p0, Lcom/realtek/hardware/RtkHDMIManager2$2;->val$tvSystem:I

    invoke-static {v0, v1}, Lcom/realtek/hardware/RtkHDMIManager2;->access$1200(Lcom/realtek/hardware/RtkHDMIManager2;I)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/realtek/hardware/RtkHDMIManager2$2;->this$0:Lcom/realtek/hardware/RtkHDMIManager2;

    iget v1, p0, Lcom/realtek/hardware/RtkHDMIManager2$2;->val$tvSystem:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/realtek/hardware/RtkHDMIManager2;->access$1000(Lcom/realtek/hardware/RtkHDMIManager2;IZ)I

    :goto_0
    return-void
.end method
