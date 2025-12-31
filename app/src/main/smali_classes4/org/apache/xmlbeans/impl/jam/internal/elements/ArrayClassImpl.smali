.class public final Lorg/apache/xmlbeans/impl/jam/internal/elements/ArrayClassImpl;
.super Lorg/apache/xmlbeans/impl/jam/internal/elements/BuiltinClassImpl;
.source "SourceFile"


# instance fields
.field private mComponentType:Lorg/apache/xmlbeans/impl/jam/JClass;

.field private mDimensions:I


# direct methods
.method private constructor <init>(Lorg/apache/xmlbeans/impl/jam/JClass;I)V
    .locals 1

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementImpl;

    .line 3
    .line 4
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementImpl;->getContext()Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementContext;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/jam/internal/elements/BuiltinClassImpl;-><init>(Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementContext;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    if-lt p2, v0, :cond_1

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/ArrayClassImpl;->mComponentType:Lorg/apache/xmlbeans/impl/jam/JClass;

    .line 17
    .line 18
    iput p2, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/ArrayClassImpl;->mDimensions:I

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 22
    .line 23
    const-string p2, "null componentType"

    .line 24
    .line 25
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1

    .line 29
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 30
    .line 31
    const-string v0, "dimensions="

    .line 32
    .line 33
    invoke-static {p2, v0}, Lorg/apache/ftpserver/main/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p1
.end method

.method public static createClassForFD(Ljava/lang/String;Lorg/apache/xmlbeans/impl/jam/JamClassLoader;)Lorg/apache/xmlbeans/impl/jam/JClass;
    .locals 4

    .line 1
    const-string v0, "["

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_3

    .line 8
    .line 9
    const-string v1, ";"

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const-string v2, "\' is malformed"

    .line 16
    .line 17
    const-string v3, "array type field descriptor \'"

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    const-string v0, "L"

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v1, -0x1

    .line 28
    if-eq v0, v1, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    add-int/lit8 v1, v1, -0x2

    .line 35
    .line 36
    if-ge v0, v1, :cond_0

    .line 37
    .line 38
    add-int/lit8 v1, v0, 0x1

    .line 39
    .line 40
    const/4 v2, 0x1

    .line 41
    invoke-static {p0, v2, v1}, LA/g;->e(Ljava/lang/String;II)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    new-instance v1, Lorg/apache/xmlbeans/impl/jam/internal/elements/ArrayClassImpl;

    .line 46
    .line 47
    invoke-interface {p1, p0}, Lorg/apache/xmlbeans/impl/jam/JamClassLoader;->loadClass(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/jam/JClass;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-direct {v1, p0, v0}, Lorg/apache/xmlbeans/impl/jam/internal/elements/ArrayClassImpl;-><init>(Lorg/apache/xmlbeans/impl/jam/JClass;I)V

    .line 52
    .line 53
    .line 54
    return-object v1

    .line 55
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 56
    .line 57
    invoke-static {v3, p0, v2}, Lch/qos/logback/core/joran/util/a;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p1

    .line 65
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    add-int/lit8 v1, v0, 0x1

    .line 70
    .line 71
    add-int/lit8 v0, v0, 0x2

    .line 72
    .line 73
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-interface {p1, v0}, Lorg/apache/xmlbeans/impl/jam/JamClassLoader;->loadClass(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/jam/JClass;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    if-eqz p1, :cond_2

    .line 82
    .line 83
    new-instance p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/ArrayClassImpl;

    .line 84
    .line 85
    invoke-direct {p0, p1, v1}, Lorg/apache/xmlbeans/impl/jam/internal/elements/ArrayClassImpl;-><init>(Lorg/apache/xmlbeans/impl/jam/JClass;I)V

    .line 86
    .line 87
    .line 88
    return-object p0

    .line 89
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 90
    .line 91
    invoke-static {v3, p0, v2}, Lch/qos/logback/core/joran/util/a;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw p1

    .line 99
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 100
    .line 101
    const-string v0, "must be an array type fd: "

    .line 102
    .line 103
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw p1
.end method

.method public static normalizeArrayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, "["

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    const-string v0, "]"

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    const/16 v0, 0x5b

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/4 v2, -0x1

    .line 25
    if-eq v1, v2, :cond_3

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-static {v3}, Lorg/apache/xmlbeans/impl/jam/internal/elements/PrimitiveClassImpl;->getPrimitiveClassForName(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    if-nez v4, :cond_1

    .line 37
    .line 38
    new-instance v4, Ljava/lang/StringBuffer;

    .line 39
    .line 40
    const-string v5, "L"

    .line 41
    .line 42
    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    .line 47
    .line 48
    const/16 v3, 0x3b

    .line 49
    .line 50
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    :cond_1
    new-instance v3, Ljava/io/StringWriter;

    .line 58
    .line 59
    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 60
    .line 61
    .line 62
    :cond_2
    invoke-virtual {v3, v0}, Ljava/io/StringWriter;->write(I)V

    .line 63
    .line 64
    .line 65
    add-int/lit8 v1, v1, 0x1

    .line 66
    .line 67
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->indexOf(II)I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-ne v1, v2, :cond_2

    .line 72
    .line 73
    invoke-virtual {v3, v4}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    return-object p0

    .line 81
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 82
    .line 83
    const-string v1, "\'"

    .line 84
    .line 85
    const-string v2, "\' does not name an array"

    .line 86
    .line 87
    invoke-static {v1, p0, v2}, Lch/qos/logback/core/joran/util/a;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw v0
.end method


# virtual methods
.method public getArrayComponentType()Lorg/apache/xmlbeans/impl/jam/JClass;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/ArrayClassImpl;->mComponentType:Lorg/apache/xmlbeans/impl/jam/JClass;

    return-object v0
.end method

.method public getArrayDimensions()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/ArrayClassImpl;->mDimensions:I

    return v0
.end method

.method public getFieldDescriptor()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/ArrayClassImpl;->mDimensions:I

    if-ge v1, v2, :cond_0

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/ArrayClassImpl;->mComponentType:Lorg/apache/xmlbeans/impl/jam/JClass;

    invoke-interface {v1}, Lorg/apache/xmlbeans/impl/jam/JClass;->isPrimitiveType()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/ArrayClassImpl;->mComponentType:Lorg/apache/xmlbeans/impl/jam/JClass;

    invoke-interface {v1}, Lorg/apache/xmlbeans/impl/jam/JClass;->getFieldDescriptor()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/ArrayClassImpl;->mComponentType:Lorg/apache/xmlbeans/impl/jam/JClass;

    invoke-interface {v1}, Lorg/apache/xmlbeans/impl/jam/JElement;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    const-string v1, ";"

    goto :goto_1

    :goto_2
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQualifiedName()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/ArrayClassImpl;->mComponentType:Lorg/apache/xmlbeans/impl/jam/JClass;

    invoke-interface {v1}, Lorg/apache/xmlbeans/impl/jam/JElement;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/ArrayClassImpl;->mDimensions:I

    if-ge v1, v2, :cond_0

    const-string v2, "[]"

    invoke-virtual {v0, v2}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimpleName()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/jam/internal/elements/ArrayClassImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getSuperclass()Lorg/apache/xmlbeans/impl/jam/JClass;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementImpl;->getClassLoader()Lorg/apache/xmlbeans/impl/jam/JamClassLoader;

    move-result-object v0

    const-string v1, "java.lang.Object"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/impl/jam/JamClassLoader;->loadClass(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/jam/JClass;

    move-result-object v0

    return-object v0
.end method

.method public isArrayType()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isAssignableFrom(Lorg/apache/xmlbeans/impl/jam/JClass;)Z
    .locals 2

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/jam/JClass;->isArrayType()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/jam/JClass;->getArrayDimensions()I

    move-result v0

    iget v1, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/ArrayClassImpl;->mDimensions:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/ArrayClassImpl;->mComponentType:Lorg/apache/xmlbeans/impl/jam/JClass;

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/jam/JClass;->getArrayComponentType()Lorg/apache/xmlbeans/impl/jam/JClass;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/xmlbeans/impl/jam/JClass;->isAssignableFrom(Lorg/apache/xmlbeans/impl/jam/JClass;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
