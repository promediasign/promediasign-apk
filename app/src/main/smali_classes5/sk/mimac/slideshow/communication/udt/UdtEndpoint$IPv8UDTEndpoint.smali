.class Lsk/mimac/slideshow/communication/udt/UdtEndpoint$IPv8UDTEndpoint;
.super Ludt/AbstractUDPEndPoint;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk/mimac/slideshow/communication/udt/UdtEndpoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IPv8UDTEndpoint"
.end annotation


# instance fields
.field final synthetic this$0:Lsk/mimac/slideshow/communication/udt/UdtEndpoint;


# direct methods
.method public constructor <init>(Lsk/mimac/slideshow/communication/udt/UdtEndpoint;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/communication/udt/UdtEndpoint$IPv8UDTEndpoint;->this$0:Lsk/mimac/slideshow/communication/udt/UdtEndpoint;

    invoke-direct {p0}, Ludt/AbstractUDPEndPoint;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Ludt/AbstractUDPEndPoint;->serverSocketMode:Z

    return-void
.end method


# virtual methods
.method public acceptSession(Ludt/UDTSession;)V
    .locals 3

    invoke-virtual {p1}, Ludt/UDTSession;->getMethodId()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lsk/mimac/slideshow/communication/udt/UdtEndpoint$IPv8UDTEndpoint;->this$0:Lsk/mimac/slideshow/communication/udt/UdtEndpoint;

    invoke-static {v0}, Lsk/mimac/slideshow/communication/udt/UdtEndpoint;->access$200(Lsk/mimac/slideshow/communication/udt/UdtEndpoint;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lsk/mimac/slideshow/communication/udt/UdtEndpoint$IPv8inUdtProcessor;

    iget-object v2, p0, Lsk/mimac/slideshow/communication/udt/UdtEndpoint$IPv8UDTEndpoint;->this$0:Lsk/mimac/slideshow/communication/udt/UdtEndpoint;

    invoke-direct {v1, v2, p1}, Lsk/mimac/slideshow/communication/udt/UdtEndpoint$IPv8inUdtProcessor;-><init>(Lsk/mimac/slideshow/communication/udt/UdtEndpoint;Ludt/UDTSession;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lsk/mimac/slideshow/communication/udt/UdtEndpoint$IPv8UDTEndpoint;->this$0:Lsk/mimac/slideshow/communication/udt/UdtEndpoint;

    invoke-static {v0}, Lsk/mimac/slideshow/communication/udt/UdtEndpoint;->access$300(Lsk/mimac/slideshow/communication/udt/UdtEndpoint;)Lsk/mimac/slideshow/communication/udt/UdtEndpoint$SessionConsumer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsk/mimac/slideshow/communication/udt/UdtEndpoint$IPv8UDTEndpoint;->this$0:Lsk/mimac/slideshow/communication/udt/UdtEndpoint;

    invoke-static {v0}, Lsk/mimac/slideshow/communication/udt/UdtEndpoint;->access$300(Lsk/mimac/slideshow/communication/udt/UdtEndpoint;)Lsk/mimac/slideshow/communication/udt/UdtEndpoint$SessionConsumer;

    move-result-object v0

    check-cast v0, Lsk/mimac/slideshow/communication/a;

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/communication/a;->a(Ludt/UDTSession;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lsk/mimac/slideshow/communication/udt/UdtEndpoint;->access$100()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Nobody to accept session from {}"

    invoke-virtual {p1}, Ludt/UDTSession;->getPeer()Lsk/mimac/slideshow/communication/Peer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ludt/UDTSession;->getSocket()Ludt/UDTSocket;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    :goto_0
    return-void
.end method

.method public doSend(Ludt/UDTPacket;)V
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/communication/udt/UdtEndpoint$IPv8UDTEndpoint;->this$0:Lsk/mimac/slideshow/communication/udt/UdtEndpoint;

    invoke-static {v0}, Lsk/mimac/slideshow/communication/udt/UdtEndpoint;->access$000(Lsk/mimac/slideshow/communication/udt/UdtEndpoint;)Ljava/net/DatagramSocket;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lsk/mimac/slideshow/communication/udt/UdtEndpoint;->access$100()Lorg/slf4j/Logger;

    move-result-object p1

    const-string v0, "UDT socket is missing"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {p1}, Ludt/UDTPacket;->getEncoded()[B

    move-result-object v0

    invoke-interface {p1}, Ludt/UDTPacket;->getSession()Ludt/UDTSession;

    move-result-object p1

    invoke-virtual {p1}, Ludt/UDTSession;->getDatagram()Ljava/net/DatagramPacket;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setData([B)V

    iget-object v0, p0, Lsk/mimac/slideshow/communication/udt/UdtEndpoint$IPv8UDTEndpoint;->this$0:Lsk/mimac/slideshow/communication/udt/UdtEndpoint;

    invoke-static {v0}, Lsk/mimac/slideshow/communication/udt/UdtEndpoint;->access$000(Lsk/mimac/slideshow/communication/udt/UdtEndpoint;)Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    return-void
.end method
