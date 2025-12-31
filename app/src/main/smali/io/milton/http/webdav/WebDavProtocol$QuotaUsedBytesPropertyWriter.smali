.class Lio/milton/http/webdav/WebDavProtocol$QuotaUsedBytesPropertyWriter;
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
    name = "QuotaUsedBytesPropertyWriter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/milton/http/webdav/PropertyMap$StandardProperty<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/milton/http/webdav/WebDavProtocol;


# direct methods
.method public constructor <init>(Lio/milton/http/webdav/WebDavProtocol;)V
    .locals 0

    iput-object p1, p0, Lio/milton/http/webdav/WebDavProtocol$QuotaUsedBytesPropertyWriter;->this$0:Lio/milton/http/webdav/WebDavProtocol;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fieldName()Ljava/lang/String;
    .locals 1

    const-string v0, "quota-used-bytes"

    return-object v0
.end method

.method public getValue(Lio/milton/resource/PropFindableResource;)Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/milton/http/webdav/WebDavProtocol$QuotaUsedBytesPropertyWriter;->this$0:Lio/milton/http/webdav/WebDavProtocol;

    invoke-static {v0}, Lio/milton/http/webdav/WebDavProtocol;->access$300(Lio/milton/http/webdav/WebDavProtocol;)Lio/milton/http/quota/QuotaDataAccessor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/milton/http/webdav/WebDavProtocol$QuotaUsedBytesPropertyWriter;->this$0:Lio/milton/http/webdav/WebDavProtocol;

    invoke-static {v0}, Lio/milton/http/webdav/WebDavProtocol;->access$300(Lio/milton/http/webdav/WebDavProtocol;)Lio/milton/http/quota/QuotaDataAccessor;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/milton/http/quota/QuotaDataAccessor;->getQuotaUsed(Lio/milton/resource/Resource;)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getValue(Lio/milton/resource/PropFindableResource;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/milton/http/webdav/WebDavProtocol$QuotaUsedBytesPropertyWriter;->getValue(Lio/milton/resource/PropFindableResource;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public getValueClass()Ljava/lang/Class;
    .locals 1

    const-class v0, Ljava/lang/Long;

    return-object v0
.end method
