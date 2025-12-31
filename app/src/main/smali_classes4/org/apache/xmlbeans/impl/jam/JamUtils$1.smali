.class final Lorg/apache/xmlbeans/impl/jam/JamUtils$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    check-cast p1, Lorg/apache/xmlbeans/impl/jam/JElement;

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/jam/JElement;->getSourcePosition()Lorg/apache/xmlbeans/impl/jam/JSourcePosition;

    move-result-object p1

    check-cast p2, Lorg/apache/xmlbeans/impl/jam/JElement;

    invoke-interface {p2}, Lorg/apache/xmlbeans/impl/jam/JElement;->getSourcePosition()Lorg/apache/xmlbeans/impl/jam/JSourcePosition;

    move-result-object p2

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0

    :cond_1
    const/4 v2, 0x1

    if-nez p2, :cond_2

    return v2

    :cond_2
    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/jam/JSourcePosition;->getLine()I

    move-result v3

    invoke-interface {p2}, Lorg/apache/xmlbeans/impl/jam/JSourcePosition;->getLine()I

    move-result v4

    if-ge v3, v4, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/jam/JSourcePosition;->getLine()I

    move-result p1

    invoke-interface {p2}, Lorg/apache/xmlbeans/impl/jam/JSourcePosition;->getLine()I

    move-result p2

    if-le p1, p2, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
