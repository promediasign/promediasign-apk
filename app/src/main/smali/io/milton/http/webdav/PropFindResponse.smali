.class public Lio/milton/http/webdav/PropFindResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/milton/http/webdav/PropFindResponse$NameAndError;
    }
.end annotation


# instance fields
.field private errorProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/milton/http/Response$Status;",
            "Ljava/util/List<",
            "Lio/milton/http/webdav/PropFindResponse$NameAndError;",
            ">;>;"
        }
    .end annotation
.end field

.field private final href:Ljava/lang/String;

.field private knownProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Lio/milton/http/values/ValueAndType;",
            ">;"
        }
    .end annotation
.end field

.field private final status:Lio/milton/http/Response$Status;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Lio/milton/http/values/ValueAndType;",
            ">;",
            "Ljava/util/Map<",
            "Lio/milton/http/Response$Status;",
            "Ljava/util/List<",
            "Lio/milton/http/webdav/PropFindResponse$NameAndError;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lio/milton/common/Utils;->stripServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/milton/http/webdav/PropFindResponse;->href:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lio/milton/http/webdav/PropFindResponse;->status:Lio/milton/http/Response$Status;

    iput-object p2, p0, Lio/milton/http/webdav/PropFindResponse;->knownProperties:Ljava/util/Map;

    iput-object p3, p0, Lio/milton/http/webdav/PropFindResponse;->errorProperties:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getErrorProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lio/milton/http/Response$Status;",
            "Ljava/util/List<",
            "Lio/milton/http/webdav/PropFindResponse$NameAndError;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/milton/http/webdav/PropFindResponse;->errorProperties:Ljava/util/Map;

    return-object v0
.end method

.method public getHref()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/milton/http/webdav/PropFindResponse;->href:Ljava/lang/String;

    return-object v0
.end method

.method public getKnownProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Lio/milton/http/values/ValueAndType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/milton/http/webdav/PropFindResponse;->knownProperties:Ljava/util/Map;

    return-object v0
.end method

.method public getStatus()Lio/milton/http/Response$Status;
    .locals 1

    iget-object v0, p0, Lio/milton/http/webdav/PropFindResponse;->status:Lio/milton/http/Response$Status;

    return-object v0
.end method
