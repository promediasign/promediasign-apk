.class Lio/milton/http/webdav/WebDavProtocol$ContentTypePropertyWriter;
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
    name = "ContentTypePropertyWriter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/milton/http/webdav/PropertyMap$StandardProperty<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/milton/http/webdav/WebDavProtocol;


# direct methods
.method public constructor <init>(Lio/milton/http/webdav/WebDavProtocol;)V
    .locals 0

    iput-object p1, p0, Lio/milton/http/webdav/WebDavProtocol$ContentTypePropertyWriter;->this$0:Lio/milton/http/webdav/WebDavProtocol;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fieldName()Ljava/lang/String;
    .locals 1

    const-string v0, "getcontenttype"

    return-object v0
.end method

.method public bridge synthetic getValue(Lio/milton/resource/PropFindableResource;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/milton/http/webdav/WebDavProtocol$ContentTypePropertyWriter;->getValue(Lio/milton/resource/PropFindableResource;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lio/milton/resource/PropFindableResource;)Ljava/lang/String;
    .locals 1

    .line 2
    instance-of v0, p1, Lio/milton/resource/GetableResource;

    if-eqz v0, :cond_0

    check-cast p1, Lio/milton/resource/GetableResource;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lio/milton/resource/GetableResource;->getContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public getValueClass()Ljava/lang/Class;
    .locals 1

    const-class v0, Ljava/lang/String;

    return-object v0
.end method
