.class Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$DatagramChannelIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DatagramChannelIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/nio/channels/DatagramChannel;",
        ">;"
    }
.end annotation


# instance fields
.field private final i:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/nio/channels/SelectionKey;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$DatagramChannelIterator;->i:Ljava/util/Iterator;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Collection;Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$DatagramChannelIterator;-><init>(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$DatagramChannelIterator;->i:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$DatagramChannelIterator;->next()Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/nio/channels/DatagramChannel;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$DatagramChannelIterator;->i:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/DatagramChannel;

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$DatagramChannelIterator;->i:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
