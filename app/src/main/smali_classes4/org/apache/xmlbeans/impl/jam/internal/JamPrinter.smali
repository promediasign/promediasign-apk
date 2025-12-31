.class public Lorg/apache/xmlbeans/impl/jam/internal/JamPrinter;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getTypeKey(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "[?UNKNOWN!]"

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private indent(ILjava/io/PrintWriter;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    const-string v1, "  "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static newInstance()Lorg/apache/xmlbeans/impl/jam/internal/JamPrinter;
    .locals 1

    new-instance v0, Lorg/apache/xmlbeans/impl/jam/internal/JamPrinter;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/jam/internal/JamPrinter;-><init>()V

    return-object v0
.end method

.method private print(Lorg/apache/xmlbeans/impl/jam/JElement;ILjava/io/PrintWriter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3}, Lorg/apache/xmlbeans/impl/jam/internal/JamPrinter;->indent(ILjava/io/PrintWriter;)V

    const-string p2, "["

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/jam/internal/JamPrinter;->getTypeKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "] "

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    instance-of p2, p1, Lorg/apache/xmlbeans/impl/jam/JMethod;

    if-eqz p2, :cond_0

    move-object p2, p1

    check-cast p2, Lorg/apache/xmlbeans/impl/jam/JMethod;

    invoke-interface {p2}, Lorg/apache/xmlbeans/impl/jam/JMethod;->getReturnType()Lorg/apache/xmlbeans/impl/jam/JClass;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/xmlbeans/impl/jam/JClass;->getFieldDescriptor()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, " "

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/jam/JElement;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public print(Lorg/apache/xmlbeans/impl/jam/JElement;Ljava/io/PrintWriter;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/xmlbeans/impl/jam/internal/JamPrinter;->print(Lorg/apache/xmlbeans/impl/jam/JElement;ILjava/io/PrintWriter;)V

    return-void
.end method

.method public print(Lorg/apache/xmlbeans/impl/jam/JamClassIterator;Ljava/io/PrintWriter;)V
    .locals 3

    .line 3
    :goto_0
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/jam/JamClassIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/jam/JamClassIterator;->nextClass()Lorg/apache/xmlbeans/impl/jam/JClass;

    move-result-object v0

    const-string v1, "------------------------------"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/jam/JElement;->getQualifiedName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lorg/apache/xmlbeans/impl/jam/internal/JamPrinter;->print(Lorg/apache/xmlbeans/impl/jam/JElement;Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_0

    :cond_0
    return-void
.end method
