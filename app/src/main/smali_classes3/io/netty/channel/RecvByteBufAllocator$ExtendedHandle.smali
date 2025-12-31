.class public interface abstract Lio/netty/channel/RecvByteBufAllocator$ExtendedHandle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/channel/RecvByteBufAllocator$Handle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/RecvByteBufAllocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ExtendedHandle"
.end annotation


# virtual methods
.method public abstract synthetic allocate(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/buffer/ByteBuf;
.end method

.method public abstract synthetic attemptedBytesRead()I
.end method

.method public abstract synthetic attemptedBytesRead(I)V
.end method

.method public abstract synthetic continueReading()Z
.end method

.method public abstract continueReading(Lio/netty/util/UncheckedBooleanSupplier;)Z
.end method

.method public abstract synthetic guess()I
.end method

.method public abstract synthetic incMessagesRead(I)V
.end method

.method public abstract synthetic lastBytesRead()I
.end method

.method public abstract synthetic lastBytesRead(I)V
.end method

.method public abstract synthetic readComplete()V
.end method

.method public abstract synthetic reset(Lio/netty/channel/ChannelConfig;)V
.end method
