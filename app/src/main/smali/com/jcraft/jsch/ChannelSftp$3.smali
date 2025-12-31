.class Lcom/jcraft/jsch/ChannelSftp$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jcraft/jsch/ChannelSftp$LsEntrySelector;


# instance fields
.field final synthetic val$v:Ljava/util/Vector;


# virtual methods
.method public select(Lcom/jcraft/jsch/ChannelSftp$LsEntry;)I
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$3;->val$v:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1
.end method
