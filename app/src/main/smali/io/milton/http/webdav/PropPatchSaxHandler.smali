.class public Lio/milton/http/webdav/PropPatchSaxHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/milton/http/webdav/PropPatchSaxHandler$Content;,
        Lio/milton/http/webdav/PropPatchSaxHandler$Attribute;,
        Lio/milton/http/webdav/PropPatchSaxHandler$Prop;,
        Lio/milton/http/webdav/PropPatchSaxHandler$Op;,
        Lio/milton/http/webdav/PropPatchSaxHandler$Root;,
        Lio/milton/http/webdav/PropPatchSaxHandler$StateHandler;
    }
.end annotation


# static fields
.field private static final PROP:Ljavax/xml/namespace/QName;

.field private static final REMOVE:Ljavax/xml/namespace/QName;

.field private static final SET:Ljavax/xml/namespace/QName;

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final attributesRemove:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final attributesSet:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final handlers:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lio/milton/http/webdav/PropPatchSaxHandler$StateHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lio/milton/http/webdav/PropPatchSaxHandler;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/milton/http/webdav/PropPatchSaxHandler;->log:Lorg/slf4j/Logger;

    new-instance v0, Ljavax/xml/namespace/QName;

    const-string v1, "set"

    const-string v2, "DAV:"

    invoke-direct {v0, v2, v1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/milton/http/webdav/PropPatchSaxHandler;->SET:Ljavax/xml/namespace/QName;

    new-instance v0, Ljavax/xml/namespace/QName;

    const-string v1, "remove"

    invoke-direct {v0, v2, v1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/milton/http/webdav/PropPatchSaxHandler;->REMOVE:Ljavax/xml/namespace/QName;

    new-instance v0, Ljavax/xml/namespace/QName;

    const-string v1, "prop"

    invoke-direct {v0, v2, v1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/milton/http/webdav/PropPatchSaxHandler;->PROP:Ljavax/xml/namespace/QName;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lio/milton/http/webdav/PropPatchSaxHandler;->handlers:Ljava/util/Stack;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lio/milton/http/webdav/PropPatchSaxHandler;->attributesSet:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lio/milton/http/webdav/PropPatchSaxHandler;->attributesRemove:Ljava/util/Map;

    return-void
.end method

.method public static synthetic access$200()Ljavax/xml/namespace/QName;
    .locals 1

    sget-object v0, Lio/milton/http/webdav/PropPatchSaxHandler;->SET:Ljavax/xml/namespace/QName;

    return-object v0
.end method

.method public static synthetic access$400()Ljavax/xml/namespace/QName;
    .locals 1

    sget-object v0, Lio/milton/http/webdav/PropPatchSaxHandler;->REMOVE:Ljavax/xml/namespace/QName;

    return-object v0
.end method

.method public static synthetic access$500()Ljavax/xml/namespace/QName;
    .locals 1

    sget-object v0, Lio/milton/http/webdav/PropPatchSaxHandler;->PROP:Ljavax/xml/namespace/QName;

    return-object v0
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    iget-object v0, p0, Lio/milton/http/webdav/PropPatchSaxHandler;->handlers:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/milton/http/webdav/PropPatchSaxHandler$StateHandler;

    invoke-virtual {v0, p1, p2, p3}, Lio/milton/http/webdav/PropPatchSaxHandler$StateHandler;->characters([CII)V

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljavax/xml/namespace/QName;

    invoke-direct {v0, p1, p2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lio/milton/http/webdav/PropPatchSaxHandler;->handlers:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/milton/http/webdav/PropPatchSaxHandler$StateHandler;

    invoke-virtual {v1, v0}, Lio/milton/http/webdav/PropPatchSaxHandler$StateHandler;->endSelf(Ljavax/xml/namespace/QName;)V

    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getAttributesToRemove()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/milton/http/webdav/PropPatchSaxHandler;->attributesRemove:Ljava/util/Map;

    return-object v0
.end method

.method public getAttributesToSet()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/milton/http/webdav/PropPatchSaxHandler;->attributesSet:Ljava/util/Map;

    return-object v0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4

    new-instance v0, Ljavax/xml/namespace/QName;

    invoke-direct {v0, p1, p2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lio/milton/http/webdav/PropPatchSaxHandler;->handlers:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/milton/http/webdav/PropPatchSaxHandler;->handlers:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/milton/http/webdav/PropPatchSaxHandler$StateHandler;

    invoke-virtual {v1, v0, p4}, Lio/milton/http/webdav/PropPatchSaxHandler$StateHandler;->startChild(Ljavax/xml/namespace/QName;Lorg/xml/sax/Attributes;)Lio/milton/http/webdav/PropPatchSaxHandler$StateHandler;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lio/milton/http/webdav/PropPatchSaxHandler$Root;

    iget-object v1, p0, Lio/milton/http/webdav/PropPatchSaxHandler;->attributesSet:Ljava/util/Map;

    iget-object v2, p0, Lio/milton/http/webdav/PropPatchSaxHandler;->attributesRemove:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lio/milton/http/webdav/PropPatchSaxHandler$Root;-><init>(Ljava/util/Map;Ljava/util/Map;Lio/milton/http/webdav/PropPatchSaxHandler$1;)V

    :goto_0
    iget-object v1, p0, Lio/milton/http/webdav/PropPatchSaxHandler;->handlers:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method
