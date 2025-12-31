.class public Lorg/apache/ftpserver/ftplet/DefaultFtplet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/ftpserver/ftplet/Ftplet;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterCommand(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/ftplet/FtpReply;)Lorg/apache/ftpserver/ftplet/FtpletResult;
    .locals 1

    invoke-interface {p2}, Lorg/apache/ftpserver/ftplet/FtpRequest;->getCommand()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p3

    const-string v0, "PASS"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/apache/ftpserver/ftplet/DefaultFtplet;->onLogin(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "DELE"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lorg/apache/ftpserver/ftplet/DefaultFtplet;->onDeleteEnd(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v0, "STOR"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, p2}, Lorg/apache/ftpserver/ftplet/DefaultFtplet;->onUploadEnd(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;

    move-result-object p1

    return-object p1

    :cond_2
    const-string v0, "RETR"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1, p2}, Lorg/apache/ftpserver/ftplet/DefaultFtplet;->onDownloadEnd(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;

    move-result-object p1

    return-object p1

    :cond_3
    const-string v0, "RMD"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1, p2}, Lorg/apache/ftpserver/ftplet/DefaultFtplet;->onRmdirEnd(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;

    move-result-object p1

    return-object p1

    :cond_4
    const-string v0, "MKD"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, p1, p2}, Lorg/apache/ftpserver/ftplet/DefaultFtplet;->onMkdirEnd(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;

    move-result-object p1

    return-object p1

    :cond_5
    const-string v0, "APPE"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, p1, p2}, Lorg/apache/ftpserver/ftplet/DefaultFtplet;->onAppendEnd(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;

    move-result-object p1

    return-object p1

    :cond_6
    const-string v0, "STOU"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0, p1, p2}, Lorg/apache/ftpserver/ftplet/DefaultFtplet;->onUploadUniqueEnd(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;

    move-result-object p1

    return-object p1

    :cond_7
    const-string v0, "RNTO"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-virtual {p0, p1, p2}, Lorg/apache/ftpserver/ftplet/DefaultFtplet;->onRenameEnd(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;

    move-result-object p1

    return-object p1

    :cond_8
    const/4 p1, 0x0

    return-object p1
.end method

.method public beforeCommand(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;
    .locals 2

    invoke-interface {p2}, Lorg/apache/ftpserver/ftplet/FtpRequest;->getCommand()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DELE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/apache/ftpserver/ftplet/DefaultFtplet;->onDeleteStart(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v1, "STOR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1, p2}, Lorg/apache/ftpserver/ftplet/DefaultFtplet;->onUploadStart(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v1, "RETR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1, p2}, Lorg/apache/ftpserver/ftplet/DefaultFtplet;->onDownloadStart(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;

    move-result-object p1

    return-object p1

    :cond_2
    const-string v1, "RMD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1, p2}, Lorg/apache/ftpserver/ftplet/DefaultFtplet;->onRmdirStart(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;

    move-result-object p1

    return-object p1

    :cond_3
    const-string v1, "MKD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, p1, p2}, Lorg/apache/ftpserver/ftplet/DefaultFtplet;->onMkdirStart(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;

    move-result-object p1

    return-object p1

    :cond_4
    const-string v1, "APPE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, p1, p2}, Lorg/apache/ftpserver/ftplet/DefaultFtplet;->onAppendStart(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;

    move-result-object p1

    return-object p1

    :cond_5
    const-string v1, "STOU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0, p1, p2}, Lorg/apache/ftpserver/ftplet/DefaultFtplet;->onUploadUniqueStart(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;

    move-result-object p1

    return-object p1

    :cond_6
    const-string v1, "RNTO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0, p1, p2}, Lorg/apache/ftpserver/ftplet/DefaultFtplet;->onRenameStart(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;

    move-result-object p1

    return-object p1

    :cond_7
    const-string v1, "SITE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0, p1, p2}, Lorg/apache/ftpserver/ftplet/DefaultFtplet;->onSite(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;

    move-result-object p1

    return-object p1

    :cond_8
    const/4 p1, 0x0

    return-object p1
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method public init(Lorg/apache/ftpserver/ftplet/FtpletContext;)V
    .locals 0

    return-void
.end method

.method public onAppendEnd(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onAppendStart(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onConnect(Lorg/apache/ftpserver/ftplet/FtpSession;)Lorg/apache/ftpserver/ftplet/FtpletResult;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onDeleteEnd(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onDeleteStart(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onDisconnect(Lorg/apache/ftpserver/ftplet/FtpSession;)Lorg/apache/ftpserver/ftplet/FtpletResult;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onDownloadEnd(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onDownloadStart(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onLogin(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onMkdirEnd(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onMkdirStart(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onRenameEnd(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onRenameStart(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onRmdirEnd(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onRmdirStart(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onSite(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onUploadEnd(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onUploadStart(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onUploadUniqueEnd(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onUploadUniqueStart(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
