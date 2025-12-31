.class public abstract Lcom/sun/jna/Structure;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/Structure$AutoAllocated;,
        Lcom/sun/jna/Structure$FFIType;,
        Lcom/sun/jna/Structure$StructField;,
        Lcom/sun/jna/Structure$LayoutInfo;,
        Lcom/sun/jna/Structure$FieldOrder;,
        Lcom/sun/jna/Structure$StructureSet;,
        Lcom/sun/jna/Structure$NativeStringTracking;,
        Lcom/sun/jna/Structure$ByReference;,
        Lcom/sun/jna/Structure$ByValue;
    }
.end annotation


# static fields
.field public static final ALIGN_DEFAULT:I = 0x0

.field public static final ALIGN_GNUC:I = 0x2

.field public static final ALIGN_MSVC:I = 0x3

.field public static final ALIGN_NONE:I = 0x1

.field protected static final CALCULATE_SIZE:I = -0x1

.field private static final LOG:Ljava/util/logging/Logger;

.field private static final PLACEHOLDER_MEMORY:Lcom/sun/jna/Pointer;

.field private static final busy:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Set<",
            "Lcom/sun/jna/Structure;",
            ">;>;"
        }
    .end annotation
.end field

.field static final fieldOrder:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field static final layoutInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/sun/jna/Structure$LayoutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final reads:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Lcom/sun/jna/Pointer;",
            "Lcom/sun/jna/Structure;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private actualAlignType:I

.field private alignType:I

.field private array:[Lcom/sun/jna/Structure;

.field private autoRead:Z

.field private autoWrite:Z

.field private encoding:Ljava/lang/String;

.field private memory:Lcom/sun/jna/Pointer;

.field private final nativeStrings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sun/jna/Structure$NativeStringTracking;",
            ">;"
        }
    .end annotation
.end field

.field private readCalled:Z

.field private size:I

.field private structAlignment:I

.field private structFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sun/jna/Structure$StructField;",
            ">;"
        }
    .end annotation
.end field

.field private typeInfo:J

.field private typeMapper:Lcom/sun/jna/TypeMapper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/sun/jna/Structure;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/sun/jna/Structure;->LOG:Ljava/util/logging/Logger;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/sun/jna/Structure;->layoutInfo:Ljava/util/Map;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/sun/jna/Structure;->fieldOrder:Ljava/util/Map;

    new-instance v0, Lcom/sun/jna/Structure$1;

    invoke-direct {v0}, Lcom/sun/jna/Structure$1;-><init>()V

    sput-object v0, Lcom/sun/jna/Structure;->reads:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/sun/jna/Structure$2;

    invoke-direct {v0}, Lcom/sun/jna/Structure$2;-><init>()V

    sput-object v0, Lcom/sun/jna/Structure;->busy:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/sun/jna/Structure$3;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/Structure$3;-><init>(J)V

    sput-object v0, Lcom/sun/jna/Structure;->PLACEHOLDER_MEMORY:Lcom/sun/jna/Pointer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sun/jna/Structure;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;I)V

    return-void
.end method

.method public constructor <init>(ILcom/sun/jna/TypeMapper;)V
    .locals 1

    .line 3
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;ILcom/sun/jna/TypeMapper;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 1

    .line 4
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;I)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;I)V
    .locals 1

    .line 5
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;ILcom/sun/jna/TypeMapper;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;ILcom/sun/jna/TypeMapper;)V
    .locals 3

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sun/jna/Structure;->size:I

    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/sun/jna/Structure;->nativeStrings:Ljava/util/Map;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sun/jna/Structure;->autoRead:Z

    iput-boolean v1, p0, Lcom/sun/jna/Structure;->autoWrite:Z

    invoke-virtual {p0, p2}, Lcom/sun/jna/Structure;->setAlignType(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2}, Lcom/sun/jna/Native;->getStringEncoding(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sun/jna/Structure;->setStringEncoding(Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/sun/jna/Structure;->initializeTypeMapper(Lcom/sun/jna/TypeMapper;)V

    invoke-direct {p0}, Lcom/sun/jna/Structure;->validateFields()V

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/sun/jna/Structure;->useMemory(Lcom/sun/jna/Pointer;IZ)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/sun/jna/Structure;->allocateMemory(I)V

    :goto_0
    invoke-direct {p0}, Lcom/sun/jna/Structure;->initializeFields()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/TypeMapper;)V
    .locals 2

    .line 7
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;ILcom/sun/jna/TypeMapper;)V

    return-void
.end method

.method public static synthetic access$2300(Lcom/sun/jna/Structure;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;->ensureAllocated(Z)V

    return-void
.end method

.method public static synthetic access$2400()Lcom/sun/jna/Pointer;
    .locals 1

    sget-object v0, Lcom/sun/jna/Structure;->PLACEHOLDER_MEMORY:Lcom/sun/jna/Pointer;

    return-object v0
.end method

.method private addPadding(I)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/sun/jna/Structure;->structAlignment:I

    invoke-direct {p0, p1, v0}, Lcom/sun/jna/Structure;->addPadding(II)I

    move-result p1

    return p1
.end method

.method private addPadding(II)I
    .locals 2

    .line 2
    iget v0, p0, Lcom/sun/jna/Structure;->actualAlignType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    rem-int v0, p1, p2

    if-eqz v0, :cond_0

    sub-int/2addr p2, v0

    add-int/2addr p1, p2

    :cond_0
    return p1
.end method

.method private allocateMemory(Z)V
    .locals 1

    .line 8
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/sun/jna/Structure;->calculateSize(ZZ)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sun/jna/Structure;->allocateMemory(I)V

    return-void
.end method

.method public static autoRead([Lcom/sun/jna/Structure;)V
    .locals 3

    .line 2
    invoke-static {p0}, Lcom/sun/jna/Structure;->structureArrayCheck([Lcom/sun/jna/Structure;)V

    const/4 v0, 0x0

    aget-object v1, p0, v0

    iget-object v2, v1, Lcom/sun/jna/Structure;->array:[Lcom/sun/jna/Structure;

    if-ne v2, p0, :cond_0

    invoke-virtual {v1}, Lcom/sun/jna/Structure;->autoRead()V

    goto :goto_1

    :cond_0
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    aget-object v1, p0, v0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/sun/jna/Structure;->autoRead()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static autoWrite([Lcom/sun/jna/Structure;)V
    .locals 3

    .line 2
    invoke-static {p0}, Lcom/sun/jna/Structure;->structureArrayCheck([Lcom/sun/jna/Structure;)V

    const/4 v0, 0x0

    aget-object v1, p0, v0

    iget-object v2, v1, Lcom/sun/jna/Structure;->array:[Lcom/sun/jna/Structure;

    if-ne v2, p0, :cond_0

    invoke-virtual {v1}, Lcom/sun/jna/Structure;->autoWrite()V

    goto :goto_1

    :cond_0
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    aget-object v1, p0, v0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/sun/jna/Structure;->autoWrite()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private baseClass()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    instance-of v0, p0, Lcom/sun/jna/Structure$ByReference;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/sun/jna/Structure$ByValue;

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/sun/jna/Structure;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static busy()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/sun/jna/Structure;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/sun/jna/Structure;->busy:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public static createFieldsOrder(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static createFieldsOrder(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static varargs createFieldsOrder(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sun/jna/Structure;->createFieldsOrder(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static varargs createFieldsOrder([Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private deriveLayout(ZZ)Lcom/sun/jna/Structure$LayoutInfo;
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p1}, Lcom/sun/jna/Structure;->getFields(Z)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-object v2

    .line 11
    :cond_0
    new-instance v3, Lcom/sun/jna/Structure$LayoutInfo;

    .line 12
    .line 13
    invoke-direct {v3, v2}, Lcom/sun/jna/Structure$LayoutInfo;-><init>(Lcom/sun/jna/Structure$1;)V

    .line 14
    .line 15
    .line 16
    iget v4, v1, Lcom/sun/jna/Structure;->alignType:I

    .line 17
    .line 18
    invoke-static {v3, v4}, Lcom/sun/jna/Structure$LayoutInfo;->access$402(Lcom/sun/jna/Structure$LayoutInfo;I)I

    .line 19
    .line 20
    .line 21
    iget-object v4, v1, Lcom/sun/jna/Structure;->typeMapper:Lcom/sun/jna/TypeMapper;

    .line 22
    .line 23
    invoke-static {v3, v4}, Lcom/sun/jna/Structure$LayoutInfo;->access$502(Lcom/sun/jna/Structure$LayoutInfo;Lcom/sun/jna/TypeMapper;)Lcom/sun/jna/TypeMapper;

    .line 24
    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const/4 v4, 0x1

    .line 31
    const/4 v5, 0x0

    .line 32
    const/4 v6, 0x0

    .line 33
    const/4 v7, 0x1

    .line 34
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v8

    .line 38
    if-eqz v8, :cond_15

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v8

    .line 44
    check-cast v8, Ljava/lang/reflect/Field;

    .line 45
    .line 46
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 47
    .line 48
    .line 49
    move-result v9

    .line 50
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    move-result-object v10

    .line 54
    invoke-virtual {v10}, Ljava/lang/Class;->isArray()Z

    .line 55
    .line 56
    .line 57
    move-result v11

    .line 58
    if-eqz v11, :cond_1

    .line 59
    .line 60
    invoke-static {v3, v4}, Lcom/sun/jna/Structure$LayoutInfo;->access$202(Lcom/sun/jna/Structure$LayoutInfo;Z)Z

    .line 61
    .line 62
    .line 63
    :cond_1
    new-instance v11, Lcom/sun/jna/Structure$StructField;

    .line 64
    .line 65
    invoke-direct {v11}, Lcom/sun/jna/Structure$StructField;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-static {v9}, Ljava/lang/reflect/Modifier;->isVolatile(I)Z

    .line 69
    .line 70
    .line 71
    move-result v12

    .line 72
    iput-boolean v12, v11, Lcom/sun/jna/Structure$StructField;->isVolatile:Z

    .line 73
    .line 74
    invoke-static {v9}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    .line 75
    .line 76
    .line 77
    move-result v9

    .line 78
    iput-boolean v9, v11, Lcom/sun/jna/Structure$StructField;->isReadOnly:Z

    .line 79
    .line 80
    const-string v12, "\' within "

    .line 81
    .line 82
    if-eqz v9, :cond_3

    .line 83
    .line 84
    sget-boolean v9, Lcom/sun/jna/Platform;->RO_FIELDS:Z

    .line 85
    .line 86
    if-eqz v9, :cond_2

    .line 87
    .line 88
    invoke-virtual {v8, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 93
    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string v3, "This VM does not support read-only fields (field \'"

    .line 97
    .line 98
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v3, ")"

    .line 119
    .line 120
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw v0

    .line 131
    :cond_3
    :goto_1
    iput-object v8, v11, Lcom/sun/jna/Structure$StructField;->field:Ljava/lang/reflect/Field;

    .line 132
    .line 133
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v9

    .line 137
    iput-object v9, v11, Lcom/sun/jna/Structure$StructField;->name:Ljava/lang/String;

    .line 138
    .line 139
    iput-object v10, v11, Lcom/sun/jna/Structure$StructField;->type:Ljava/lang/Class;

    .line 140
    .line 141
    const-class v9, Lcom/sun/jna/Callback;

    .line 142
    .line 143
    invoke-virtual {v9, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 144
    .line 145
    .line 146
    move-result v9

    .line 147
    if-eqz v9, :cond_5

    .line 148
    .line 149
    invoke-virtual {v10}, Ljava/lang/Class;->isInterface()Z

    .line 150
    .line 151
    .line 152
    move-result v9

    .line 153
    if-eqz v9, :cond_4

    .line 154
    .line 155
    goto :goto_2

    .line 156
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 157
    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    const-string v3, "Structure Callback field \'"

    .line 161
    .line 162
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    const-string v3, "\' must be an interface"

    .line 173
    .line 174
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    throw v0

    .line 185
    :cond_5
    :goto_2
    invoke-virtual {v10}, Ljava/lang/Class;->isArray()Z

    .line 186
    .line 187
    .line 188
    move-result v9

    .line 189
    if-eqz v9, :cond_7

    .line 190
    .line 191
    const-class v9, Lcom/sun/jna/Structure;

    .line 192
    .line 193
    invoke-virtual {v10}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 194
    .line 195
    .line 196
    move-result-object v13

    .line 197
    invoke-virtual {v9, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v9

    .line 201
    if-nez v9, :cond_6

    .line 202
    .line 203
    goto :goto_3

    .line 204
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 205
    .line 206
    const-string v2, "Nested Structure arrays must use a derived Structure type so that the size of the elements can be determined"

    .line 207
    .line 208
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    throw v0

    .line 212
    :cond_7
    :goto_3
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 213
    .line 214
    .line 215
    move-result v9

    .line 216
    invoke-static {v9}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    .line 217
    .line 218
    .line 219
    move-result v9

    .line 220
    if-nez v9, :cond_8

    .line 221
    .line 222
    goto/16 :goto_8

    .line 223
    .line 224
    :cond_8
    iget-object v9, v11, Lcom/sun/jna/Structure$StructField;->field:Ljava/lang/reflect/Field;

    .line 225
    .line 226
    invoke-virtual {v1, v9}, Lcom/sun/jna/Structure;->getFieldValue(Ljava/lang/reflect/Field;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v9

    .line 230
    if-nez v9, :cond_a

    .line 231
    .line 232
    invoke-virtual {v10}, Ljava/lang/Class;->isArray()Z

    .line 233
    .line 234
    .line 235
    move-result v13

    .line 236
    if-eqz v13, :cond_a

    .line 237
    .line 238
    if-nez p1, :cond_9

    .line 239
    .line 240
    return-object v2

    .line 241
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 242
    .line 243
    const-string v2, "Array fields must be initialized"

    .line 244
    .line 245
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    throw v0

    .line 249
    :cond_a
    const-class v13, Lcom/sun/jna/NativeMapped;

    .line 250
    .line 251
    invoke-virtual {v13, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 252
    .line 253
    .line 254
    move-result v13

    .line 255
    if-eqz v13, :cond_b

    .line 256
    .line 257
    invoke-static {v10}, Lcom/sun/jna/NativeMappedConverter;->getInstance(Ljava/lang/Class;)Lcom/sun/jna/NativeMappedConverter;

    .line 258
    .line 259
    .line 260
    move-result-object v13

    .line 261
    invoke-virtual {v13}, Lcom/sun/jna/NativeMappedConverter;->nativeType()Ljava/lang/Class;

    .line 262
    .line 263
    .line 264
    move-result-object v14

    .line 265
    iput-object v13, v11, Lcom/sun/jna/Structure$StructField;->writeConverter:Lcom/sun/jna/ToNativeConverter;

    .line 266
    .line 267
    iput-object v13, v11, Lcom/sun/jna/Structure$StructField;->readConverter:Lcom/sun/jna/FromNativeConverter;

    .line 268
    .line 269
    new-instance v13, Lcom/sun/jna/StructureReadContext;

    .line 270
    .line 271
    invoke-direct {v13, v1, v8}, Lcom/sun/jna/StructureReadContext;-><init>(Lcom/sun/jna/Structure;Ljava/lang/reflect/Field;)V

    .line 272
    .line 273
    .line 274
    iput-object v13, v11, Lcom/sun/jna/Structure$StructField;->context:Lcom/sun/jna/FromNativeContext;

    .line 275
    .line 276
    goto :goto_6

    .line 277
    :cond_b
    iget-object v13, v1, Lcom/sun/jna/Structure;->typeMapper:Lcom/sun/jna/TypeMapper;

    .line 278
    .line 279
    if-eqz v13, :cond_f

    .line 280
    .line 281
    invoke-interface {v13, v10}, Lcom/sun/jna/TypeMapper;->getToNativeConverter(Ljava/lang/Class;)Lcom/sun/jna/ToNativeConverter;

    .line 282
    .line 283
    .line 284
    move-result-object v13

    .line 285
    iget-object v14, v1, Lcom/sun/jna/Structure;->typeMapper:Lcom/sun/jna/TypeMapper;

    .line 286
    .line 287
    invoke-interface {v14, v10}, Lcom/sun/jna/TypeMapper;->getFromNativeConverter(Ljava/lang/Class;)Lcom/sun/jna/FromNativeConverter;

    .line 288
    .line 289
    .line 290
    move-result-object v14

    .line 291
    if-eqz v13, :cond_d

    .line 292
    .line 293
    if-eqz v14, :cond_d

    .line 294
    .line 295
    new-instance v15, Lcom/sun/jna/StructureWriteContext;

    .line 296
    .line 297
    iget-object v4, v11, Lcom/sun/jna/Structure$StructField;->field:Ljava/lang/reflect/Field;

    .line 298
    .line 299
    invoke-direct {v15, v1, v4}, Lcom/sun/jna/StructureWriteContext;-><init>(Lcom/sun/jna/Structure;Ljava/lang/reflect/Field;)V

    .line 300
    .line 301
    .line 302
    invoke-interface {v13, v9, v15}, Lcom/sun/jna/ToNativeConverter;->toNative(Ljava/lang/Object;Lcom/sun/jna/ToNativeContext;)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v9

    .line 306
    if-eqz v9, :cond_c

    .line 307
    .line 308
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 309
    .line 310
    .line 311
    move-result-object v4

    .line 312
    goto :goto_4

    .line 313
    :cond_c
    const-class v4, Lcom/sun/jna/Pointer;

    .line 314
    .line 315
    :goto_4
    iput-object v13, v11, Lcom/sun/jna/Structure$StructField;->writeConverter:Lcom/sun/jna/ToNativeConverter;

    .line 316
    .line 317
    iput-object v14, v11, Lcom/sun/jna/Structure$StructField;->readConverter:Lcom/sun/jna/FromNativeConverter;

    .line 318
    .line 319
    new-instance v13, Lcom/sun/jna/StructureReadContext;

    .line 320
    .line 321
    invoke-direct {v13, v1, v8}, Lcom/sun/jna/StructureReadContext;-><init>(Lcom/sun/jna/Structure;Ljava/lang/reflect/Field;)V

    .line 322
    .line 323
    .line 324
    iput-object v13, v11, Lcom/sun/jna/Structure$StructField;->context:Lcom/sun/jna/FromNativeContext;

    .line 325
    .line 326
    move-object v14, v4

    .line 327
    goto :goto_6

    .line 328
    :cond_d
    if-nez v13, :cond_e

    .line 329
    .line 330
    if-nez v14, :cond_e

    .line 331
    .line 332
    goto :goto_5

    .line 333
    :cond_e
    const-string v0, "Structures require bidirectional type conversion for "

    .line 334
    .line 335
    invoke-static {v0, v10}, Lch/qos/logback/core/joran/util/a;->l(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 340
    .line 341
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    throw v2

    .line 345
    :cond_f
    :goto_5
    move-object v14, v10

    .line 346
    :goto_6
    if-nez v9, :cond_10

    .line 347
    .line 348
    iget-object v4, v11, Lcom/sun/jna/Structure$StructField;->field:Ljava/lang/reflect/Field;

    .line 349
    .line 350
    invoke-direct {v1, v4, v10}, Lcom/sun/jna/Structure;->initializeField(Ljava/lang/reflect/Field;Ljava/lang/Class;)Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    move-result-object v9

    .line 354
    :cond_10
    :try_start_0
    invoke-virtual {v1, v14, v9}, Lcom/sun/jna/Structure;->getNativeSize(Ljava/lang/Class;Ljava/lang/Object;)I

    .line 355
    .line 356
    .line 357
    move-result v4

    .line 358
    iput v4, v11, Lcom/sun/jna/Structure$StructField;->size:I

    .line 359
    .line 360
    invoke-virtual {v1, v14, v9, v7}, Lcom/sun/jna/Structure;->getNativeAlignment(Ljava/lang/Class;Ljava/lang/Object;Z)I

    .line 361
    .line 362
    .line 363
    move-result v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    if-eqz v4, :cond_13

    .line 365
    .line 366
    invoke-static {v3}, Lcom/sun/jna/Structure$LayoutInfo;->access$600(Lcom/sun/jna/Structure$LayoutInfo;)I

    .line 367
    .line 368
    .line 369
    move-result v7

    .line 370
    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    .line 371
    .line 372
    .line 373
    move-result v7

    .line 374
    invoke-static {v3, v7}, Lcom/sun/jna/Structure$LayoutInfo;->access$602(Lcom/sun/jna/Structure$LayoutInfo;I)I

    .line 375
    .line 376
    .line 377
    rem-int v7, v6, v4

    .line 378
    .line 379
    if-eqz v7, :cond_11

    .line 380
    .line 381
    sub-int/2addr v4, v7

    .line 382
    add-int/2addr v6, v4

    .line 383
    :cond_11
    instance-of v4, v1, Lcom/sun/jna/Union;

    .line 384
    .line 385
    if-eqz v4, :cond_12

    .line 386
    .line 387
    iput v5, v11, Lcom/sun/jna/Structure$StructField;->offset:I

    .line 388
    .line 389
    iget v4, v11, Lcom/sun/jna/Structure$StructField;->size:I

    .line 390
    .line 391
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    .line 392
    .line 393
    .line 394
    move-result v4

    .line 395
    move v6, v4

    .line 396
    goto :goto_7

    .line 397
    :cond_12
    iput v6, v11, Lcom/sun/jna/Structure$StructField;->offset:I

    .line 398
    .line 399
    iget v4, v11, Lcom/sun/jna/Structure$StructField;->size:I

    .line 400
    .line 401
    add-int/2addr v6, v4

    .line 402
    :goto_7
    invoke-static {v3}, Lcom/sun/jna/Structure$LayoutInfo;->access$700(Lcom/sun/jna/Structure$LayoutInfo;)Ljava/util/Map;

    .line 403
    .line 404
    .line 405
    move-result-object v4

    .line 406
    iget-object v7, v11, Lcom/sun/jna/Structure$StructField;->name:Ljava/lang/String;

    .line 407
    .line 408
    invoke-interface {v4, v7, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    :goto_8
    const/4 v4, 0x1

    .line 412
    const/4 v7, 0x0

    .line 413
    goto/16 :goto_0

    .line 414
    .line 415
    :cond_13
    new-instance v0, Ljava/lang/Error;

    .line 416
    .line 417
    new-instance v2, Ljava/lang/StringBuilder;

    .line 418
    .line 419
    const-string v3, "Field alignment is zero for field \'"

    .line 420
    .line 421
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    iget-object v3, v11, Lcom/sun/jna/Structure$StructField;->name:Ljava/lang/String;

    .line 425
    .line 426
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 433
    .line 434
    .line 435
    move-result-object v3

    .line 436
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 437
    .line 438
    .line 439
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v2

    .line 443
    invoke-direct {v0, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    throw v0

    .line 447
    :catch_0
    move-exception v0

    .line 448
    if-nez p1, :cond_14

    .line 449
    .line 450
    iget-object v3, v1, Lcom/sun/jna/Structure;->typeMapper:Lcom/sun/jna/TypeMapper;

    .line 451
    .line 452
    if-nez v3, :cond_14

    .line 453
    .line 454
    return-object v2

    .line 455
    :cond_14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 456
    .line 457
    const-string v3, "Invalid Structure field in "

    .line 458
    .line 459
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 463
    .line 464
    .line 465
    move-result-object v3

    .line 466
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 467
    .line 468
    .line 469
    const-string v3, ", field name \'"

    .line 470
    .line 471
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    .line 473
    .line 474
    iget-object v3, v11, Lcom/sun/jna/Structure$StructField;->name:Ljava/lang/String;

    .line 475
    .line 476
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    const-string v3, "\' ("

    .line 480
    .line 481
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    .line 483
    .line 484
    iget-object v3, v11, Lcom/sun/jna/Structure$StructField;->type:Ljava/lang/Class;

    .line 485
    .line 486
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 487
    .line 488
    .line 489
    const-string v3, "): "

    .line 490
    .line 491
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    .line 493
    .line 494
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v3

    .line 498
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    .line 500
    .line 501
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v2

    .line 505
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 506
    .line 507
    invoke-direct {v3, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 508
    .line 509
    .line 510
    throw v3

    .line 511
    :cond_15
    if-lez v6, :cond_17

    .line 512
    .line 513
    invoke-static {v3}, Lcom/sun/jna/Structure$LayoutInfo;->access$600(Lcom/sun/jna/Structure$LayoutInfo;)I

    .line 514
    .line 515
    .line 516
    move-result v0

    .line 517
    invoke-direct {v1, v6, v0}, Lcom/sun/jna/Structure;->addPadding(II)I

    .line 518
    .line 519
    .line 520
    move-result v0

    .line 521
    instance-of v2, v1, Lcom/sun/jna/Structure$ByValue;

    .line 522
    .line 523
    if-eqz v2, :cond_16

    .line 524
    .line 525
    if-nez p2, :cond_16

    .line 526
    .line 527
    invoke-virtual/range {p0 .. p0}, Lcom/sun/jna/Structure;->getTypeInfo()Lcom/sun/jna/Pointer;

    .line 528
    .line 529
    .line 530
    :cond_16
    invoke-static {v3, v0}, Lcom/sun/jna/Structure$LayoutInfo;->access$302(Lcom/sun/jna/Structure$LayoutInfo;I)I

    .line 531
    .line 532
    .line 533
    return-object v3

    .line 534
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 535
    .line 536
    new-instance v2, Ljava/lang/StringBuilder;

    .line 537
    .line 538
    const-string v3, "Structure "

    .line 539
    .line 540
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 541
    .line 542
    .line 543
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 544
    .line 545
    .line 546
    move-result-object v3

    .line 547
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 548
    .line 549
    .line 550
    const-string v3, " has unknown or zero size (ensure all fields are public)"

    .line 551
    .line 552
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    .line 554
    .line 555
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v2

    .line 559
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 560
    .line 561
    .line 562
    throw v0
.end method

.method private ensureAllocated(Z)V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/sun/jna/Structure;->memory:Lcom/sun/jna/Pointer;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;->allocateMemory(Z)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/sun/jna/Structure;->size:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/sun/jna/Structure;->calculateSize(ZZ)I

    move-result p1

    iput p1, p0, Lcom/sun/jna/Structure;->size:I

    iget-object v0, p0, Lcom/sun/jna/Structure;->memory:Lcom/sun/jna/Pointer;

    instance-of v1, v0, Lcom/sun/jna/Structure$AutoAllocated;

    if-nez v1, :cond_1

    int-to-long v1, p1

    const-wide/16 v3, 0x0

    :try_start_0
    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/sun/jna/Pointer;->share(JJ)Lcom/sun/jna/Pointer;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/jna/Structure;->memory:Lcom/sun/jna/Pointer;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Structure exceeds provided memory bounds"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private fieldOrder()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lcom/sun/jna/Structure;->fieldOrder:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/sun/jna/Structure;->getFieldOrder()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-object v2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private format(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static getPointerConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/lang/reflect/Constructor<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    aget-object v4, v4, v1

    const-class v5, Lcom/sun/jna/Pointer;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getTypeInfo(Ljava/lang/Object;)Lcom/sun/jna/Structure$FFIType;
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/sun/jna/Structure$FFIType;->get(Ljava/lang/Object;)Lcom/sun/jna/Structure$FFIType;

    move-result-object p0

    return-object p0
.end method

.method private initializeField(Ljava/lang/reflect/Field;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-class v0, Lcom/sun/jna/Structure;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/sun/jna/Structure$ByReference;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/sun/jna/Structure;->PLACEHOLDER_MEMORY:Lcom/sun/jna/Pointer;

    invoke-static {p2, v0}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sun/jna/Structure;->setFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t determine size of nested structure"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    const-class v0, Lcom/sun/jna/NativeMapped;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lcom/sun/jna/NativeMappedConverter;->getInstance(Ljava/lang/Class;)Lcom/sun/jna/NativeMappedConverter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sun/jna/NativeMappedConverter;->defaultValue()Lcom/sun/jna/NativeMapped;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sun/jna/Structure;->setFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method

.method private initializeFields()V
    .locals 5

    invoke-virtual {p0}, Lcom/sun/jna/Structure;->getFieldList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    :try_start_0
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sun/jna/Structure;->initializeField(Ljava/lang/reflect/Field;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception reading field \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' in "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_1
    return-void
.end method

.method private initializeTypeMapper(Lcom/sun/jna/TypeMapper;)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcom/sun/jna/Native;->getTypeMapper(Ljava/lang/Class;)Lcom/sun/jna/TypeMapper;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/sun/jna/Structure;->typeMapper:Lcom/sun/jna/TypeMapper;

    invoke-direct {p0}, Lcom/sun/jna/Structure;->layoutChanged()V

    return-void
.end method

.method private layoutChanged()V
    .locals 2

    iget v0, p0, Lcom/sun/jna/Structure;->size:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iput v1, p0, Lcom/sun/jna/Structure;->size:I

    iget-object v0, p0, Lcom/sun/jna/Structure;->memory:Lcom/sun/jna/Pointer;

    instance-of v0, v0, Lcom/sun/jna/Structure$AutoAllocated;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/jna/Structure;->memory:Lcom/sun/jna/Pointer;

    :cond_0
    invoke-virtual {p0}, Lcom/sun/jna/Structure;->ensureAllocated()V

    :cond_1
    return-void
.end method

.method public static newInstance(Ljava/lang/Class;)Lcom/sun/jna/Structure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/sun/jna/Structure;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/sun/jna/Klass;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/jna/Structure;

    instance-of v0, p0, Lcom/sun/jna/Structure$ByValue;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/jna/Structure;->allocateMemory()V

    :cond_0
    return-object p0
.end method

.method private static newInstance(Ljava/lang/Class;J)Lcom/sun/jna/Structure;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/sun/jna/Structure;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;J)TT;"
        }
    .end annotation

    .line 2
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    :try_start_0
    sget-object p1, Lcom/sun/jna/Structure;->PLACEHOLDER_MEMORY:Lcom/sun/jna/Pointer;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/sun/jna/Pointer;

    invoke-direct {v0, p1, p2}, Lcom/sun/jna/Pointer;-><init>(J)V

    move-object p1, v0

    :goto_0
    invoke-static {p0, p1}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    move-result-object p0

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/sun/jna/Structure;->conditionalAutoRead()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-object p0

    :goto_1
    sget-object p1, Lcom/sun/jna/Structure;->LOG:Ljava/util/logging/Logger;

    sget-object p2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v0, "JNA: Error creating structure"

    invoke-virtual {p1, p2, v0, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static newInstance(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/sun/jna/Structure;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/sun/jna/Pointer;",
            ")TT;"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/sun/jna/Structure;->getPointerConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/Structure;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_2

    :catch_3
    nop

    goto :goto_3

    :goto_0
    const-string v0, "Exception thrown while instantiating an instance of "

    .line 3
    invoke-static {v0, p0}, Lch/qos/logback/core/joran/util/a;->l(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    .line 4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :goto_1
    const-string v0, "Instantiation of "

    const-string v1, " (Pointer) not allowed, is it public?"

    .line 5
    invoke-static {p0, v0, v1}, Lch/qos/logback/core/joran/util/a;->j(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :goto_2
    const-string v0, "Can\'t instantiate "

    .line 7
    invoke-static {v0, p0}, Lch/qos/logback/core/joran/util/a;->l(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    .line 8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_3
    invoke-static {p0}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;)Lcom/sun/jna/Structure;

    move-result-object p0

    sget-object v0, Lcom/sun/jna/Structure;->PLACEHOLDER_MEMORY:Lcom/sun/jna/Pointer;

    if-eq p1, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sun/jna/Structure;->useMemory(Lcom/sun/jna/Pointer;)V

    :cond_1
    return-object p0
.end method

.method public static reading()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/sun/jna/Pointer;",
            "Lcom/sun/jna/Structure;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/sun/jna/Structure;->reads:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method private setFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;Z)V
    .locals 3

    .line 2
    :try_start_0
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v0

    const-string v1, "\' within "

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    new-instance p3, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "This VM does not support Structures with final fields (field \'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    :cond_0
    new-instance p3, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Attempt to write to read-only field \'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    :cond_1
    new-instance p3, Ljava/lang/Error;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unexpectedly unable to write to field \'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
.end method

.method public static size(Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/sun/jna/Structure;",
            ">;)I"
        }
    .end annotation

    .line 2
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sun/jna/Structure;->size(Ljava/lang/Class;Lcom/sun/jna/Structure;)I

    move-result p0

    return p0
.end method

.method public static size(Ljava/lang/Class;Lcom/sun/jna/Structure;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/sun/jna/Structure;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;)I"
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/sun/jna/Structure;->layoutInfo:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/jna/Structure$LayoutInfo;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, -0x1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/sun/jna/Structure$LayoutInfo;->access$200(Lcom/sun/jna/Structure$LayoutInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/sun/jna/Structure$LayoutInfo;->access$300(Lcom/sun/jna/Structure$LayoutInfo;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    if-ne v1, v0, :cond_2

    if-nez p1, :cond_1

    sget-object p1, Lcom/sun/jna/Structure;->PLACEHOLDER_MEMORY:Lcom/sun/jna/Pointer;

    invoke-static {p0, p1}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    move-result-object p1

    :cond_1
    invoke-virtual {p1}, Lcom/sun/jna/Structure;->size()I

    move-result v1

    :cond_2
    return v1

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static sort(Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "TT;>;>(",
            "Ljava/util/Collection<",
            "+TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method private static structureArrayCheck([Lcom/sun/jna/Structure;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, [Lcom/sun/jna/Structure$ByReference;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    aget-object v1, p0, v0

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    aget-object v0, p0, v0

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/sun/jna/Structure;->size()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v2, 0x1

    .line 28
    :goto_0
    array-length v3, p0

    .line 29
    if-ge v2, v3, :cond_2

    .line 30
    .line 31
    aget-object v3, p0, v2

    .line 32
    .line 33
    invoke-virtual {v3}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    iget-wide v3, v3, Lcom/sun/jna/Pointer;->peer:J

    .line 38
    .line 39
    iget-wide v5, v1, Lcom/sun/jna/Pointer;->peer:J

    .line 40
    .line 41
    mul-int v7, v0, v2

    .line 42
    .line 43
    int-to-long v7, v7

    .line 44
    add-long/2addr v5, v7

    .line 45
    cmp-long v7, v3, v5

    .line 46
    .line 47
    if-nez v7, :cond_1

    .line 48
    .line 49
    add-int/lit8 v2, v2, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const-string p0, "Structure array elements must use contiguous memory (bad backing address at Structure array index "

    .line 53
    .line 54
    const-string v0, ")"

    .line 55
    .line 56
    invoke-static {v2, p0, v0}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 61
    .line 62
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw v0

    .line 66
    :cond_2
    return-void
.end method

.method private toString(IZZ)Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    const/4 v6, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/sun/jna/Structure;->ensureAllocated()V

    const-string v7, "line.separator"

    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-direct {v0, v9}, Lcom/sun/jna/Structure;->format(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v9

    instance-of v9, v9, Lcom/sun/jna/Memory;

    if-nez v9, :cond_0

    const-string v9, " ("

    .line 2
    invoke-static {v8, v9}, Lorg/apache/ftpserver/main/a;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/sun/jna/Structure;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " bytes)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_0
    const-string v9, ""

    move-object v11, v9

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v1, :cond_1

    const-string v12, "  "

    .line 4
    invoke-static {v11, v12}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    add-int/2addr v10, v6

    goto :goto_0

    .line 5
    :cond_1
    const-string v10, "["

    const-string v12, "]"

    if-nez p2, :cond_2

    const-string v9, "...}"

    const/4 v6, 0x0

    goto/16 :goto_6

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/sun/jna/Structure;->fields()Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move-object v14, v7

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sun/jna/Structure$StructField;

    iget-object v3, v15, Lcom/sun/jna/Structure$StructField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v3}, Lcom/sun/jna/Structure;->getFieldValue(Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v3

    iget-object v6, v15, Lcom/sun/jna/Structure$StructField;->type:Ljava/lang/Class;

    invoke-direct {v0, v6}, Lcom/sun/jna/Structure;->format(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    .line 6
    invoke-static {v14, v11}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 7
    iget-object v5, v15, Lcom/sun/jna/Structure$StructField;->type:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v3, :cond_3

    iget-object v5, v15, Lcom/sun/jna/Structure$StructField;->type:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/sun/jna/Structure;->format(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_3
    move-object v4, v9

    .line 8
    :goto_2
    invoke-static {v14}, Lorg/apache/ftpserver/main/a;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 9
    iget-object v14, v15, Lcom/sun/jna/Structure$StructField;->name:Ljava/lang/String;

    iget v15, v15, Lcom/sun/jna/Structure$StructField;->offset:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v16, v9

    const/4 v0, 0x4

    new-array v9, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v6, v9, v0

    const/4 v0, 0x1

    aput-object v14, v9, v0

    const/4 v6, 0x2

    aput-object v4, v9, v6

    const/4 v4, 0x3

    aput-object v15, v9, v4

    const-string v4, "  %s %s%s@0x%X"

    invoke-static {v4, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    instance-of v5, v3, Lcom/sun/jna/Structure;

    if-eqz v5, :cond_4

    move-object v5, v3

    check-cast v5, Lcom/sun/jna/Structure;

    add-int/lit8 v6, v1, 0x1

    instance-of v3, v3, Lcom/sun/jna/Structure$ByReference;

    xor-int/2addr v3, v0

    invoke-direct {v5, v6, v3, v2}, Lcom/sun/jna/Structure;->toString(IZZ)Ljava/lang/String;

    move-result-object v3

    :cond_4
    const-string v5, "="

    .line 10
    invoke-static {v4, v5}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 11
    instance-of v5, v3, Ljava/lang/Long;

    if-eqz v5, :cond_5

    .line 12
    invoke-static {v4}, Lorg/apache/ftpserver/main/a;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 13
    check-cast v3, Ljava/lang/Long;

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const-string v3, "0x%08X"

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_5
    const/4 v6, 0x0

    instance-of v5, v3, Ljava/lang/Integer;

    if-eqz v5, :cond_6

    .line 14
    invoke-static {v4}, Lorg/apache/ftpserver/main/a;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 15
    check-cast v3, Ljava/lang/Integer;

    new-array v5, v0, [Ljava/lang/Object;

    aput-object v3, v5, v6

    const-string v3, "0x%04X"

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_6
    instance-of v5, v3, Ljava/lang/Short;

    if-eqz v5, :cond_7

    .line 16
    invoke-static {v4}, Lorg/apache/ftpserver/main/a;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 17
    check-cast v3, Ljava/lang/Short;

    new-array v5, v0, [Ljava/lang/Object;

    aput-object v3, v5, v6

    const-string v3, "0x%02X"

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_7
    instance-of v5, v3, Ljava/lang/Byte;

    if-eqz v5, :cond_8

    .line 18
    invoke-static {v4}, Lorg/apache/ftpserver/main/a;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 19
    check-cast v3, Ljava/lang/Byte;

    new-array v5, v0, [Ljava/lang/Object;

    aput-object v3, v5, v6

    const-string v0, "0x%01X"

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 20
    :cond_8
    invoke-static {v4}, Lorg/apache/ftpserver/main/a;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 21
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 22
    :goto_5
    invoke-static {v3, v7}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "}"

    .line 24
    invoke-static {v0, v11, v3}, Lorg/apache/ftpserver/main/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_9
    move-object v14, v0

    move-object/from16 v0, p0

    move-object/from16 v9, v16

    const/4 v6, 0x1

    goto/16 :goto_1

    :cond_a
    const/4 v6, 0x0

    move-object v9, v14

    :goto_6
    if-nez v1, :cond_10

    if-eqz v2, :cond_10

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "memory dump"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sun/jna/Structure;->size()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sun/jna/Pointer;->getByteArray(JI)[B

    move-result-object v1

    const/4 v5, 0x0

    :goto_7
    array-length v2, v1

    if-ge v5, v2, :cond_f

    const/4 v2, 0x4

    rem-int/lit8 v3, v5, 0x4

    if-nez v3, :cond_b

    .line 26
    invoke-static {v0, v10}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27
    :cond_b
    aget-byte v4, v1, v5

    if-ltz v4, :cond_c

    const/16 v6, 0x10

    if-ge v4, v6, :cond_c

    const-string v4, "0"

    .line 28
    invoke-static {v0, v4}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    :cond_c
    invoke-static {v0}, Lorg/apache/ftpserver/main/a;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 30
    aget-byte v4, v1, v5

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x3

    if-ne v3, v4, :cond_d

    array-length v3, v1

    const/4 v6, 0x1

    sub-int/2addr v3, v6

    if-ge v5, v3, :cond_e

    .line 31
    invoke-static {v0, v12, v7}, Lorg/apache/ftpserver/main/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_d
    const/4 v6, 0x1

    :cond_e
    :goto_8
    add-int/2addr v5, v6

    goto :goto_7

    .line 32
    :cond_f
    invoke-static {v0, v12}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 33
    :cond_10
    const-string v0, " {"

    .line 34
    invoke-static {v8, v0, v9}, Lorg/apache/ftpserver/main/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static updateStructureByReference(Ljava/lang/Class;Lcom/sun/jna/Structure;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/sun/jna/Structure;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;",
            "Lcom/sun/jna/Pointer;",
            ")TT;"
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_2

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/sun/jna/Pointer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/sun/jna/Structure;->autoRead()V

    goto :goto_2

    :cond_2
    :goto_1
    invoke-static {}, Lcom/sun/jna/Structure;->reading()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/jna/Structure;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {p0, p2}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/jna/Structure;->conditionalAutoRead()V

    move-object p1, p0

    :goto_2
    return-object p1
.end method

.method public static validate(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/sun/jna/Structure;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "No suitable constructor found for class: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateField(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/jna/Structure;->typeMapper:Lcom/sun/jna/TypeMapper;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Lcom/sun/jna/TypeMapper;->getToNativeConverter(Ljava/lang/Class;)Lcom/sun/jna/ToNativeConverter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sun/jna/ToNativeConverter;->nativeType()Ljava/lang/Class;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/sun/jna/Structure;->validateField(Ljava/lang/String;Ljava/lang/Class;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/sun/jna/Structure;->validateField(Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/sun/jna/Structure;->getNativeSize(Ljava/lang/Class;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid Structure field in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", field name \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "): "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private validateFields()V
    .locals 3

    invoke-virtual {p0}, Lcom/sun/jna/Structure;->getFieldList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/sun/jna/Structure;->validateField(Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeField(Lcom/sun/jna/Structure$StructField;Ljava/lang/Object;)V
    .locals 6

    iget v0, p1, Lcom/sun/jna/Structure$StructField;->offset:I

    iget-object v1, p1, Lcom/sun/jna/Structure$StructField;->type:Ljava/lang/Class;

    iget-object v2, p1, Lcom/sun/jna/Structure$StructField;->writeConverter:Lcom/sun/jna/ToNativeConverter;

    if-eqz v2, :cond_0

    new-instance v1, Lcom/sun/jna/StructureWriteContext;

    iget-object v3, p1, Lcom/sun/jna/Structure$StructField;->field:Ljava/lang/reflect/Field;

    invoke-direct {v1, p0, v3}, Lcom/sun/jna/StructureWriteContext;-><init>(Lcom/sun/jna/Structure;Ljava/lang/reflect/Field;)V

    invoke-interface {v2, p2, v1}, Lcom/sun/jna/ToNativeConverter;->toNative(Ljava/lang/Object;Lcom/sun/jna/ToNativeContext;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v2}, Lcom/sun/jna/ToNativeConverter;->nativeType()Ljava/lang/Class;

    move-result-object v1

    :cond_0
    const-class v2, Ljava/lang/String;

    const-class v3, Lcom/sun/jna/WString;

    if-eq v2, v1, :cond_1

    if-ne v3, v1, :cond_5

    :cond_1
    if-eqz p2, :cond_4

    new-instance v2, Lcom/sun/jna/Structure$NativeStringTracking;

    invoke-direct {v2, p2}, Lcom/sun/jna/Structure$NativeStringTracking;-><init>(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/sun/jna/Structure;->nativeStrings:Ljava/util/Map;

    iget-object v5, p1, Lcom/sun/jna/Structure$StructField;->name:Ljava/lang/String;

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/jna/Structure$NativeStringTracking;

    if-eqz v4, :cond_2

    invoke-static {v4}, Lcom/sun/jna/Structure$NativeStringTracking;->access$100(Lcom/sun/jna/Structure$NativeStringTracking;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v4}, Lcom/sun/jna/Structure$NativeStringTracking;->access$000(Lcom/sun/jna/Structure$NativeStringTracking;)Lcom/sun/jna/NativeString;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/sun/jna/Structure$NativeStringTracking;->access$002(Lcom/sun/jna/Structure$NativeStringTracking;Lcom/sun/jna/NativeString;)Lcom/sun/jna/NativeString;

    return-void

    :cond_2
    if-ne v1, v3, :cond_3

    new-instance v3, Lcom/sun/jna/NativeString;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v4, 0x1

    invoke-direct {v3, p2, v4}, Lcom/sun/jna/NativeString;-><init>(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    new-instance v3, Lcom/sun/jna/NativeString;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v4, p0, Lcom/sun/jna/Structure;->encoding:Ljava/lang/String;

    invoke-direct {v3, p2, v4}, Lcom/sun/jna/NativeString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {v2, v3}, Lcom/sun/jna/Structure$NativeStringTracking;->access$002(Lcom/sun/jna/Structure$NativeStringTracking;Lcom/sun/jna/NativeString;)Lcom/sun/jna/NativeString;

    invoke-virtual {v3}, Lcom/sun/jna/NativeString;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object p2

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/sun/jna/Structure;->nativeStrings:Ljava/util/Map;

    iget-object v3, p1, Lcom/sun/jna/Structure$StructField;->name:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/sun/jna/Structure;->memory:Lcom/sun/jna/Pointer;

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4, p2, v1}, Lcom/sun/jna/Pointer;->setValue(JLjava/lang/Object;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Structure field \""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/sun/jna/Structure$StructField;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" was declared as "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/sun/jna/Structure$StructField;->type:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/sun/jna/Structure$StructField;->type:Ljava/lang/Class;

    if-ne p1, v1, :cond_6

    const-string p1, ""

    goto :goto_2

    :cond_6
    const-string p1, " (native type "

    const-string v2, ")"

    .line 2
    invoke-static {v1, p1, v2}, Lch/qos/logback/core/joran/util/a;->j(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    :goto_2
    const-string v1, ", which is not supported within a Structure"

    .line 4
    invoke-static {p1, v1, v0}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public allocateMemory()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sun/jna/Structure;->allocateMemory(Z)V

    return-void
.end method

.method public allocateMemory(I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sun/jna/Structure;->calculateSize(Z)I

    move-result p1

    goto :goto_0

    :cond_0
    if-lez p1, :cond_4

    :goto_0
    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lcom/sun/jna/Structure;->memory:Lcom/sun/jna/Pointer;

    if-eqz v0, :cond_1

    instance-of v0, v0, Lcom/sun/jna/Structure$AutoAllocated;

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sun/jna/Structure;->autoAllocate(I)Lcom/sun/jna/Memory;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/jna/Structure;->memory:Lcom/sun/jna/Pointer;

    :cond_2
    iput p1, p0, Lcom/sun/jna/Structure;->size:I

    :cond_3
    return-void

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Structure size must be greater than zero: "

    .line 2
    invoke-static {p1, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public autoAllocate(I)Lcom/sun/jna/Memory;
    .locals 1

    new-instance v0, Lcom/sun/jna/Structure$AutoAllocated;

    invoke-direct {v0, p1}, Lcom/sun/jna/Structure$AutoAllocated;-><init>(I)V

    return-object v0
.end method

.method public autoRead()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/sun/jna/Structure;->getAutoRead()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/jna/Structure;->read()V

    iget-object v0, p0, Lcom/sun/jna/Structure;->array:[Lcom/sun/jna/Structure;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/sun/jna/Structure;->array:[Lcom/sun/jna/Structure;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sun/jna/Structure;->autoRead()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public autoWrite()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/sun/jna/Structure;->getAutoWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/jna/Structure;->write()V

    iget-object v0, p0, Lcom/sun/jna/Structure;->array:[Lcom/sun/jna/Structure;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/sun/jna/Structure;->array:[Lcom/sun/jna/Structure;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sun/jna/Structure;->autoWrite()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public cacheTypeInfo(Lcom/sun/jna/Pointer;)V
    .locals 2

    iget-wide v0, p1, Lcom/sun/jna/Pointer;->peer:J

    iput-wide v0, p0, Lcom/sun/jna/Structure;->typeInfo:J

    return-void
.end method

.method public calculateSize(Z)I
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sun/jna/Structure;->calculateSize(ZZ)I

    move-result p1

    return p1
.end method

.method public calculateSize(ZZ)I
    .locals 5

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lcom/sun/jna/Structure;->layoutInfo:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/jna/Structure$LayoutInfo;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_0

    iget v3, p0, Lcom/sun/jna/Structure;->alignType:I

    invoke-static {v2}, Lcom/sun/jna/Structure$LayoutInfo;->access$400(Lcom/sun/jna/Structure$LayoutInfo;)I

    move-result v4

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/sun/jna/Structure;->typeMapper:Lcom/sun/jna/TypeMapper;

    invoke-static {v2}, Lcom/sun/jna/Structure$LayoutInfo;->access$500(Lcom/sun/jna/Structure$LayoutInfo;)Lcom/sun/jna/TypeMapper;

    move-result-object v4

    if-eq v3, v4, :cond_1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sun/jna/Structure;->deriveLayout(ZZ)Lcom/sun/jna/Structure$LayoutInfo;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_5

    invoke-static {v2}, Lcom/sun/jna/Structure$LayoutInfo;->access$600(Lcom/sun/jna/Structure$LayoutInfo;)I

    move-result p1

    iput p1, p0, Lcom/sun/jna/Structure;->structAlignment:I

    invoke-static {v2}, Lcom/sun/jna/Structure$LayoutInfo;->access$700(Lcom/sun/jna/Structure$LayoutInfo;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/jna/Structure;->structFields:Ljava/util/Map;

    invoke-static {v2}, Lcom/sun/jna/Structure$LayoutInfo;->access$200(Lcom/sun/jna/Structure$LayoutInfo;)Z

    move-result p1

    if-nez p1, :cond_4

    monitor-enter v1

    :try_start_1
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/sun/jna/Structure;->alignType:I

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/sun/jna/Structure;->typeMapper:Lcom/sun/jna/TypeMapper;

    if-eqz p1, :cond_3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    :goto_0
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_4
    :goto_2
    invoke-static {v2}, Lcom/sun/jna/Structure$LayoutInfo;->access$300(Lcom/sun/jna/Structure$LayoutInfo;)I

    move-result p1

    goto :goto_3

    :cond_5
    const/4 p1, -0x1

    :goto_3
    return p1

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public clear()V
    .locals 3

    invoke-virtual {p0}, Lcom/sun/jna/Structure;->ensureAllocated()V

    iget-object v0, p0, Lcom/sun/jna/Structure;->nativeStrings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/sun/jna/Structure;->memory:Lcom/sun/jna/Pointer;

    invoke-virtual {p0}, Lcom/sun/jna/Structure;->size()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/sun/jna/Pointer;->clear(J)V

    return-void
.end method

.method public conditionalAutoRead()V
    .locals 1

    iget-boolean v0, p0, Lcom/sun/jna/Structure;->readCalled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/jna/Structure;->autoRead()V

    :cond_0
    return-void
.end method

.method public dataEquals(Lcom/sun/jna/Structure;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sun/jna/Structure;->dataEquals(Lcom/sun/jna/Structure;Z)Z

    move-result p1

    return p1
.end method

.method public dataEquals(Lcom/sun/jna/Structure;Z)Z
    .locals 4

    .line 2
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object p2

    invoke-virtual {p1}, Lcom/sun/jna/Structure;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p2, v0, v1}, Lcom/sun/jna/Pointer;->clear(J)V

    invoke-virtual {p1}, Lcom/sun/jna/Structure;->write()V

    invoke-virtual {p0}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object p2

    invoke-virtual {p0}, Lcom/sun/jna/Structure;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p2, v0, v1}, Lcom/sun/jna/Pointer;->clear(J)V

    invoke-virtual {p0}, Lcom/sun/jna/Structure;->write()V

    :cond_0
    invoke-virtual {p1}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object p2

    invoke-virtual {p1}, Lcom/sun/jna/Structure;->size()I

    move-result p1

    const-wide/16 v0, 0x0

    invoke-virtual {p2, v0, v1, p1}, Lcom/sun/jna/Pointer;->getByteArray(JI)[B

    move-result-object p1

    invoke-virtual {p0}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object p2

    invoke-virtual {p0}, Lcom/sun/jna/Structure;->size()I

    move-result v2

    invoke-virtual {p2, v0, v1, v2}, Lcom/sun/jna/Pointer;->getByteArray(JI)[B

    move-result-object p2

    array-length v0, p1

    array-length v1, p2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    aget-byte v1, p1, v0

    aget-byte v3, p2, v0

    if-eq v1, v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    return v2
.end method

.method public ensureAllocated()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sun/jna/Structure;->ensureAllocated(Z)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/sun/jna/Structure;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    check-cast p1, Lcom/sun/jna/Structure;

    invoke-virtual {p1}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sun/jna/Pointer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public fieldOffset(Ljava/lang/String;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/sun/jna/Structure;->ensureAllocated()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/sun/jna/Structure;->fields()Ljava/util/Map;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/sun/jna/Structure$StructField;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget p1, v0, Lcom/sun/jna/Structure$StructField;->offset:I

    .line 17
    .line 18
    return p1

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 20
    .line 21
    const-string v1, "No such field: "

    .line 22
    .line 23
    invoke-static {v1, p1}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw v0
.end method

.method public fields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sun/jna/Structure$StructField;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/jna/Structure;->structFields:Ljava/util/Map;

    return-object v0
.end method

.method public getAutoRead()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sun/jna/Structure;->autoRead:Z

    return v0
.end method

.method public getAutoWrite()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sun/jna/Structure;->autoWrite:Z

    return v0
.end method

.method public getFieldList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_0
    const-class v2, Lcom/sun/jna/Structure;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    array-length v6, v3

    if-ge v5, v6, :cond_2

    aget-object v6, v3, v5

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_2

    :cond_0
    aget-object v6, v3, v5

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v4, v2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public getFieldOrder()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_0
    const-class v2, Lcom/sun/jna/Structure;

    if-eq v1, v2, :cond_1

    const-class v2, Lcom/sun/jna/Structure$FieldOrder;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/sun/jna/Structure$FieldOrder;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/sun/jna/Structure$FieldOrder;->value()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/util/LinkedList;->addAll(ILjava/util/Collection;)Z

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFieldTypeInfo(Lcom/sun/jna/Structure$StructField;)Lcom/sun/jna/Structure$FFIType;
    .locals 3

    iget-object v0, p1, Lcom/sun/jna/Structure$StructField;->type:Ljava/lang/Class;

    iget-object p1, p1, Lcom/sun/jna/Structure$StructField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {p0, p1}, Lcom/sun/jna/Structure;->getFieldValue(Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object p1

    iget-object v1, p0, Lcom/sun/jna/Structure;->typeMapper:Lcom/sun/jna/TypeMapper;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lcom/sun/jna/TypeMapper;->getToNativeConverter(Ljava/lang/Class;)Lcom/sun/jna/ToNativeConverter;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/sun/jna/ToNativeConverter;->nativeType()Ljava/lang/Class;

    move-result-object v0

    new-instance v2, Lcom/sun/jna/ToNativeContext;

    invoke-direct {v2}, Lcom/sun/jna/ToNativeContext;-><init>()V

    invoke-interface {v1, p1, v2}, Lcom/sun/jna/ToNativeConverter;->toNative(Ljava/lang/Object;Lcom/sun/jna/ToNativeContext;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    invoke-static {p1, v0}, Lcom/sun/jna/Structure$FFIType;->access$900(Ljava/lang/Object;Ljava/lang/Class;)Lcom/sun/jna/Structure$FFIType;

    move-result-object p1

    return-object p1
.end method

.method public getFieldValue(Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 4

    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception reading field \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' in "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getFields(Z)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/jna/Structure;->getFieldList()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Field;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sun/jna/Structure;->fieldOrder()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const-string v5, ")"

    const-string v6, "Structure.getFieldOrder() on "

    if-eq v3, v4, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_3

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_1

    const-string v4, " does not provide enough"

    goto :goto_1

    :cond_1
    const-string v4, " provides too many"

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " names ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/sun/jna/Structure;->sort(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") to match declared fields ["

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/sun/jna/Structure;->sort(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/4 p1, 0x0

    return-object p1

    :cond_3
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0, v0, v2}, Lcom/sun/jna/Structure;->sortFields(Ljava/util/List;Ljava/util/List;)V

    return-object v0

    :cond_4
    new-instance p1, Ljava/lang/Error;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " returns names ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/sun/jna/Structure;->sort(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") which do not match declared field names ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/sun/jna/Structure;->sort(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getNativeAlignment(Ljava/lang/Class;Ljava/lang/Object;Z)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Z)I"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/sun/jna/NativeMapped;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {p1}, Lcom/sun/jna/NativeMappedConverter;->getInstance(Ljava/lang/Class;)Lcom/sun/jna/NativeMappedConverter;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/sun/jna/NativeMappedConverter;->nativeType()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Lcom/sun/jna/ToNativeContext;

    .line 18
    .line 19
    invoke-direct {v1}, Lcom/sun/jna/ToNativeContext;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2, v1}, Lcom/sun/jna/NativeMappedConverter;->toNative(Ljava/lang/Object;Lcom/sun/jna/ToNativeContext;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    move-object p1, v0

    .line 27
    :cond_0
    invoke-static {p1, p2}, Lcom/sun/jna/Native;->getNativeSize(Ljava/lang/Class;Ljava/lang/Object;)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    const-class v2, Ljava/lang/Double;

    .line 36
    .line 37
    if-nez v1, :cond_a

    .line 38
    .line 39
    const-class v1, Ljava/lang/Long;

    .line 40
    .line 41
    if-eq v1, p1, :cond_a

    .line 42
    .line 43
    const-class v1, Ljava/lang/Integer;

    .line 44
    .line 45
    if-eq v1, p1, :cond_a

    .line 46
    .line 47
    const-class v1, Ljava/lang/Short;

    .line 48
    .line 49
    if-eq v1, p1, :cond_a

    .line 50
    .line 51
    const-class v1, Ljava/lang/Character;

    .line 52
    .line 53
    if-eq v1, p1, :cond_a

    .line 54
    .line 55
    const-class v1, Ljava/lang/Byte;

    .line 56
    .line 57
    if-eq v1, p1, :cond_a

    .line 58
    .line 59
    const-class v1, Ljava/lang/Boolean;

    .line 60
    .line 61
    if-eq v1, p1, :cond_a

    .line 62
    .line 63
    const-class v1, Ljava/lang/Float;

    .line 64
    .line 65
    if-eq v1, p1, :cond_a

    .line 66
    .line 67
    if-ne v2, p1, :cond_1

    .line 68
    .line 69
    goto/16 :goto_1

    .line 70
    .line 71
    :cond_1
    const-class v0, Lcom/sun/jna/Pointer;

    .line 72
    .line 73
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_2

    .line 78
    .line 79
    const-class v0, Lcom/sun/jna/Function;

    .line 80
    .line 81
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_9

    .line 86
    .line 87
    :cond_2
    sget-boolean v0, Lcom/sun/jna/Platform;->HAS_BUFFERS:Z

    .line 88
    .line 89
    if-eqz v0, :cond_3

    .line 90
    .line 91
    const-class v0, Ljava/nio/Buffer;

    .line 92
    .line 93
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-nez v0, :cond_9

    .line 98
    .line 99
    :cond_3
    const-class v0, Lcom/sun/jna/Callback;

    .line 100
    .line 101
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-nez v0, :cond_9

    .line 106
    .line 107
    const-class v0, Lcom/sun/jna/WString;

    .line 108
    .line 109
    if-eq v0, p1, :cond_9

    .line 110
    .line 111
    const-class v0, Ljava/lang/String;

    .line 112
    .line 113
    if-ne v0, p1, :cond_4

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_4
    const-class v0, Lcom/sun/jna/Structure;

    .line 117
    .line 118
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-eqz v0, :cond_7

    .line 123
    .line 124
    const-class v0, Lcom/sun/jna/Structure$ByReference;

    .line 125
    .line 126
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-eqz v0, :cond_5

    .line 131
    .line 132
    sget v0, Lcom/sun/jna/Native;->POINTER_SIZE:I

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_5
    if-nez p2, :cond_6

    .line 136
    .line 137
    sget-object p2, Lcom/sun/jna/Structure;->PLACEHOLDER_MEMORY:Lcom/sun/jna/Pointer;

    .line 138
    .line 139
    invoke-static {p1, p2}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    :cond_6
    check-cast p2, Lcom/sun/jna/Structure;

    .line 144
    .line 145
    invoke-virtual {p2}, Lcom/sun/jna/Structure;->getStructAlignment()I

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    goto :goto_1

    .line 150
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    .line 151
    .line 152
    .line 153
    move-result p2

    .line 154
    if-eqz p2, :cond_8

    .line 155
    .line 156
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 157
    .line 158
    .line 159
    move-result-object p2

    .line 160
    const/4 v0, 0x0

    .line 161
    invoke-virtual {p0, p2, v0, p3}, Lcom/sun/jna/Structure;->getNativeAlignment(Ljava/lang/Class;Ljava/lang/Object;Z)I

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    goto :goto_1

    .line 166
    :cond_8
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 167
    .line 168
    const-string p3, "Type "

    .line 169
    .line 170
    const-string v0, " has unknown native alignment"

    .line 171
    .line 172
    invoke-static {p1, p3, v0}, Lch/qos/logback/core/joran/util/a;->j(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    throw p2

    .line 180
    :cond_9
    :goto_0
    sget v0, Lcom/sun/jna/Native;->POINTER_SIZE:I

    .line 181
    .line 182
    :cond_a
    :goto_1
    iget p2, p0, Lcom/sun/jna/Structure;->actualAlignType:I

    .line 183
    .line 184
    const/4 v1, 0x1

    .line 185
    if-ne p2, v1, :cond_b

    .line 186
    .line 187
    const/4 v0, 0x1

    .line 188
    goto :goto_2

    .line 189
    :cond_b
    const/4 v1, 0x3

    .line 190
    if-ne p2, v1, :cond_c

    .line 191
    .line 192
    const/16 p1, 0x8

    .line 193
    .line 194
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    goto :goto_2

    .line 199
    :cond_c
    const/4 v1, 0x2

    .line 200
    if-ne p2, v1, :cond_10

    .line 201
    .line 202
    if-eqz p3, :cond_d

    .line 203
    .line 204
    invoke-static {}, Lcom/sun/jna/Platform;->isMac()Z

    .line 205
    .line 206
    .line 207
    move-result p2

    .line 208
    if-eqz p2, :cond_d

    .line 209
    .line 210
    invoke-static {}, Lcom/sun/jna/Platform;->isPPC()Z

    .line 211
    .line 212
    .line 213
    move-result p2

    .line 214
    if-nez p2, :cond_e

    .line 215
    .line 216
    :cond_d
    sget p2, Lcom/sun/jna/Native;->MAX_ALIGNMENT:I

    .line 217
    .line 218
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    :cond_e
    if-nez p3, :cond_10

    .line 223
    .line 224
    invoke-static {}, Lcom/sun/jna/Platform;->isAIX()Z

    .line 225
    .line 226
    .line 227
    move-result p2

    .line 228
    if-eqz p2, :cond_10

    .line 229
    .line 230
    sget-object p2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 231
    .line 232
    if-eq p1, p2, :cond_f

    .line 233
    .line 234
    if-ne p1, v2, :cond_10

    .line 235
    .line 236
    :cond_f
    const/4 v0, 0x4

    .line 237
    :cond_10
    :goto_2
    return v0
.end method

.method public getNativeSize(Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sun/jna/Structure;->getNativeSize(Ljava/lang/Class;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getNativeSize(Ljava/lang/Class;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 2
    invoke-static {p1, p2}, Lcom/sun/jna/Native;->getNativeSize(Ljava/lang/Class;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getPointer()Lcom/sun/jna/Pointer;
    .locals 1

    invoke-virtual {p0}, Lcom/sun/jna/Structure;->ensureAllocated()V

    iget-object v0, p0, Lcom/sun/jna/Structure;->memory:Lcom/sun/jna/Pointer;

    return-object v0
.end method

.method public getStringEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/jna/Structure;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getStructAlignment()I
    .locals 2

    iget v0, p0, Lcom/sun/jna/Structure;->size:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sun/jna/Structure;->calculateSize(Z)I

    :cond_0
    iget v0, p0, Lcom/sun/jna/Structure;->structAlignment:I

    return v0
.end method

.method public getTypeInfo()Lcom/sun/jna/Pointer;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/sun/jna/Structure;->getTypeInfo(Ljava/lang/Object;)Lcom/sun/jna/Structure$FFIType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/jna/Structure;->cacheTypeInfo(Lcom/sun/jna/Pointer;)V

    return-object v0
.end method

.method public getTypeMapper()Lcom/sun/jna/TypeMapper;
    .locals 1

    iget-object v0, p0, Lcom/sun/jna/Structure;->typeMapper:Lcom/sun/jna/TypeMapper;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/jna/Pointer;->hashCode()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public read()V
    .locals 3

    iget-object v0, p0, Lcom/sun/jna/Structure;->memory:Lcom/sun/jna/Pointer;

    sget-object v1, Lcom/sun/jna/Structure;->PLACEHOLDER_MEMORY:Lcom/sun/jna/Pointer;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/jna/Structure;->readCalled:Z

    invoke-virtual {p0}, Lcom/sun/jna/Structure;->ensureAllocated()V

    invoke-static {}, Lcom/sun/jna/Structure;->busy()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    instance-of v0, p0, Lcom/sun/jna/Structure$ByReference;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/sun/jna/Structure;->reading()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/jna/Structure;->fields()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/jna/Structure$StructField;

    invoke-virtual {p0, v2}, Lcom/sun/jna/Structure;->readField(Lcom/sun/jna/Structure$StructField;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/sun/jna/Structure;->busy()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/sun/jna/Structure;->reading()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_4

    invoke-static {}, Lcom/sun/jna/Structure;->reading()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void

    :goto_1
    invoke-static {}, Lcom/sun/jna/Structure;->busy()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/sun/jna/Structure;->reading()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_5

    invoke-static {}, Lcom/sun/jna/Structure;->reading()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    throw v1
.end method

.method public readField(Lcom/sun/jna/Structure$StructField;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p1, Lcom/sun/jna/Structure$StructField;->offset:I

    iget-object v1, p1, Lcom/sun/jna/Structure$StructField;->type:Ljava/lang/Class;

    iget-object v2, p1, Lcom/sun/jna/Structure$StructField;->readConverter:Lcom/sun/jna/FromNativeConverter;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/sun/jna/FromNativeConverter;->nativeType()Ljava/lang/Class;

    move-result-object v1

    :cond_0
    const-class v3, Lcom/sun/jna/Structure;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_3

    const-class v3, Lcom/sun/jna/Callback;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_3

    sget-boolean v3, Lcom/sun/jna/Platform;->HAS_BUFFERS:Z

    if-eqz v3, :cond_1

    const-class v3, Ljava/nio/Buffer;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_1
    const-class v3, Lcom/sun/jna/Pointer;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_3

    const-class v3, Lcom/sun/jna/NativeMapped;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move-object v3, v4

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v3, p1, Lcom/sun/jna/Structure$StructField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {p0, v3}, Lcom/sun/jna/Structure;->getFieldValue(Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v3

    :goto_1
    const-class v5, Ljava/lang/String;

    if-ne v1, v5, :cond_5

    iget-object v6, p0, Lcom/sun/jna/Structure;->memory:Lcom/sun/jna/Pointer;

    int-to-long v7, v0

    invoke-virtual {v6, v7, v8}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    const-wide/16 v6, 0x0

    iget-object v4, p0, Lcom/sun/jna/Structure;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v6, v7, v4}, Lcom/sun/jna/Pointer;->getString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lcom/sun/jna/Structure;->memory:Lcom/sun/jna/Pointer;

    int-to-long v6, v0

    invoke-virtual {v4, v6, v7, v1, v3}, Lcom/sun/jna/Pointer;->getValue(JLjava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :goto_2
    if-eqz v2, :cond_7

    iget-object v0, p1, Lcom/sun/jna/Structure$StructField;->context:Lcom/sun/jna/FromNativeContext;

    invoke-interface {v2, v4, v0}, Lcom/sun/jna/FromNativeConverter;->fromNative(Ljava/lang/Object;Lcom/sun/jna/FromNativeContext;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v3, :cond_6

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    move-object v3, v0

    goto :goto_3

    :cond_7
    move-object v3, v4

    :goto_3
    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-class v0, Lcom/sun/jna/WString;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_8
    if-eqz v3, :cond_9

    new-instance v0, Lcom/sun/jna/Structure$NativeStringTracking;

    invoke-direct {v0, v3}, Lcom/sun/jna/Structure$NativeStringTracking;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sun/jna/Structure;->nativeStrings:Ljava/util/Map;

    iget-object v2, p1, Lcom/sun/jna/Structure$StructField;->name:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/jna/Structure$NativeStringTracking;

    if-eqz v1, :cond_a

    invoke-static {v1}, Lcom/sun/jna/Structure$NativeStringTracking;->access$000(Lcom/sun/jna/Structure$NativeStringTracking;)Lcom/sun/jna/NativeString;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sun/jna/Structure$NativeStringTracking;->access$002(Lcom/sun/jna/Structure$NativeStringTracking;Lcom/sun/jna/NativeString;)Lcom/sun/jna/NativeString;

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lcom/sun/jna/Structure;->nativeStrings:Ljava/util/Map;

    iget-object v1, p1, Lcom/sun/jna/Structure$StructField;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    :goto_4
    iget-object p1, p1, Lcom/sun/jna/Structure$StructField;->field:Ljava/lang/reflect/Field;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v3, v0}, Lcom/sun/jna/Structure;->setFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;Z)V

    return-object v3
.end method

.method public readField(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lcom/sun/jna/Structure;->ensureAllocated()V

    invoke-virtual {p0}, Lcom/sun/jna/Structure;->fields()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/Structure$StructField;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/sun/jna/Structure;->readField(Lcom/sun/jna/Structure$StructField;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No such field: "

    .line 2
    invoke-static {v1, p1}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAlignType(I)V
    .locals 0

    iput p1, p0, Lcom/sun/jna/Structure;->alignType:I

    if-nez p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcom/sun/jna/Native;->getStructureAlignment(Ljava/lang/Class;)I

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/sun/jna/Platform;->isWindows()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :cond_1
    :goto_0
    iput p1, p0, Lcom/sun/jna/Structure;->actualAlignType:I

    invoke-direct {p0}, Lcom/sun/jna/Structure;->layoutChanged()V

    return-void
.end method

.method public setAutoRead(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/jna/Structure;->autoRead:Z

    return-void
.end method

.method public setAutoSynch(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sun/jna/Structure;->setAutoRead(Z)V

    invoke-virtual {p0, p1}, Lcom/sun/jna/Structure;->setAutoWrite(Z)V

    return-void
.end method

.method public setAutoWrite(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/jna/Structure;->autoWrite:Z

    return-void
.end method

.method public setFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sun/jna/Structure;->setFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;Z)V

    return-void
.end method

.method public setStringEncoding(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/jna/Structure;->encoding:Ljava/lang/String;

    return-void
.end method

.method public size()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/sun/jna/Structure;->ensureAllocated()V

    iget v0, p0, Lcom/sun/jna/Structure;->size:I

    return v0
.end method

.method public sortFields(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Field;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v1, v3}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public toArray(I)[Lcom/sun/jna/Structure;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/sun/jna/Structure;

    invoke-virtual {p0, p1}, Lcom/sun/jna/Structure;->toArray([Lcom/sun/jna/Structure;)[Lcom/sun/jna/Structure;

    move-result-object p1

    return-object p1
.end method

.method public toArray([Lcom/sun/jna/Structure;)[Lcom/sun/jna/Structure;
    .locals 8

    .line 2
    invoke-virtual {p0}, Lcom/sun/jna/Structure;->ensureAllocated()V

    iget-object v0, p0, Lcom/sun/jna/Structure;->memory:Lcom/sun/jna/Pointer;

    instance-of v1, v0, Lcom/sun/jna/Structure$AutoAllocated;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/sun/jna/Memory;

    array-length v1, p1

    invoke-virtual {p0}, Lcom/sun/jna/Structure;->size()I

    move-result v2

    mul-int v2, v2, v1

    invoke-virtual {v0}, Lcom/sun/jna/Memory;->size()J

    move-result-wide v0

    int-to-long v3, v2

    cmp-long v5, v0, v3

    if-gez v5, :cond_0

    invoke-virtual {p0, v2}, Lcom/sun/jna/Structure;->autoAllocate(I)Lcom/sun/jna/Memory;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/jna/Structure;->useMemory(Lcom/sun/jna/Pointer;)V

    :cond_0
    const/4 v0, 0x0

    aput-object p0, p1, v0

    invoke-virtual {p0}, Lcom/sun/jna/Structure;->size()I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/jna/Structure;->memory:Lcom/sun/jna/Pointer;

    mul-int v4, v1, v0

    int-to-long v4, v4

    int-to-long v6, v0

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sun/jna/Pointer;->share(JJ)Lcom/sun/jna/Pointer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    move-result-object v2

    aput-object v2, p1, v1

    invoke-virtual {v2}, Lcom/sun/jna/Structure;->conditionalAutoRead()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lcom/sun/jna/Structure$ByValue;

    if-nez v0, :cond_2

    iput-object p1, p0, Lcom/sun/jna/Structure;->array:[Lcom/sun/jna/Structure;

    :cond_2
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "jna.dump_memory"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/jna/Structure;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Z)Ljava/lang/String;
    .locals 2

    .line 53
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/sun/jna/Structure;->toString(IZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public useMemory(Lcom/sun/jna/Pointer;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sun/jna/Structure;->useMemory(Lcom/sun/jna/Pointer;I)V

    return-void
.end method

.method public useMemory(Lcom/sun/jna/Pointer;I)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/jna/Structure;->useMemory(Lcom/sun/jna/Pointer;IZ)V

    return-void
.end method

.method public useMemory(Lcom/sun/jna/Pointer;IZ)V
    .locals 8

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/sun/jna/Structure;->nativeStrings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    instance-of v0, p0, Lcom/sun/jna/Structure$ByValue;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    invoke-virtual {p0}, Lcom/sun/jna/Structure;->size()I

    move-result p2

    new-array p3, p2, [B

    const-wide/16 v3, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    move-object v5, p3

    move v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/sun/jna/Pointer;->read(J[BII)V

    iget-object v2, p0, Lcom/sun/jna/Structure;->memory:Lcom/sun/jna/Pointer;

    const-wide/16 v3, 0x0

    const/4 v6, 0x0

    move-object v5, p3

    move v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/sun/jna/Pointer;->write(J[BII)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    iget p3, p0, Lcom/sun/jna/Structure;->size:I

    const/4 v0, -0x1

    if-ne p3, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/sun/jna/Structure;->calculateSize(Z)I

    move-result p3

    iput p3, p0, Lcom/sun/jna/Structure;->size:I

    :cond_1
    iget p3, p0, Lcom/sun/jna/Structure;->size:I

    if-eq p3, v0, :cond_2

    int-to-long v2, p2

    int-to-long p2, p3

    invoke-virtual {p1, v2, v3, p2, p3}, Lcom/sun/jna/Pointer;->share(JJ)Lcom/sun/jna/Pointer;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/sun/jna/Structure;->memory:Lcom/sun/jna/Pointer;

    goto :goto_1

    :cond_2
    int-to-long p2, p2

    invoke-virtual {p1, p2, p3}, Lcom/sun/jna/Pointer;->share(J)Lcom/sun/jna/Pointer;

    move-result-object p1

    goto :goto_0

    :goto_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/jna/Structure;->array:[Lcom/sun/jna/Structure;

    iput-boolean v1, p0, Lcom/sun/jna/Structure;->readCalled:Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "Structure exceeds provided memory bounds"

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public write()V
    .locals 3

    iget-object v0, p0, Lcom/sun/jna/Structure;->memory:Lcom/sun/jna/Pointer;

    sget-object v1, Lcom/sun/jna/Structure;->PLACEHOLDER_MEMORY:Lcom/sun/jna/Pointer;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sun/jna/Structure;->ensureAllocated()V

    instance-of v0, p0, Lcom/sun/jna/Structure$ByValue;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sun/jna/Structure;->getTypeInfo()Lcom/sun/jna/Pointer;

    :cond_1
    invoke-static {}, Lcom/sun/jna/Structure;->busy()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/jna/Structure;->fields()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/jna/Structure$StructField;

    iget-boolean v2, v1, Lcom/sun/jna/Structure$StructField;->isVolatile:Z

    if-nez v2, :cond_3

    invoke-virtual {p0, v1}, Lcom/sun/jna/Structure;->writeField(Lcom/sun/jna/Structure$StructField;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/sun/jna/Structure;->busy()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void

    :goto_1
    invoke-static {}, Lcom/sun/jna/Structure;->busy()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    throw v0
.end method

.method public writeField(Lcom/sun/jna/Structure$StructField;)V
    .locals 1

    .line 1
    iget-boolean v0, p1, Lcom/sun/jna/Structure$StructField;->isReadOnly:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/sun/jna/Structure$StructField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {p0, v0}, Lcom/sun/jna/Structure;->getFieldValue(Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/jna/Structure;->writeField(Lcom/sun/jna/Structure$StructField;Ljava/lang/Object;)V

    return-void
.end method

.method public writeField(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sun/jna/Structure;->ensureAllocated()V

    invoke-virtual {p0}, Lcom/sun/jna/Structure;->fields()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/Structure$StructField;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/sun/jna/Structure;->writeField(Lcom/sun/jna/Structure$StructField;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No such field: "

    .line 14
    invoke-static {v1, p1}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeField(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sun/jna/Structure;->ensureAllocated()V

    invoke-virtual {p0}, Lcom/sun/jna/Structure;->fields()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/Structure$StructField;

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/sun/jna/Structure$StructField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {p0, p1, p2}, Lcom/sun/jna/Structure;->setFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    invoke-direct {p0, v0, p2}, Lcom/sun/jna/Structure;->writeField(Lcom/sun/jna/Structure$StructField;Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "No such field: "

    .line 20
    invoke-static {v0, p1}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
