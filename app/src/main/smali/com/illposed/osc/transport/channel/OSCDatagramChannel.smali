.class public Lcom/illposed/osc/transport/channel/OSCDatagramChannel;
.super Ljava/nio/channels/SelectableChannel;
.source "SourceFile"


# instance fields
.field private final parser:Lcom/illposed/osc/OSCParser;

.field private final serializerBuilder:Lcom/illposed/osc/OSCSerializerAndParserBuilder;

.field private final underlyingChannel:Ljava/nio/channels/DatagramChannel;


# direct methods
.method public constructor <init>(Ljava/nio/channels/DatagramChannel;Lcom/illposed/osc/OSCSerializerAndParserBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/nio/channels/SelectableChannel;-><init>()V

    iput-object p1, p0, Lcom/illposed/osc/transport/channel/OSCDatagramChannel;->underlyingChannel:Ljava/nio/channels/DatagramChannel;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/illposed/osc/OSCSerializerAndParserBuilder;->buildParser()Lcom/illposed/osc/OSCParser;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/illposed/osc/transport/channel/OSCDatagramChannel;->parser:Lcom/illposed/osc/OSCParser;

    iput-object p2, p0, Lcom/illposed/osc/transport/channel/OSCDatagramChannel;->serializerBuilder:Lcom/illposed/osc/OSCSerializerAndParserBuilder;

    return-void
.end method


# virtual methods
.method public blockingLock()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/illposed/osc/transport/channel/OSCDatagramChannel;->underlyingChannel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SelectableChannel;->blockingLock()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    .locals 1

    iget-object v0, p0, Lcom/illposed/osc/transport/channel/OSCDatagramChannel;->underlyingChannel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/SelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    move-result-object p1

    return-object p1
.end method

.method public implCloseChannel()V
    .locals 1

    iget-object v0, p0, Lcom/illposed/osc/transport/channel/OSCDatagramChannel;->underlyingChannel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    return-void
.end method

.method public isBlocking()Z
    .locals 1

    iget-object v0, p0, Lcom/illposed/osc/transport/channel/OSCDatagramChannel;->underlyingChannel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SelectableChannel;->isBlocking()Z

    move-result v0

    return v0
.end method

.method public isRegistered()Z
    .locals 1

    iget-object v0, p0, Lcom/illposed/osc/transport/channel/OSCDatagramChannel;->underlyingChannel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SelectableChannel;->isRegistered()Z

    move-result v0

    return v0
.end method

.method public keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;
    .locals 1

    iget-object v0, p0, Lcom/illposed/osc/transport/channel/OSCDatagramChannel;->underlyingChannel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/SelectableChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object p1

    return-object p1
.end method

.method public provider()Ljava/nio/channels/spi/SelectorProvider;
    .locals 1

    iget-object v0, p0, Lcom/illposed/osc/transport/channel/OSCDatagramChannel;->underlyingChannel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SelectableChannel;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/nio/ByteBuffer;)Lcom/illposed/osc/OSCPacket;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->begin()V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/illposed/osc/transport/channel/OSCDatagramChannel;->underlyingChannel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/illposed/osc/transport/channel/OSCDatagramChannel;->underlyingChannel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/DatagramChannel;->read(Ljava/nio/ByteBuffer;)I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/illposed/osc/transport/channel/OSCDatagramChannel;->underlyingChannel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/DatagramChannel;->receive(Ljava/nio/ByteBuffer;)Ljava/net/SocketAddress;

    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/illposed/osc/transport/channel/OSCDatagramChannel;->parser:Lcom/illposed/osc/OSCParser;

    invoke-virtual {v0, p1}, Lcom/illposed/osc/OSCParser;->convert(Ljava/nio/ByteBuffer;)Lcom/illposed/osc/OSCPacket;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->end(Z)V

    return-object p1

    :cond_1
    :try_start_1
    new-instance v0, Lcom/illposed/osc/OSCParseException;

    const-string v1, "Received a packet without any data"

    invoke-direct {v0, v1, p1}, Lcom/illposed/osc/OSCParseException;-><init>(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->end(Z)V

    throw p1
.end method

.method public register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;
    .locals 1

    iget-object v0, p0, Lcom/illposed/osc/transport/channel/OSCDatagramChannel;->underlyingChannel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    move-result-object p1

    return-object p1
.end method

.method public validOps()I
    .locals 1

    iget-object v0, p0, Lcom/illposed/osc/transport/channel/OSCDatagramChannel;->underlyingChannel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->validOps()I

    move-result v0

    return v0
.end method
