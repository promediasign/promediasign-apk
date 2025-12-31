.class Lcom/illposed/osc/OSCPacketDispatcher$BundleDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/illposed/osc/OSCPacketDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BundleDispatcher"
.end annotation


# instance fields
.field private final bundle:Lcom/illposed/osc/OSCBundle;

.field private final source:Ljava/lang/Object;

.field final synthetic this$0:Lcom/illposed/osc/OSCPacketDispatcher;


# direct methods
.method public constructor <init>(Lcom/illposed/osc/OSCPacketDispatcher;Ljava/lang/Object;Lcom/illposed/osc/OSCBundle;)V
    .locals 0

    iput-object p1, p0, Lcom/illposed/osc/OSCPacketDispatcher$BundleDispatcher;->this$0:Lcom/illposed/osc/OSCPacketDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/illposed/osc/OSCPacketDispatcher$BundleDispatcher;->source:Ljava/lang/Object;

    iput-object p3, p0, Lcom/illposed/osc/OSCPacketDispatcher$BundleDispatcher;->bundle:Lcom/illposed/osc/OSCBundle;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/illposed/osc/OSCPacketDispatcher$BundleDispatcher;->this$0:Lcom/illposed/osc/OSCPacketDispatcher;

    iget-object v1, p0, Lcom/illposed/osc/OSCPacketDispatcher$BundleDispatcher;->source:Ljava/lang/Object;

    iget-object v2, p0, Lcom/illposed/osc/OSCPacketDispatcher$BundleDispatcher;->bundle:Lcom/illposed/osc/OSCBundle;

    invoke-static {v0, v1, v2}, Lcom/illposed/osc/OSCPacketDispatcher;->access$100(Lcom/illposed/osc/OSCPacketDispatcher;Ljava/lang/Object;Lcom/illposed/osc/OSCBundle;)V

    return-void
.end method
