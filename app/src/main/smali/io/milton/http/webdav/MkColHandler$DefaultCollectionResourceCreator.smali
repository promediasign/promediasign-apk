.class Lio/milton/http/webdav/MkColHandler$DefaultCollectionResourceCreator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/http/webdav/MkColHandler$CollectionResourceCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/milton/http/webdav/MkColHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DefaultCollectionResourceCreator"
.end annotation


# instance fields
.field final synthetic this$0:Lio/milton/http/webdav/MkColHandler;


# direct methods
.method private constructor <init>(Lio/milton/http/webdav/MkColHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/milton/http/webdav/MkColHandler$DefaultCollectionResourceCreator;->this$0:Lio/milton/http/webdav/MkColHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/milton/http/webdav/MkColHandler;Lio/milton/http/webdav/MkColHandler$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/milton/http/webdav/MkColHandler$DefaultCollectionResourceCreator;-><init>(Lio/milton/http/webdav/MkColHandler;)V

    return-void
.end method


# virtual methods
.method public createResource(Lio/milton/resource/MakeCollectionableResource;Ljava/lang/String;Lio/milton/http/Request;)Lio/milton/resource/CollectionResource;
    .locals 0

    invoke-interface {p1, p2}, Lio/milton/resource/MakeCollectionableResource;->createCollection(Ljava/lang/String;)Lio/milton/resource/CollectionResource;

    move-result-object p1

    return-object p1
.end method
