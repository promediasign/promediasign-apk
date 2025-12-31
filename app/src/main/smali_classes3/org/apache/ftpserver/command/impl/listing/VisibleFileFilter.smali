.class public Lorg/apache/ftpserver/command/impl/listing/VisibleFileFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/ftpserver/command/impl/listing/FileFilter;


# instance fields
.field private wrappedFilter:Lorg/apache/ftpserver/command/impl/listing/FileFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/ftpserver/command/impl/listing/FileFilter;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/ftpserver/command/impl/listing/VisibleFileFilter;->wrappedFilter:Lorg/apache/ftpserver/command/impl/listing/FileFilter;

    return-void
.end method


# virtual methods
.method public accept(Lorg/apache/ftpserver/ftplet/FtpFile;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/command/impl/listing/VisibleFileFilter;->wrappedFilter:Lorg/apache/ftpserver/command/impl/listing/FileFilter;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/apache/ftpserver/command/impl/listing/FileFilter;->accept(Lorg/apache/ftpserver/ftplet/FtpFile;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/FtpFile;->isHidden()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
