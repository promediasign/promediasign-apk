.class Lio/milton/http/webdav/WebDavProtocol$SupportedReportSetProperty;
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
    name = "SupportedReportSetProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/milton/http/webdav/PropertyMap$StandardProperty<",
        "Lio/milton/http/values/SupportedReportSetList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/milton/http/webdav/WebDavProtocol;


# direct methods
.method public constructor <init>(Lio/milton/http/webdav/WebDavProtocol;)V
    .locals 0

    iput-object p1, p0, Lio/milton/http/webdav/WebDavProtocol$SupportedReportSetProperty;->this$0:Lio/milton/http/webdav/WebDavProtocol;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fieldName()Ljava/lang/String;
    .locals 1

    const-string v0, "supported-report-set"

    return-object v0
.end method

.method public getValue(Lio/milton/resource/PropFindableResource;)Lio/milton/http/values/SupportedReportSetList;
    .locals 2

    .line 1
    new-instance p1, Lio/milton/http/values/SupportedReportSetList;

    invoke-direct {p1}, Lio/milton/http/values/SupportedReportSetList;-><init>()V

    iget-object v0, p0, Lio/milton/http/webdav/WebDavProtocol$SupportedReportSetProperty;->this$0:Lio/milton/http/webdav/WebDavProtocol;

    invoke-static {v0}, Lio/milton/http/webdav/WebDavProtocol;->access$500(Lio/milton/http/webdav/WebDavProtocol;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-object p1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, LA/g;->x(Ljava/lang/Object;)V

    new-instance p1, Ljavax/xml/namespace/QName;

    const/4 p1, 0x0

    throw p1
.end method

.method public bridge synthetic getValue(Lio/milton/resource/PropFindableResource;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/milton/http/webdav/WebDavProtocol$SupportedReportSetProperty;->getValue(Lio/milton/resource/PropFindableResource;)Lio/milton/http/values/SupportedReportSetList;

    move-result-object p1

    return-object p1
.end method

.method public getValueClass()Ljava/lang/Class;
    .locals 1

    const-class v0, Lio/milton/http/values/SupportedReportSetList;

    return-object v0
.end method
