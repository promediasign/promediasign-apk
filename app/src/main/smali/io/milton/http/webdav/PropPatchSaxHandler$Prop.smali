.class Lio/milton/http/webdav/PropPatchSaxHandler$Prop;
.super Lio/milton/http/webdav/PropPatchSaxHandler$StateHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/milton/http/webdav/PropPatchSaxHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Prop"
.end annotation


# instance fields
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
    .locals 1
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

    iput-object p1, p0, Lio/milton/http/webdav/PropPatchSaxHandler$Prop;->values:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Map;Lio/milton/http/webdav/PropPatchSaxHandler$4;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/milton/http/webdav/PropPatchSaxHandler$Prop;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public startChild(Ljavax/xml/namespace/QName;Lorg/xml/sax/Attributes;)Lio/milton/http/webdav/PropPatchSaxHandler$StateHandler;
    .locals 1

    new-instance p1, Lio/milton/http/webdav/PropPatchSaxHandler$Attribute;

    iget-object p2, p0, Lio/milton/http/webdav/PropPatchSaxHandler$Prop;->values:Ljava/util/Map;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lio/milton/http/webdav/PropPatchSaxHandler$Attribute;-><init>(Ljava/util/Map;Lio/milton/http/webdav/PropPatchSaxHandler$5;)V

    return-object p1
.end method
