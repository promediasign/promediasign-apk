.class public Lorg/apache/ftpserver/message/MessageResourceFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private customMessageDirectory:Ljava/io/File;

.field private languages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createMessageResource()Lorg/apache/ftpserver/message/MessageResource;
    .locals 3

    new-instance v0, Lorg/apache/ftpserver/message/impl/DefaultMessageResource;

    iget-object v1, p0, Lorg/apache/ftpserver/message/MessageResourceFactory;->languages:Ljava/util/List;

    iget-object v2, p0, Lorg/apache/ftpserver/message/MessageResourceFactory;->customMessageDirectory:Ljava/io/File;

    invoke-direct {v0, v1, v2}, Lorg/apache/ftpserver/message/impl/DefaultMessageResource;-><init>(Ljava/util/List;Ljava/io/File;)V

    return-object v0
.end method

.method public getCustomMessageDirectory()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/message/MessageResourceFactory;->customMessageDirectory:Ljava/io/File;

    return-object v0
.end method

.method public getLanguages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/ftpserver/message/MessageResourceFactory;->languages:Ljava/util/List;

    return-object v0
.end method

.method public setCustomMessageDirectory(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/ftpserver/message/MessageResourceFactory;->customMessageDirectory:Ljava/io/File;

    return-void
.end method

.method public setLanguages(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/ftpserver/message/MessageResourceFactory;->languages:Ljava/util/List;

    return-void
.end method
