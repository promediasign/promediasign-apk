.class public Lsk/mimac/slideshow/communication/udt/UdtEndpoint$IPv8inUdtProcessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk/mimac/slideshow/communication/udt/UdtEndpoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IPv8inUdtProcessor"
.end annotation


# instance fields
.field private final session:Ludt/UDTSession;

.field final synthetic this$0:Lsk/mimac/slideshow/communication/udt/UdtEndpoint;


# direct methods
.method public constructor <init>(Lsk/mimac/slideshow/communication/udt/UdtEndpoint;Ludt/UDTSession;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/communication/udt/UdtEndpoint$IPv8inUdtProcessor;->this$0:Lsk/mimac/slideshow/communication/udt/UdtEndpoint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lsk/mimac/slideshow/communication/udt/UdtEndpoint$IPv8inUdtProcessor;->session:Ludt/UDTSession;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lsk/mimac/slideshow/communication/udt/UdtEndpoint$IPv8inUdtProcessor;->session:Ludt/UDTSession;

    invoke-virtual {v0}, Ludt/UDTSession;->getSocket()Ludt/UDTSocket;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {v0}, Ludt/UDTSocket;->getInputStream()Ludt/UDTInputStream;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    new-instance v2, Lsk/mimac/slideshow/communication/Packet;

    iget-object v3, p0, Lsk/mimac/slideshow/communication/udt/UdtEndpoint$IPv8inUdtProcessor;->session:Ludt/UDTSession;

    invoke-virtual {v3}, Ludt/UDTSession;->getPeer()Lsk/mimac/slideshow/communication/Peer;

    move-result-object v3

    invoke-virtual {v3}, Lsk/mimac/slideshow/communication/Peer;->getAddress()Lsk/mimac/slideshow/communication/address/IPAddress;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lsk/mimac/slideshow/communication/Packet;-><init>(Lsk/mimac/slideshow/communication/address/IPAddress;[B)V

    iget-object v1, p0, Lsk/mimac/slideshow/communication/udt/UdtEndpoint$IPv8inUdtProcessor;->this$0:Lsk/mimac/slideshow/communication/udt/UdtEndpoint;

    invoke-static {v1}, Lsk/mimac/slideshow/communication/udt/UdtEndpoint;->access$400(Lsk/mimac/slideshow/communication/udt/UdtEndpoint;)Lsk/mimac/slideshow/communication/PacketListener;

    move-result-object v1

    invoke-interface {v1, v2}, Lsk/mimac/slideshow/communication/PacketListener;->onPacket(Lsk/mimac/slideshow/communication/Packet;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ludt/UDTSocket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {v0}, Ludt/UDTSocket;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_1
    invoke-static {}, Lsk/mimac/slideshow/communication/udt/UdtEndpoint;->access$100()Lorg/slf4j/Logger;

    move-result-object v1

    iget-object v2, p0, Lsk/mimac/slideshow/communication/udt/UdtEndpoint$IPv8inUdtProcessor;->session:Ludt/UDTSession;

    invoke-virtual {v2}, Ludt/UDTSession;->getPeer()Lsk/mimac/slideshow/communication/Peer;

    move-result-object v2

    const-string v3, "Can\'t process data from {}"

    invoke-interface {v1, v3, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    return-void
.end method
