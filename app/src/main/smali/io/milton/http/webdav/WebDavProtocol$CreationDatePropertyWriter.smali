.class Lio/milton/http/webdav/WebDavProtocol$CreationDatePropertyWriter;
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
    name = "CreationDatePropertyWriter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/milton/http/webdav/PropertyMap$StandardProperty<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# instance fields
.field private final fieldName:Ljava/lang/String;

.field final synthetic this$0:Lio/milton/http/webdav/WebDavProtocol;


# direct methods
.method public constructor <init>(Lio/milton/http/webdav/WebDavProtocol;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/milton/http/webdav/WebDavProtocol$CreationDatePropertyWriter;->this$0:Lio/milton/http/webdav/WebDavProtocol;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/milton/http/webdav/WebDavProtocol$CreationDatePropertyWriter;->fieldName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public fieldName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/milton/http/webdav/WebDavProtocol$CreationDatePropertyWriter;->fieldName:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getValue(Lio/milton/resource/PropFindableResource;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/milton/http/webdav/WebDavProtocol$CreationDatePropertyWriter;->getValue(Lio/milton/resource/PropFindableResource;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lio/milton/resource/PropFindableResource;)Ljava/util/Date;
    .locals 0

    .line 2
    invoke-interface {p1}, Lio/milton/resource/PropFindableResource;->getCreateDate()Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public getValueClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation

    const-class v0, Ljava/util/Date;

    return-object v0
.end method
