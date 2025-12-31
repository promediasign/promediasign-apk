.class public Lorg/apache/ftpserver/filesystem/nativefs/impl/NameEqualsFileFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field private caseInsensitive:Z

.field private nameToMatch:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NameEqualsFileFilter;->nameToMatch:Ljava/lang/String;

    iput-boolean p2, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NameEqualsFileFilter;->caseInsensitive:Z

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NameEqualsFileFilter;->caseInsensitive:Z

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NameEqualsFileFilter;->nameToMatch:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NameEqualsFileFilter;->nameToMatch:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
