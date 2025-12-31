.class Lio/milton/http/webdav/WebDavProtocol$MSNamePropertyWriter;
.super Lio/milton/http/webdav/WebDavProtocol$DisplayNamePropertyWriter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/milton/http/webdav/WebDavProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MSNamePropertyWriter"
.end annotation


# instance fields
.field final synthetic this$0:Lio/milton/http/webdav/WebDavProtocol;


# direct methods
.method public constructor <init>(Lio/milton/http/webdav/WebDavProtocol;)V
    .locals 0

    iput-object p1, p0, Lio/milton/http/webdav/WebDavProtocol$MSNamePropertyWriter;->this$0:Lio/milton/http/webdav/WebDavProtocol;

    invoke-direct {p0, p1}, Lio/milton/http/webdav/WebDavProtocol$DisplayNamePropertyWriter;-><init>(Lio/milton/http/webdav/WebDavProtocol;)V

    return-void
.end method


# virtual methods
.method public fieldName()Ljava/lang/String;
    .locals 1

    const-string v0, "name"

    return-object v0
.end method
