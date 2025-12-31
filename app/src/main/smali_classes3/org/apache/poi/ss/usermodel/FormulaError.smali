.class public final enum Lorg/apache/poi/ss/usermodel/FormulaError;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/ss/usermodel/FormulaError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/ss/usermodel/FormulaError;

.field public static final enum CIRCULAR_REF:Lorg/apache/poi/ss/usermodel/FormulaError;

.field public static final enum DIV0:Lorg/apache/poi/ss/usermodel/FormulaError;

.field public static final enum FUNCTION_NOT_IMPLEMENTED:Lorg/apache/poi/ss/usermodel/FormulaError;

.field public static final enum NA:Lorg/apache/poi/ss/usermodel/FormulaError;

.field public static final enum NAME:Lorg/apache/poi/ss/usermodel/FormulaError;

.field public static final enum NULL:Lorg/apache/poi/ss/usermodel/FormulaError;

.field public static final enum NUM:Lorg/apache/poi/ss/usermodel/FormulaError;

.field public static final enum REF:Lorg/apache/poi/ss/usermodel/FormulaError;

.field public static final enum VALUE:Lorg/apache/poi/ss/usermodel/FormulaError;

.field public static final enum _NO_ERROR:Lorg/apache/poi/ss/usermodel/FormulaError;
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation
.end field

.field private static final bmap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Byte;",
            "Lorg/apache/poi/ss/usermodel/FormulaError;",
            ">;"
        }
    .end annotation
.end field

.field private static final imap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/ss/usermodel/FormulaError;",
            ">;"
        }
    .end annotation
.end field

.field private static final smap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/ss/usermodel/FormulaError;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final longType:I

.field private final repr:Ljava/lang/String;

.field private final type:B


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lorg/apache/poi/ss/usermodel/FormulaError;

    const/4 v1, -0x1

    const-string v2, "(no error)"

    const-string v3, "_NO_ERROR"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/apache/poi/ss/usermodel/FormulaError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/FormulaError;->_NO_ERROR:Lorg/apache/poi/ss/usermodel/FormulaError;

    new-instance v1, Lorg/apache/poi/ss/usermodel/FormulaError;

    const/4 v2, 0x1

    const-string v3, "#NULL!"

    const-string v5, "NULL"

    invoke-direct {v1, v5, v2, v4, v3}, Lorg/apache/poi/ss/usermodel/FormulaError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lorg/apache/poi/ss/usermodel/FormulaError;->NULL:Lorg/apache/poi/ss/usermodel/FormulaError;

    new-instance v3, Lorg/apache/poi/ss/usermodel/FormulaError;

    const-string v5, "#DIV/0!"

    const-string v6, "DIV0"

    const/4 v7, 0x2

    const/4 v8, 0x7

    invoke-direct {v3, v6, v7, v8, v5}, Lorg/apache/poi/ss/usermodel/FormulaError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lorg/apache/poi/ss/usermodel/FormulaError;->DIV0:Lorg/apache/poi/ss/usermodel/FormulaError;

    new-instance v5, Lorg/apache/poi/ss/usermodel/FormulaError;

    const/16 v6, 0xf

    const-string v9, "#VALUE!"

    const-string v10, "VALUE"

    const/4 v11, 0x3

    invoke-direct {v5, v10, v11, v6, v9}, Lorg/apache/poi/ss/usermodel/FormulaError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lorg/apache/poi/ss/usermodel/FormulaError;->VALUE:Lorg/apache/poi/ss/usermodel/FormulaError;

    new-instance v6, Lorg/apache/poi/ss/usermodel/FormulaError;

    const/16 v9, 0x17

    const-string v10, "#REF!"

    const-string v12, "REF"

    const/4 v13, 0x4

    invoke-direct {v6, v12, v13, v9, v10}, Lorg/apache/poi/ss/usermodel/FormulaError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lorg/apache/poi/ss/usermodel/FormulaError;->REF:Lorg/apache/poi/ss/usermodel/FormulaError;

    new-instance v9, Lorg/apache/poi/ss/usermodel/FormulaError;

    const/16 v10, 0x1d

    const-string v12, "#NAME?"

    const-string v14, "NAME"

    const/4 v15, 0x5

    invoke-direct {v9, v14, v15, v10, v12}, Lorg/apache/poi/ss/usermodel/FormulaError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v9, Lorg/apache/poi/ss/usermodel/FormulaError;->NAME:Lorg/apache/poi/ss/usermodel/FormulaError;

    new-instance v10, Lorg/apache/poi/ss/usermodel/FormulaError;

    const/16 v12, 0x24

    const-string v14, "#NUM!"

    const-string v15, "NUM"

    const/4 v13, 0x6

    invoke-direct {v10, v15, v13, v12, v14}, Lorg/apache/poi/ss/usermodel/FormulaError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v10, Lorg/apache/poi/ss/usermodel/FormulaError;->NUM:Lorg/apache/poi/ss/usermodel/FormulaError;

    new-instance v12, Lorg/apache/poi/ss/usermodel/FormulaError;

    const/16 v14, 0x2a

    const-string v15, "#N/A"

    const-string v13, "NA"

    invoke-direct {v12, v13, v8, v14, v15}, Lorg/apache/poi/ss/usermodel/FormulaError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v12, Lorg/apache/poi/ss/usermodel/FormulaError;->NA:Lorg/apache/poi/ss/usermodel/FormulaError;

    new-instance v13, Lorg/apache/poi/ss/usermodel/FormulaError;

    const/16 v14, -0x3c

    const-string v15, "~CIRCULAR~REF~"

    const-string v8, "CIRCULAR_REF"

    const/16 v11, 0x8

    invoke-direct {v13, v8, v11, v14, v15}, Lorg/apache/poi/ss/usermodel/FormulaError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v13, Lorg/apache/poi/ss/usermodel/FormulaError;->CIRCULAR_REF:Lorg/apache/poi/ss/usermodel/FormulaError;

    new-instance v8, Lorg/apache/poi/ss/usermodel/FormulaError;

    const/16 v14, -0x1e

    const-string v15, "~FUNCTION~NOT~IMPLEMENTED~"

    const-string v11, "FUNCTION_NOT_IMPLEMENTED"

    const/16 v7, 0x9

    invoke-direct {v8, v11, v7, v14, v15}, Lorg/apache/poi/ss/usermodel/FormulaError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lorg/apache/poi/ss/usermodel/FormulaError;->FUNCTION_NOT_IMPLEMENTED:Lorg/apache/poi/ss/usermodel/FormulaError;

    const/16 v11, 0xa

    new-array v11, v11, [Lorg/apache/poi/ss/usermodel/FormulaError;

    aput-object v0, v11, v4

    aput-object v1, v11, v2

    const/4 v0, 0x2

    aput-object v3, v11, v0

    const/4 v0, 0x3

    aput-object v5, v11, v0

    const/4 v0, 0x4

    aput-object v6, v11, v0

    const/4 v0, 0x5

    aput-object v9, v11, v0

    const/4 v0, 0x6

    aput-object v10, v11, v0

    const/4 v0, 0x7

    aput-object v12, v11, v0

    const/16 v0, 0x8

    aput-object v13, v11, v0

    aput-object v8, v11, v7

    sput-object v11, Lorg/apache/poi/ss/usermodel/FormulaError;->$VALUES:[Lorg/apache/poi/ss/usermodel/FormulaError;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/usermodel/FormulaError;->smap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/usermodel/FormulaError;->bmap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/usermodel/FormulaError;->imap:Ljava/util/Map;

    invoke-static {}, Lorg/apache/poi/ss/usermodel/FormulaError;->values()[Lorg/apache/poi/ss/usermodel/FormulaError;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v4, v1, :cond_0

    aget-object v3, v0, v4

    sget-object v5, Lorg/apache/poi/ss/usermodel/FormulaError;->bmap:Ljava/util/Map;

    invoke-virtual {v3}, Lorg/apache/poi/ss/usermodel/FormulaError;->getCode()B

    move-result v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lorg/apache/poi/ss/usermodel/FormulaError;->imap:Ljava/util/Map;

    invoke-virtual {v3}, Lorg/apache/poi/ss/usermodel/FormulaError;->getLongCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lorg/apache/poi/ss/usermodel/FormulaError;->smap:Ljava/util/Map;

    invoke-virtual {v3}, Lorg/apache/poi/ss/usermodel/FormulaError;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v4, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    int-to-byte p1, p3

    iput-byte p1, p0, Lorg/apache/poi/ss/usermodel/FormulaError;->type:B

    iput p3, p0, Lorg/apache/poi/ss/usermodel/FormulaError;->longType:I

    iput-object p4, p0, Lorg/apache/poi/ss/usermodel/FormulaError;->repr:Ljava/lang/String;

    return-void
.end method

.method public static forInt(B)Lorg/apache/poi/ss/usermodel/FormulaError;
    .locals 2

    sget-object v0, Lorg/apache/poi/ss/usermodel/FormulaError;->bmap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/usermodel/FormulaError;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown error type: "

    .line 1
    invoke-static {p0, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static forInt(I)Lorg/apache/poi/ss/usermodel/FormulaError;
    .locals 2

    sget-object v0, Lorg/apache/poi/ss/usermodel/FormulaError;->imap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/usermodel/FormulaError;

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/poi/ss/usermodel/FormulaError;->bmap:Ljava/util/Map;

    int-to-byte v1, p0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/usermodel/FormulaError;

    :cond_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown error type: "

    .line 7
    invoke-static {p0, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 8
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static forString(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/FormulaError;
    .locals 2

    .line 1
    sget-object v0, Lorg/apache/poi/ss/usermodel/FormulaError;->smap:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lorg/apache/poi/ss/usermodel/FormulaError;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    const-string v1, "Unknown error code: "

    .line 15
    .line 16
    invoke-static {v1, p0}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw v0
.end method

.method public static final isValidCode(I)Z
    .locals 7

    invoke-static {}, Lorg/apache/poi/ss/usermodel/FormulaError;->values()[Lorg/apache/poi/ss/usermodel/FormulaError;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lorg/apache/poi/ss/usermodel/FormulaError;->getCode()B

    move-result v5

    const/4 v6, 0x1

    if-ne v5, p0, :cond_0

    return v6

    :cond_0
    invoke-virtual {v4}, Lorg/apache/poi/ss/usermodel/FormulaError;->getLongCode()I

    move-result v4

    if-ne v4, p0, :cond_1

    return v6

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/FormulaError;
    .locals 1

    const-class v0, Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ss/usermodel/FormulaError;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/ss/usermodel/FormulaError;
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/usermodel/FormulaError;->$VALUES:[Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-virtual {v0}, [Lorg/apache/poi/ss/usermodel/FormulaError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ss/usermodel/FormulaError;

    return-object v0
.end method


# virtual methods
.method public getCode()B
    .locals 1

    iget-byte v0, p0, Lorg/apache/poi/ss/usermodel/FormulaError;->type:B

    return v0
.end method

.method public getLongCode()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/usermodel/FormulaError;->longType:I

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/FormulaError;->repr:Ljava/lang/String;

    return-object v0
.end method
