.class public Lorg/apache/ftpserver/util/FileRegularFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field private regularExpr:Lorg/apache/ftpserver/util/RegularExpr;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ftpserver/util/FileRegularFilter;->regularExpr:Lorg/apache/ftpserver/util/RegularExpr;

    if-eqz p1, :cond_1

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/ftpserver/util/RegularExpr;

    invoke-direct {v0, p1}, Lorg/apache/ftpserver/util/RegularExpr;-><init>(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iput-object v0, p0, Lorg/apache/ftpserver/util/FileRegularFilter;->regularExpr:Lorg/apache/ftpserver/util/RegularExpr;

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    iget-object p1, p0, Lorg/apache/ftpserver/util/FileRegularFilter;->regularExpr:Lorg/apache/ftpserver/util/RegularExpr;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p1, p2}, Lorg/apache/ftpserver/util/RegularExpr;->isMatch(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
