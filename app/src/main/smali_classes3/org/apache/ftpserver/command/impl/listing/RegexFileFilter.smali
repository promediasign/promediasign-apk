.class public Lorg/apache/ftpserver/command/impl/listing/RegexFileFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/ftpserver/command/impl/listing/FileFilter;


# instance fields
.field private regex:Lorg/apache/ftpserver/util/RegularExpr;

.field private wrappedFilter:Lorg/apache/ftpserver/command/impl/listing/FileFilter;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/ftpserver/util/RegularExpr;

    invoke-direct {v0, p1}, Lorg/apache/ftpserver/util/RegularExpr;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/ftpserver/command/impl/listing/RegexFileFilter;->regex:Lorg/apache/ftpserver/util/RegularExpr;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/ftpserver/command/impl/listing/FileFilter;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/ftpserver/command/impl/listing/RegexFileFilter;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/apache/ftpserver/command/impl/listing/RegexFileFilter;->wrappedFilter:Lorg/apache/ftpserver/command/impl/listing/FileFilter;

    return-void
.end method


# virtual methods
.method public accept(Lorg/apache/ftpserver/ftplet/FtpFile;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/command/impl/listing/RegexFileFilter;->wrappedFilter:Lorg/apache/ftpserver/command/impl/listing/FileFilter;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/apache/ftpserver/command/impl/listing/FileFilter;->accept(Lorg/apache/ftpserver/ftplet/FtpFile;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lorg/apache/ftpserver/command/impl/listing/RegexFileFilter;->regex:Lorg/apache/ftpserver/util/RegularExpr;

    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/FtpFile;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/ftpserver/util/RegularExpr;->isMatch(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
