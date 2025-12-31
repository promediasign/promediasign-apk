.class Lio/milton/http/webdav/PropPatchSaxHandler$Attribute;
.super Lio/milton/http/webdav/PropPatchSaxHandler$StateHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/milton/http/webdav/PropPatchSaxHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Attribute"
.end annotation


# instance fields
.field private final content:Lio/milton/http/webdav/PropPatchSaxHandler$Content;

.field private final values:Ljava/util/Map;
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
.method private constructor <init>(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/milton/http/webdav/PropPatchSaxHandler$StateHandler;-><init>(Lio/milton/http/webdav/PropPatchSaxHandler$2;)V

    new-instance v1, Lio/milton/http/webdav/PropPatchSaxHandler$Content;

    invoke-direct {v1, v0}, Lio/milton/http/webdav/PropPatchSaxHandler$Content;-><init>(Lio/milton/http/webdav/PropPatchSaxHandler$6;)V

    iput-object v1, p0, Lio/milton/http/webdav/PropPatchSaxHandler$Attribute;->content:Lio/milton/http/webdav/PropPatchSaxHandler$Content;

    iput-object p1, p0, Lio/milton/http/webdav/PropPatchSaxHandler$Attribute;->values:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Map;Lio/milton/http/webdav/PropPatchSaxHandler$5;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/milton/http/webdav/PropPatchSaxHandler$Attribute;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    iget-object v0, p0, Lio/milton/http/webdav/PropPatchSaxHandler$Attribute;->content:Lio/milton/http/webdav/PropPatchSaxHandler$Content;

    invoke-virtual {v0, p1, p2, p3}, Lio/milton/http/webdav/PropPatchSaxHandler$Content;->characters([CII)V

    return-void
.end method

.method public endSelf(Ljavax/xml/namespace/QName;)V
    .locals 2

    iget-object v0, p0, Lio/milton/http/webdav/PropPatchSaxHandler$Attribute;->values:Ljava/util/Map;

    iget-object v1, p0, Lio/milton/http/webdav/PropPatchSaxHandler$Attribute;->content:Lio/milton/http/webdav/PropPatchSaxHandler$Content;

    invoke-virtual {v1}, Lio/milton/http/webdav/PropPatchSaxHandler$Content;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public startChild(Ljavax/xml/namespace/QName;Lorg/xml/sax/Attributes;)Lio/milton/http/webdav/PropPatchSaxHandler$StateHandler;
    .locals 1

    iget-object v0, p0, Lio/milton/http/webdav/PropPatchSaxHandler$Attribute;->content:Lio/milton/http/webdav/PropPatchSaxHandler$Content;

    invoke-virtual {v0, p1, p2}, Lio/milton/http/webdav/PropPatchSaxHandler$Content;->startChild(Ljavax/xml/namespace/QName;Lorg/xml/sax/Attributes;)Lio/milton/http/webdav/PropPatchSaxHandler$StateHandler;

    iget-object p1, p0, Lio/milton/http/webdav/PropPatchSaxHandler$Attribute;->content:Lio/milton/http/webdav/PropPatchSaxHandler$Content;

    return-object p1
.end method
