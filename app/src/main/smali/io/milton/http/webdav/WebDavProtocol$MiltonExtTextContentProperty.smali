.class Lio/milton/http/webdav/WebDavProtocol$MiltonExtTextContentProperty;
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
    name = "MiltonExtTextContentProperty"
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

    iput-object p1, p0, Lio/milton/http/webdav/WebDavProtocol$MiltonExtTextContentProperty;->this$0:Lio/milton/http/webdav/WebDavProtocol;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fieldName()Ljava/lang/String;
    .locals 1

    const-string v0, "textcontent"

    return-object v0
.end method

.method public bridge synthetic getValue(Lio/milton/resource/PropFindableResource;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/milton/http/webdav/WebDavProtocol$MiltonExtTextContentProperty;->getValue(Lio/milton/resource/PropFindableResource;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lio/milton/resource/PropFindableResource;)Ljava/lang/String;
    .locals 4

    .line 2
    instance-of v0, p1, Lio/milton/resource/GetableResource;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lio/milton/resource/GetableResource;

    const-string v0, "text"

    invoke-interface {p1, v0}, Lio/milton/resource/GetableResource;->getContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    sget-object v3, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-interface {p1, v0, v1, v3, v2}, Lio/milton/resource/GetableResource;->sendContent(Ljava/io/OutputStream;Lio/milton/http/Range;Ljava/util/Map;Ljava/lang/String;)V

    const-string p1, "UTF-8"

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lio/milton/http/exceptions/NotAuthorizedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lio/milton/http/exceptions/BadRequestException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lio/milton/http/exceptions/NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    return-object v1

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    return-object v1
.end method

.method public getValueClass()Ljava/lang/Class;
    .locals 1

    const-class v0, Ljava/lang/String;

    return-object v0
.end method
