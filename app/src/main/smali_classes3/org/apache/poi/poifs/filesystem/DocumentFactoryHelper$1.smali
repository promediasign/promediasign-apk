.class final Lorg/apache/poi/poifs/filesystem/DocumentFactoryHelper$1;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/poifs/filesystem/DocumentFactoryHelper;->getDecryptedStream(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;Ljava/lang/String;)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$fs:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V
    .locals 0

    iput-object p2, p0, Lorg/apache/poi/poifs/filesystem/DocumentFactoryHelper$1;->val$fs:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentFactoryHelper$1;->val$fs:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->close()V

    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    return-void
.end method
