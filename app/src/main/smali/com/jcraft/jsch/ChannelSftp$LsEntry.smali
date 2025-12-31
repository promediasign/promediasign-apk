.class public Lcom/jcraft/jsch/ChannelSftp$LsEntry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jcraft/jsch/ChannelSftp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LsEntry"
.end annotation


# instance fields
.field private attrs:Lcom/jcraft/jsch/SftpATTRS;

.field private filename:Ljava/lang/String;

.field private longname:Ljava/lang/String;

.field final synthetic this$0:Lcom/jcraft/jsch/ChannelSftp;


# direct methods
.method public constructor <init>(Lcom/jcraft/jsch/ChannelSftp;Ljava/lang/String;Ljava/lang/String;Lcom/jcraft/jsch/SftpATTRS;)V
    .locals 0

    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p2}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->setFilename(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->setLongname(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->setAttrs(Lcom/jcraft/jsch/SftpATTRS;)V

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    instance-of v0, p1, Lcom/jcraft/jsch/ChannelSftp$LsEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->filename:Ljava/lang/String;

    check-cast p1, Lcom/jcraft/jsch/ChannelSftp$LsEntry;

    invoke-virtual {p1}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->getFilename()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/ClassCastException;

    const-string v0, "a decendent of LsEntry must be given."

    invoke-direct {p1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAttrs()Lcom/jcraft/jsch/SftpATTRS;
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->attrs:Lcom/jcraft/jsch/SftpATTRS;

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public setAttrs(Lcom/jcraft/jsch/SftpATTRS;)V
    .locals 0

    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->attrs:Lcom/jcraft/jsch/SftpATTRS;

    return-void
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->filename:Ljava/lang/String;

    return-void
.end method

.method public setLongname(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->longname:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->longname:Ljava/lang/String;

    return-object v0
.end method
