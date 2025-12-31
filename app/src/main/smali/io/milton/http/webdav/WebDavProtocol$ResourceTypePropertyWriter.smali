.class Lio/milton/http/webdav/WebDavProtocol$ResourceTypePropertyWriter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/http/webdav/PropertyMap$StandardProperty;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/milton/http/webdav/WebDavProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResourceTypePropertyWriter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/milton/http/webdav/PropertyMap$StandardProperty<",
        "Ljava/util/List<",
        "Ljavax/xml/namespace/QName;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/milton/http/webdav/WebDavProtocol;


# direct methods
.method public constructor <init>(Lio/milton/http/webdav/WebDavProtocol;)V
    .locals 0

    iput-object p1, p0, Lio/milton/http/webdav/WebDavProtocol$ResourceTypePropertyWriter;->this$0:Lio/milton/http/webdav/WebDavProtocol;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fieldName()Ljava/lang/String;
    .locals 1

    const-string v0, "resourcetype"

    return-object v0
.end method

.method public bridge synthetic getValue(Lio/milton/resource/PropFindableResource;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/milton/http/webdav/WebDavProtocol$ResourceTypePropertyWriter;->getValue(Lio/milton/resource/PropFindableResource;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lio/milton/resource/PropFindableResource;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/milton/resource/PropFindableResource;",
            ")",
            "Ljava/util/List<",
            "Ljavax/xml/namespace/QName;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lio/milton/http/webdav/WebDavProtocol$ResourceTypePropertyWriter;->this$0:Lio/milton/http/webdav/WebDavProtocol;

    invoke-static {v0}, Lio/milton/http/webdav/WebDavProtocol;->access$200(Lio/milton/http/webdav/WebDavProtocol;)Lio/milton/http/webdav/ResourceTypeHelper;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/milton/http/webdav/ResourceTypeHelper;->getResourceTypes(Lio/milton/resource/Resource;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getValueClass()Ljava/lang/Class;
    .locals 1

    const-class v0, Ljava/util/List;

    return-object v0
.end method
