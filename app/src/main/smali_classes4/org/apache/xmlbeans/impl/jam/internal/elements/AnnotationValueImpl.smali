.class public Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationValueImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/jam/JAnnotationValue;


# instance fields
.field private mContext:Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementContext;

.field private mName:Ljava/lang/String;

.field private mType:Lorg/apache/xmlbeans/impl/jam/internal/classrefs/JClassRef;

.field private mValue:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementContext;Ljava/lang/String;Ljava/lang/Object;Lorg/apache/xmlbeans/impl/jam/JClass;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationValueImpl;->mValue:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationValueImpl;->mType:Lorg/apache/xmlbeans/impl/jam/internal/classrefs/JClassRef;

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    if-eqz p3, :cond_2

    if-eqz p4, :cond_1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p3}, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationValueImpl;->ensureArrayWrapped(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    iput-object p3, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationValueImpl;->mValue:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p3, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationValueImpl;->mValue:Ljava/lang/Object;

    :goto_0
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationValueImpl;->mContext:Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementContext;

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationValueImpl;->mName:Ljava/lang/String;

    invoke-static {p4}, Lorg/apache/xmlbeans/impl/jam/internal/classrefs/QualifiedJClassRef;->create(Lorg/apache/xmlbeans/impl/jam/JClass;)Lorg/apache/xmlbeans/impl/jam/internal/classrefs/JClassRef;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationValueImpl;->mType:Lorg/apache/xmlbeans/impl/jam/internal/classrefs/JClassRef;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null value"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null name"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null ctx"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static final ensureArrayWrapped(Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6

    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_0

    check-cast p0, [Ljava/lang/Object;

    return-object p0

    :cond_0
    instance-of v0, p0, [I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p0, [I

    array-length v0, p0

    new-array v2, v0, [Ljava/lang/Integer;

    :goto_0
    if-ge v1, v0, :cond_1

    new-instance v3, Ljava/lang/Integer;

    aget v4, p0, v1

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v2

    :cond_2
    instance-of v0, p0, [Z

    if-eqz v0, :cond_4

    check-cast p0, [Z

    array-length v0, p0

    new-array v2, v0, [Ljava/lang/Boolean;

    :goto_1
    if-ge v1, v0, :cond_3

    aget-boolean v3, p0, v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object v2

    :cond_4
    instance-of v0, p0, [B

    if-eqz v0, :cond_6

    check-cast p0, [B

    array-length v0, p0

    new-array v2, v0, [Ljava/lang/Byte;

    :goto_2
    if-ge v1, v0, :cond_5

    new-instance v3, Ljava/lang/Byte;

    aget-byte v4, p0, v1

    invoke-direct {v3, v4}, Ljava/lang/Byte;-><init>(B)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    return-object v2

    :cond_6
    instance-of v0, p0, [C

    if-eqz v0, :cond_8

    check-cast p0, [C

    array-length v0, p0

    new-array v2, v0, [Ljava/lang/Character;

    :goto_3
    if-ge v1, v0, :cond_7

    new-instance v3, Ljava/lang/Character;

    aget-char v4, p0, v1

    invoke-direct {v3, v4}, Ljava/lang/Character;-><init>(C)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    return-object v2

    :cond_8
    instance-of v0, p0, [F

    if-eqz v0, :cond_a

    check-cast p0, [F

    array-length v0, p0

    new-array v2, v0, [Ljava/lang/Float;

    :goto_4
    if-ge v1, v0, :cond_9

    new-instance v3, Ljava/lang/Float;

    aget v4, p0, v1

    invoke-direct {v3, v4}, Ljava/lang/Float;-><init>(F)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_9
    return-object v2

    :cond_a
    instance-of v0, p0, [D

    if-eqz v0, :cond_c

    check-cast p0, [D

    array-length v0, p0

    new-array v2, v0, [Ljava/lang/Double;

    :goto_5
    if-ge v1, v0, :cond_b

    new-instance v3, Ljava/lang/Double;

    aget-wide v4, p0, v1

    invoke-direct {v3, v4, v5}, Ljava/lang/Double;-><init>(D)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_b
    return-object v2

    :cond_c
    instance-of v0, p0, [J

    if-eqz v0, :cond_e

    check-cast p0, [J

    array-length v0, p0

    new-array v2, v0, [Ljava/lang/Long;

    :goto_6
    if-ge v1, v0, :cond_d

    new-instance v3, Ljava/lang/Long;

    aget-wide v4, p0, v1

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_d
    return-object v2

    :cond_e
    instance-of v0, p0, [S

    if-eqz v0, :cond_10

    check-cast p0, [S

    array-length v0, p0

    new-array v2, v0, [Ljava/lang/Short;

    :goto_7
    if-ge v1, v0, :cond_f

    new-instance v3, Ljava/lang/Short;

    aget-short v4, p0, v1

    invoke-direct {v3, v4}, Ljava/lang/Short;-><init>(S)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_f
    return-object v2

    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Unknown array type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asAnnotation()Lorg/apache/xmlbeans/impl/jam/JAnnotation;
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationValueImpl;->mValue:Ljava/lang/Object;

    instance-of v1, v0, Lorg/apache/xmlbeans/impl/jam/JAnnotation;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/xmlbeans/impl/jam/JAnnotation;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public asAnnotationArray()[Lorg/apache/xmlbeans/impl/jam/JAnnotation;
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationValueImpl;->mValue:Ljava/lang/Object;

    instance-of v1, v0, [Lorg/apache/xmlbeans/impl/jam/JAnnotation;

    if-eqz v1, :cond_0

    check-cast v0, [Lorg/apache/xmlbeans/impl/jam/JAnnotation;

    check-cast v0, [Lorg/apache/xmlbeans/impl/jam/JAnnotation;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public asBoolean()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationValueImpl;->mValue:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public asBooleanArray()[Z
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationValueImpl;->mValue:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    return-object v0

    .line 15
    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationValueImpl;->mValue:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, [Ljava/lang/Object;

    .line 18
    .line 19
    array-length v0, v0

    .line 20
    new-array v1, v0, [Z

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    const/4 v3, 0x0

    .line 24
    :goto_0
    if-ge v3, v0, :cond_2

    .line 25
    .line 26
    iget-object v4, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationValueImpl;->mValue:Ljava/lang/Object;

    .line 27
    .line 28
    move-object v5, v4

    .line 29
    check-cast v5, [Ljava/lang/Object;

    .line 30
    .line 31
    aget-object v5, v5, v3

    .line 32
    .line 33
    if-nez v5, :cond_1

    .line 34
    .line 35
    iget-object v4, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationValueImpl;->mContext:Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementContext;

    .line 36
    .line 37
    invoke-interface {v4}, Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementContext;->getLogger()Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    const-string v5, "Null annotation value array element "

    .line 42
    .line 43
    const-string v6, " on "

    .line 44
    .line 45
    invoke-static {v3, v5, v6}, Lorg/apache/ftpserver/main/a;->k(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationValueImpl;->getName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    invoke-interface {v4, v5}, Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;->error(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    aput-boolean v2, v1, v3

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    check-cast v4, [Ljava/lang/Object;

    .line 67
    .line 68
    aget-object v4, v4, v3

    .line 69
    .line 70
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    aput-boolean v4, v1, v3

    .line 83
    .line 84
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_2
    return-object v1
.end method

.method public asByte()B
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationValueImpl;->mValue:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, v0, Ljava/lang/Number;

    if-eqz v2, :cond_1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->byteValue()B

    move-result v0

    return v0

    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    return v1
.end method

.method public asByteArray()[B
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationValueImpl;->mValue:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    return-object v0

    .line 15
    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationValueImpl;->mValue:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, [Ljava/lang/Object;

    .line 18
    .line 19
    array-length v0, v0

    .line 20
    new-array v1, v0, [B

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    const/4 v3, 0x0

    .line 24
    :goto_0
    if-ge v3, v0, :cond_2

    .line 25
    .line 26
    iget-object v4, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationValueImpl;->mValue:Ljava/lang/Object;

    .line 27
    .line 28
    move-object v5, v4

    .line 29
    check-cast v5, [Ljava/lang/Object;

    .line 30
    .line 31
    aget-object v5, v5, v3

    .line 32
    .line 33
    if-nez v5, :cond_1

    .line 34
    .line 35
    iget-object v4, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationValueImpl;->mContext:Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementContext;

    .line 36
    .line 37
    invoke-interface {v4}, Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementContext;->getLogger()Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    const-string v5, "Null annotation value array element "

    .line 42
    .line 43
    const-string v6, " on "

    .line 44
    .line 45
    invoke-static {v3, v5, v6}, Lorg/apache/ftpserver/main/a;->k(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationValueImpl;->getName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    invoke-interface {v4, v5}, Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;->error(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    aput-byte v2, v1, v3

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    check-cast v4, [Ljava/lang/Object;

    .line 67
    .line 68
    aget-object v4, v4, v3

    .line 69
    .line 70
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-static {v4}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    aput-byte v4, v1, v3

    .line 79
    .line 80
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    return-object v1
.end method

.method public asChar()C
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationValueImpl;->mValue:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, v0, Ljava/lang/Character;

    if-eqz v2, :cond_1

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    return v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationValueImpl;->mValue:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationValueImpl;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_0
    return v1
.end method

.method public asCharArray()[C
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationValueImpl;->mValue:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    return-object v0

    .line 15
    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationValueImpl;->mValue:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, [Ljava/lang/Object;

    .line 18
    .line 19
    array-length v0, v0

    .line 20
    new-array v1, v0, [C

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    const/4 v3, 0x0

    .line 24
    :goto_0
    if-ge v3, v0, :cond_2

    .line 25
    .line 26
    iget-object v4, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationValueImpl;->mValue:Ljava/lang/Object;

    .line 27
    .line 28
    move-object v5, v4

    .line 29
    check-cast v5, [Ljava/lang/Object;

    .line 30
    .line 31
    aget-object v5, v5, v3

    .line 32
    .line 33
    if-nez v5, :cond_1

    .line 34
    .line 35
    iget-object v4, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationValueImpl;->mContext:Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementContext;

    .line 36
    .line 37
    invoke-interface {v4}, Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementContext;->getLogger()Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    const-string v5, "Null annotation value array element "

    .line 42
    .line 43
    const-string v6, " on "

    .line 44
    .line 45
    invoke-static {v3, v5, v6}, Lorg/apache/ftpserver/main/a;->k(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationValueImpl;->getName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    invoke-interface {v4, v5}, Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;->error(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    aput-char v2, v1, v3

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    check-cast v4, [Ljava/lang/Object;

    .line 67
    .line 68
    aget-object v4, v4, v3

    .line 69
    .line 70
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    aput-char v4, v1, v3

    .line 79
    .line 80
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    return-object v1
.end method

.method public asClass()Lorg/apache/xmlbeans/impl/jam/JClass;
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationValueImpl;->mValue:Ljava/lang/Object;

    instance-of v1, v0, Lorg/apache/xmlbeans/impl/jam/JClass;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/xmlbeans/impl/jam/JClass;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public asClassArray()[Lorg/apache/xmlbeans/impl/jam/JClass;
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationValueImpl;->mValue:Ljava/lang/Object;

    instance-of v1, v0, [Lorg/apache/xmlbeans/impl/jam/JClass;

    if-eqz v1, :cond_0

    check-cast v0, [Lorg/apache/xmlbeans/impl/jam/JClass;

    check-cast v0, [Lorg/apache/xmlbeans/impl/jam/JClass;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public asDouble()D
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationValueImpl;->mValue:Ljava/lang/Object;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    instance-of v3, v0, Ljava/lang/Number;

    if-eqz v3, :cond_1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    return-wide v1
.end method

.method public asDoubleArray()[D
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationValueImpl;->mValue:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    return-object v0

    .line 15
    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationValueImpl;->mValue:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, [Ljava/lang/Object;

    .line 18
    .line 19
    array-length v0, v0

    .line 20
    new-array v1, v0, [D

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    :goto_0
    if-ge v2, v0, :cond_2

    .line 24
    .line 25
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationValueImpl;->mValue:Ljava/lang/Object;

    .line 26
    .line 27
    move-object v4, v3

    .line 28
    check-cast v4, [Ljava/lang/Object;

    .line 29
    .line 30
    aget-object v4, v4, v2

    .line 31
    .line 32
    if-nez v4, :cond_1

    .line 33
    .line 34
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationValueImpl;->mContext:Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementContext;

    .line 35
    .line 36
    invoke-interface {v3}, Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementContext;->getLogger()Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    const-string v4, "Null annotation value array element "

    .line 41
    .line 42
    const-string v5, " on "

    .line 43
    .line 44
    invoke-static {v2, v4, v5}, Lorg/apache/ftpserver/main/a;->k(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationValueImpl;->getName()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-interface {v3, v4}, Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;->error(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const-wide/16 v3, 0x0

    .line 63
    .line 64
    aput-wide v3, v1, v2

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_1
    check-cast v3, [Ljava/lang/Object;

    .line 68
    .line 69
    aget-object v3, v3, v2

    .line 70
    .line 71
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 76
    .line 77
    .line 78
    move-result-wide v3

    .line 79
    aput-wide v3, v1, v2

    .line 80
    .line 81
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_2
    return-object v1
.end method

.method public asFloat()F
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationValueImpl;->mValue:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, v0, Ljava/lang/Number;

    if-eqz v2, :cond_1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0

    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    return v1
.end method

.method public asFloatArray()[F
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationValueImpl;->mValue:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    return-object v0

    .line 15
    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationValueImpl;->mValue:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, [Ljava/lang/Object;

    .line 18
    .line 19
    array-length v0, v0

    .line 20
    new-array v1, v0, [F

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    :goto_0
    if-ge v2, v0, :cond_2

    .line 24
    .line 25
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationValueImpl;->mValue:Ljava/lang/Object;

    .line 26
    .line 27
    move-object v4, v3

    .line 28
    check-cast v4, [Ljava/lang/Object;

    .line 29
    .line 30
    aget-object v4, v4, v2

    .line 31
    .line 32
    if-nez v4, :cond_1

    .line 33
    .line 34
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationValueImpl;->mContext:Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementContext;

    .line 35
    .line 36
    invoke-interface {v3}, Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementContext;->getLogger()Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    const-string v4, "Null annotation value array element "

    .line 41
    .line 42
    const-string v5, " on "

    .line 43
    .line 44
    invoke-static {v2, v4, v5}, Lorg/apache/ftpserver/main/a;->k(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationValueImpl;->getName()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-interface {v3, v4}, Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;->error(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const/4 v3, 0x0

    .line 63
    aput v3, v1, v2

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    check-cast v3, [Ljava/lang/Object;

    .line 67
    .line 68
    aget-object v3, v3, v2

    .line 69
    .line 70
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    aput v3, v1, v2

    .line 79
    .line 80
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    return-object v1
.end method

.method public asInt()I
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationValueImpl;->mValue:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, v0, Ljava/lang/Number;

    if-eqz v2, :cond_1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0

    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    return v1
.end method

.method public asIntArray()[I
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationValueImpl;->mValue:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    return-object v0

    .line 15
    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationValueImpl;->mValue:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, [Ljava/lang/Object;

    .line 18
    .line 19
    array-length v0, v0

    .line 20
    new-array v1, v0, [I

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    const/4 v3, 0x0

    .line 24
    :goto_0
    if-ge v3, v0, :cond_2

    .line 25
    .line 26
    iget-object v4, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationValueImpl;->mValue:Ljava/lang/Object;

    .line 27
    .line 28
    move-object v5, v4

    .line 29
    check-cast v5, [Ljava/lang/Object;

    .line 30
    .line 31
    aget-object v5, v5, v3

    .line 32
    .line 33
    if-nez v5, :cond_1

    .line 34
    .line 35
    iget-object v4, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationValueImpl;->mContext:Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementContext;

    .line 36
    .line 37
    invoke-interface {v4}, Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementContext;->getLogger()Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    const-string v5, "Null annotation value array element "

    .line 42
    .line 43
    const-string v6, " on "

    .line 44
    .line 45
    invoke-static {v3, v5, v6}, Lorg/apache/ftpserver/main/a;->k(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationValueImpl;->getName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    invoke-interface {v4, v5}, Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;->error(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    aput v2, v1, v3

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    check-cast v4, [Ljava/lang/Object;

    .line 67
    .line 68
    aget-object v4, v4, v3

    .line 69
    .line 70
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    aput v4, v1, v3

    .line 79
    .line 80
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    return-object v1
.end method

.method public asLong()J
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationValueImpl;->mValue:Ljava/lang/Object;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    instance-of v3, v0, Ljava/lang/Number;

    if-eqz v3, :cond_1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    return-wide v1
.end method

.method public asLongArray()[J
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationValueImpl;->mValue:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    return-object v0

    .line 15
    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationValueImpl;->mValue:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, [Ljava/lang/Object;

    .line 18
    .line 19
    array-length v0, v0

    .line 20
    new-array v1, v0, [J

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    :goto_0
    if-ge v2, v0, :cond_2

    .line 24
    .line 25
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationValueImpl;->mValue:Ljava/lang/Object;

    .line 26
    .line 27
    move-object v4, v3

    .line 28
    check-cast v4, [Ljava/lang/Object;

    .line 29
    .line 30
    aget-object v4, v4, v2

    .line 31
    .line 32
    if-nez v4, :cond_1

    .line 33
    .line 34
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationValueImpl;->mContext:Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementContext;

    .line 35
    .line 36
    invoke-interface {v3}, Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementContext;->getLogger()Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    const-string v4, "Null annotation value array element "

    .line 41
    .line 42
    const-string v5, " on "

    .line 43
    .line 44
    invoke-static {v2, v4, v5}, Lorg/apache/ftpserver/main/a;->k(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationValueImpl;->getName()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-interface {v3, v4}, Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;->error(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const-wide/16 v3, 0x0

    .line 63
    .line 64
    aput-wide v3, v1, v2

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_1
    check-cast v3, [Ljava/lang/Object;

    .line 68
    .line 69
    aget-object v3, v3, v2

    .line 70
    .line 71
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 76
    .line 77
    .line 78
    move-result-wide v3

    .line 79
    aput-wide v3, v1, v2

    .line 80
    .line 81
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_2
    return-object v1
.end method

.method public asShort()S
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationValueImpl;->mValue:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, v0, Ljava/lang/Number;

    if-eqz v2, :cond_1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v0

    return v0

    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    return v1
.end method

.method public asShortArray()[S
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationValueImpl;->mValue:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    return-object v0

    .line 15
    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationValueImpl;->mValue:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, [Ljava/lang/Object;

    .line 18
    .line 19
    array-length v0, v0

    .line 20
    new-array v1, v0, [S

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    const/4 v3, 0x0

    .line 24
    :goto_0
    if-ge v3, v0, :cond_2

    .line 25
    .line 26
    iget-object v4, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationValueImpl;->mValue:Ljava/lang/Object;

    .line 27
    .line 28
    move-object v5, v4

    .line 29
    check-cast v5, [Ljava/lang/Object;

    .line 30
    .line 31
    aget-object v5, v5, v3

    .line 32
    .line 33
    if-nez v5, :cond_1

    .line 34
    .line 35
    iget-object v4, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationValueImpl;->mContext:Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementContext;

    .line 36
    .line 37
    invoke-interface {v4}, Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementContext;->getLogger()Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    const-string v5, "Null annotation value array element "

    .line 42
    .line 43
    const-string v6, " on "

    .line 44
    .line 45
    invoke-static {v3, v5, v6}, Lorg/apache/ftpserver/main/a;->k(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationValueImpl;->getName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    invoke-interface {v4, v5}, Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;->error(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    aput-short v2, v1, v3

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    check-cast v4, [Ljava/lang/Object;

    .line 67
    .line 68
    aget-object v4, v4, v3

    .line 69
    .line 70
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-static {v4}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    aput-short v4, v1, v3

    .line 79
    .line 80
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    return-object v1
.end method

.method public asString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationValueImpl;->mValue:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public asStringArray()[Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationValueImpl;->mValue:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationValueImpl;->mValue:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    array-length v0, v0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationValueImpl;->mValue:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, [Ljava/lang/Object;

    aget-object v4, v4, v2

    if-nez v4, :cond_1

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationValueImpl;->mContext:Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementContext;

    invoke-interface {v3}, Lorg/apache/xmlbeans/impl/jam/internal/elements/ElementContext;->getLogger()Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "Null annotation value array element on "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationValueImpl;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;->error(Ljava/lang/String;)V

    const-string v3, ""

    aput-object v3, v1, v2

    goto :goto_1

    :cond_1
    check-cast v3, [Ljava/lang/Object;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationValueImpl;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lorg/apache/xmlbeans/impl/jam/JClass;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationValueImpl;->mType:Lorg/apache/xmlbeans/impl/jam/internal/classrefs/JClassRef;

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/jam/internal/classrefs/JClassRef;->getRefClass()Lorg/apache/xmlbeans/impl/jam/JClass;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/elements/AnnotationValueImpl;->mValue:Ljava/lang/Object;

    return-object v0
.end method

.method public isDefaultValueUsed()Z
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "NYI"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
