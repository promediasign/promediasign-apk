.class public interface abstract Lio/netty/channel/socket/SocketChannelConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/channel/ChannelConfig;


# virtual methods
.method public abstract synthetic getAllocator()Lio/netty/buffer/ByteBufAllocator;
.end method

.method public abstract synthetic getConnectTimeoutMillis()I
.end method

.method public abstract synthetic getMaxMessagesPerRead()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract synthetic getMessageSizeEstimator()Lio/netty/channel/MessageSizeEstimator;
.end method

.method public abstract synthetic getOption(Lio/netty/channel/ChannelOption;)Ljava/lang/Object;
.end method

.method public abstract synthetic getOptions()Ljava/util/Map;
.end method

.method public abstract getReceiveBufferSize()I
.end method

.method public abstract synthetic getRecvByteBufAllocator()Lio/netty/channel/RecvByteBufAllocator;
.end method

.method public abstract getSendBufferSize()I
.end method

.method public abstract getSoLinger()I
.end method

.method public abstract getTrafficClass()I
.end method

.method public abstract synthetic getWriteBufferHighWaterMark()I
.end method

.method public abstract synthetic getWriteBufferLowWaterMark()I
.end method

.method public abstract synthetic getWriteBufferWaterMark()Lio/netty/channel/WriteBufferWaterMark;
.end method

.method public abstract synthetic getWriteSpinCount()I
.end method

.method public abstract isAllowHalfClosure()Z
.end method

.method public abstract synthetic isAutoClose()Z
.end method

.method public abstract synthetic isAutoRead()Z
.end method

.method public abstract isKeepAlive()Z
.end method

.method public abstract isReuseAddress()Z
.end method

.method public abstract isTcpNoDelay()Z
.end method

.method public abstract synthetic setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/ChannelConfig;
.end method

.method public abstract setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/socket/SocketChannelConfig;
.end method

.method public abstract setAllowHalfClosure(Z)Lio/netty/channel/socket/SocketChannelConfig;
.end method

.method public abstract synthetic setAutoClose(Z)Lio/netty/channel/ChannelConfig;
.end method

.method public abstract setAutoClose(Z)Lio/netty/channel/socket/SocketChannelConfig;
.end method

.method public abstract synthetic setAutoRead(Z)Lio/netty/channel/ChannelConfig;
.end method

.method public abstract setAutoRead(Z)Lio/netty/channel/socket/SocketChannelConfig;
.end method

.method public abstract synthetic setConnectTimeoutMillis(I)Lio/netty/channel/ChannelConfig;
.end method

.method public abstract setConnectTimeoutMillis(I)Lio/netty/channel/socket/SocketChannelConfig;
.end method

.method public abstract setKeepAlive(Z)Lio/netty/channel/socket/SocketChannelConfig;
.end method

.method public abstract synthetic setMaxMessagesPerRead(I)Lio/netty/channel/ChannelConfig;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setMaxMessagesPerRead(I)Lio/netty/channel/socket/SocketChannelConfig;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract synthetic setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/ChannelConfig;
.end method

.method public abstract setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/socket/SocketChannelConfig;
.end method

.method public abstract synthetic setOption(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)Z
.end method

.method public abstract synthetic setOptions(Ljava/util/Map;)Z
.end method

.method public abstract setPerformancePreferences(III)Lio/netty/channel/socket/SocketChannelConfig;
.end method

.method public abstract setReceiveBufferSize(I)Lio/netty/channel/socket/SocketChannelConfig;
.end method

.method public abstract synthetic setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/ChannelConfig;
.end method

.method public abstract setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/socket/SocketChannelConfig;
.end method

.method public abstract setReuseAddress(Z)Lio/netty/channel/socket/SocketChannelConfig;
.end method

.method public abstract setSendBufferSize(I)Lio/netty/channel/socket/SocketChannelConfig;
.end method

.method public abstract setSoLinger(I)Lio/netty/channel/socket/SocketChannelConfig;
.end method

.method public abstract setTcpNoDelay(Z)Lio/netty/channel/socket/SocketChannelConfig;
.end method

.method public abstract setTrafficClass(I)Lio/netty/channel/socket/SocketChannelConfig;
.end method

.method public abstract synthetic setWriteBufferHighWaterMark(I)Lio/netty/channel/ChannelConfig;
.end method

.method public abstract synthetic setWriteBufferLowWaterMark(I)Lio/netty/channel/ChannelConfig;
.end method

.method public abstract synthetic setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/ChannelConfig;
.end method

.method public abstract setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/socket/SocketChannelConfig;
.end method

.method public abstract synthetic setWriteSpinCount(I)Lio/netty/channel/ChannelConfig;
.end method

.method public abstract setWriteSpinCount(I)Lio/netty/channel/socket/SocketChannelConfig;
.end method
