.class Lsk/mimac/slideshow/WebService$1;
.super Lorg/apache/ftpserver/ftplet/DefaultFtplet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsk/mimac/slideshow/WebService;->startFtpServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/ftpserver/ftplet/DefaultFtplet;-><init>()V

    return-void
.end method


# virtual methods
.method public onUploadEnd(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;
    .locals 0

    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/FtpSession;->getFileSystemView()Lorg/apache/ftpserver/ftplet/FileSystemView;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/FileSystemView;->getWorkingDirectory()Lorg/apache/ftpserver/ftplet/FtpFile;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/FtpFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Lorg/apache/ftpserver/ftplet/FtpRequest;->getArgument()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lsk/mimac/slideshow/csv/UploadFileChecker;->checkZipAndFileName(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
