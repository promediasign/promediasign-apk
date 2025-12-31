.class final Lcom/illposed/osc/OSCPacketDispatcher$SelectiveMessageListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/illposed/osc/OSCPacketDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SelectiveMessageListener"
.end annotation


# instance fields
.field private final listener:Lcom/illposed/osc/OSCMessageListener;

.field private final selector:Lcom/illposed/osc/MessageSelector;


# direct methods
.method public constructor <init>(Lcom/illposed/osc/MessageSelector;Lcom/illposed/osc/OSCMessageListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/illposed/osc/OSCPacketDispatcher$SelectiveMessageListener;->selector:Lcom/illposed/osc/MessageSelector;

    iput-object p2, p0, Lcom/illposed/osc/OSCPacketDispatcher$SelectiveMessageListener;->listener:Lcom/illposed/osc/OSCMessageListener;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/illposed/osc/OSCPacketDispatcher$SelectiveMessageListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/illposed/osc/OSCPacketDispatcher$SelectiveMessageListener;

    iget-object v0, p0, Lcom/illposed/osc/OSCPacketDispatcher$SelectiveMessageListener;->selector:Lcom/illposed/osc/MessageSelector;

    iget-object v2, p1, Lcom/illposed/osc/OSCPacketDispatcher$SelectiveMessageListener;->selector:Lcom/illposed/osc/MessageSelector;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/illposed/osc/OSCPacketDispatcher$SelectiveMessageListener;->listener:Lcom/illposed/osc/OSCMessageListener;

    iget-object p1, p1, Lcom/illposed/osc/OSCPacketDispatcher$SelectiveMessageListener;->listener:Lcom/illposed/osc/OSCMessageListener;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getListener()Lcom/illposed/osc/OSCMessageListener;
    .locals 1

    iget-object v0, p0, Lcom/illposed/osc/OSCPacketDispatcher$SelectiveMessageListener;->listener:Lcom/illposed/osc/OSCMessageListener;

    return-object v0
.end method

.method public getSelector()Lcom/illposed/osc/MessageSelector;
    .locals 1

    iget-object v0, p0, Lcom/illposed/osc/OSCPacketDispatcher$SelectiveMessageListener;->selector:Lcom/illposed/osc/MessageSelector;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/illposed/osc/OSCPacketDispatcher$SelectiveMessageListener;->selector:Lcom/illposed/osc/MessageSelector;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x26f

    mul-int/lit8 v0, v0, 0x59

    iget-object v1, p0, Lcom/illposed/osc/OSCPacketDispatcher$SelectiveMessageListener;->listener:Lcom/illposed/osc/OSCMessageListener;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method
