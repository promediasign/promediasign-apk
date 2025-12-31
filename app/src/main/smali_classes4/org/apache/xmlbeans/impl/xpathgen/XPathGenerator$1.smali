.class final Lorg/apache/xmlbeans/impl/xpathgen/XPathGenerator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/javax/xml/namespace/NamespaceContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "ns"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "http://a.com"

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getPrefixes(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
