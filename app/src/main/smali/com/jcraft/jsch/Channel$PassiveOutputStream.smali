.class Lcom/jcraft/jsch/Channel$PassiveOutputStream;
.super Ljava/io/PipedOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jcraft/jsch/Channel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PassiveOutputStream"
.end annotation


# instance fields
.field private _sink:Lcom/jcraft/jsch/Channel$MyPipedInputStream;

.field final synthetic this$0:Lcom/jcraft/jsch/Channel;


# direct methods
.method public constructor <init>(Lcom/jcraft/jsch/Channel;Ljava/io/PipedInputStream;Z)V
    .locals 0

    iput-object p1, p0, Lcom/jcraft/jsch/Channel$PassiveOutputStream;->this$0:Lcom/jcraft/jsch/Channel;

    invoke-direct {p0, p2}, Ljava/io/PipedOutputStream;-><init>(Ljava/io/PipedInputStream;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/jcraft/jsch/Channel$PassiveOutputStream;->_sink:Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    if-eqz p3, :cond_0

    instance-of p1, p2, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    if-eqz p1, :cond_0

    check-cast p2, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    iput-object p2, p0, Lcom/jcraft/jsch/Channel$PassiveOutputStream;->_sink:Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    :cond_0
    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/Channel$PassiveOutputStream;->_sink:Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->checkSpace(I)V

    :cond_0
    invoke-super {p0, p1}, Ljava/io/PipedOutputStream;->write(I)V

    return-void
.end method

.method public write([BII)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/jcraft/jsch/Channel$PassiveOutputStream;->_sink:Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p3}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->checkSpace(I)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Ljava/io/PipedOutputStream;->write([BII)V

    return-void
.end method
