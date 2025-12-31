.class Lio/milton/http/webdav/PropPatchSaxHandler$Root;
.super Lio/milton/http/webdav/PropPatchSaxHandler$StateHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/milton/http/webdav/PropPatchSaxHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Root"
.end annotation


# instance fields
.field private final remove:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final set:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/milton/http/webdav/PropPatchSaxHandler$StateHandler;-><init>(Lio/milton/http/webdav/PropPatchSaxHandler$2;)V

    iput-object p1, p0, Lio/milton/http/webdav/PropPatchSaxHandler$Root;->set:Ljava/util/Map;

    iput-object p2, p0, Lio/milton/http/webdav/PropPatchSaxHandler$Root;->remove:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Map;Ljava/util/Map;Lio/milton/http/webdav/PropPatchSaxHandler$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lio/milton/http/webdav/PropPatchSaxHandler$Root;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public startChild(Ljavax/xml/namespace/QName;Lorg/xml/sax/Attributes;)Lio/milton/http/webdav/PropPatchSaxHandler$StateHandler;
    .locals 1

    invoke-static {}, Lio/milton/http/webdav/PropPatchSaxHandler;->access$200()Ljavax/xml/namespace/QName;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    new-instance p1, Lio/milton/http/webdav/PropPatchSaxHandler$Op;

    iget-object p2, p0, Lio/milton/http/webdav/PropPatchSaxHandler$Root;->set:Ljava/util/Map;

    invoke-direct {p1, p2, v0}, Lio/milton/http/webdav/PropPatchSaxHandler$Op;-><init>(Ljava/util/Map;Lio/milton/http/webdav/PropPatchSaxHandler$3;)V

    return-object p1

    :cond_0
    invoke-static {}, Lio/milton/http/webdav/PropPatchSaxHandler;->access$400()Ljavax/xml/namespace/QName;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lio/milton/http/webdav/PropPatchSaxHandler$Op;

    iget-object p2, p0, Lio/milton/http/webdav/PropPatchSaxHandler$Root;->remove:Ljava/util/Map;

    invoke-direct {p1, p2, v0}, Lio/milton/http/webdav/PropPatchSaxHandler$Op;-><init>(Ljava/util/Map;Lio/milton/http/webdav/PropPatchSaxHandler$3;)V

    return-object p1

    :cond_1
    sget-object p1, Lio/milton/http/webdav/PropPatchSaxHandler$StateHandler;->Ignore:Lio/milton/http/webdav/PropPatchSaxHandler$StateHandler;

    return-object p1
.end method
