.class public final Lorg/apache/xmlbeans/impl/jam/internal/elements/ConstructorImpl;
.super Lorg/apache/xmlbeans/impl/jam/internal/elements/InvokableImpl;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/jam/mutable/MConstructor;


# direct methods
.method public constructor <init>(Lorg/apache/xmlbeans/impl/jam/internal/elements/ClassImpl;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/jam/internal/elements/InvokableImpl;-><init>(Lorg/apache/xmlbeans/impl/jam/internal/elements/ClassImpl;)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementImpl;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementImpl;->setSimpleName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public accept(Lorg/apache/xmlbeans/impl/jam/visitor/JVisitor;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lorg/apache/xmlbeans/impl/jam/visitor/JVisitor;->visit(Lorg/apache/xmlbeans/impl/jam/JConstructor;)V

    return-void
.end method

.method public accept(Lorg/apache/xmlbeans/impl/jam/visitor/MVisitor;)V
    .locals 0

    .line 2
    invoke-virtual {p1, p0}, Lorg/apache/xmlbeans/impl/jam/visitor/MVisitor;->visit(Lorg/apache/xmlbeans/impl/jam/mutable/MConstructor;)V

    return-void
.end method

.method public getQualifiedName()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/jam/internal/elements/MemberImpl;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->write(I)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementImpl;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->write(I)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/jam/internal/elements/InvokableImpl;->getParameters()[Lorg/apache/xmlbeans/impl/jam/JParameter;

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    aget-object v3, v1, v2

    invoke-interface {v3}, Lorg/apache/xmlbeans/impl/jam/JParameter;->getType()Lorg/apache/xmlbeans/impl/jam/JClass;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/xmlbeans/impl/jam/JElement;->getQualifiedName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/io/StringWriter;->write(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->write(I)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
