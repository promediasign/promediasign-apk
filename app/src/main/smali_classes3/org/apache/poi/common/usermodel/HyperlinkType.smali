.class public final enum Lorg/apache/poi/common/usermodel/HyperlinkType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/common/usermodel/HyperlinkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/common/usermodel/HyperlinkType;

.field public static final enum DOCUMENT:Lorg/apache/poi/common/usermodel/HyperlinkType;

.field public static final enum EMAIL:Lorg/apache/poi/common/usermodel/HyperlinkType;

.field public static final enum FILE:Lorg/apache/poi/common/usermodel/HyperlinkType;

.field public static final enum NONE:Lorg/apache/poi/common/usermodel/HyperlinkType;
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation
.end field

.field public static final enum URL:Lorg/apache/poi/common/usermodel/HyperlinkType;

.field private static final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/common/usermodel/HyperlinkType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final code:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Internal;
        since = "3.15 beta 3"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lorg/apache/poi/common/usermodel/HyperlinkType;

    const/4 v1, -0x1

    const-string v2, "NONE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/apache/poi/common/usermodel/HyperlinkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/common/usermodel/HyperlinkType;->NONE:Lorg/apache/poi/common/usermodel/HyperlinkType;

    new-instance v1, Lorg/apache/poi/common/usermodel/HyperlinkType;

    const-string v2, "URL"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v4}, Lorg/apache/poi/common/usermodel/HyperlinkType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/apache/poi/common/usermodel/HyperlinkType;->URL:Lorg/apache/poi/common/usermodel/HyperlinkType;

    new-instance v2, Lorg/apache/poi/common/usermodel/HyperlinkType;

    const-string v5, "DOCUMENT"

    const/4 v6, 0x2

    invoke-direct {v2, v5, v6, v6}, Lorg/apache/poi/common/usermodel/HyperlinkType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/poi/common/usermodel/HyperlinkType;->DOCUMENT:Lorg/apache/poi/common/usermodel/HyperlinkType;

    new-instance v5, Lorg/apache/poi/common/usermodel/HyperlinkType;

    const-string v7, "EMAIL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lorg/apache/poi/common/usermodel/HyperlinkType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lorg/apache/poi/common/usermodel/HyperlinkType;->EMAIL:Lorg/apache/poi/common/usermodel/HyperlinkType;

    new-instance v7, Lorg/apache/poi/common/usermodel/HyperlinkType;

    const-string v9, "FILE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lorg/apache/poi/common/usermodel/HyperlinkType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lorg/apache/poi/common/usermodel/HyperlinkType;->FILE:Lorg/apache/poi/common/usermodel/HyperlinkType;

    const/4 v9, 0x5

    new-array v9, v9, [Lorg/apache/poi/common/usermodel/HyperlinkType;

    aput-object v0, v9, v3

    aput-object v1, v9, v4

    aput-object v2, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lorg/apache/poi/common/usermodel/HyperlinkType;->$VALUES:[Lorg/apache/poi/common/usermodel/HyperlinkType;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/common/usermodel/HyperlinkType;->map:Ljava/util/Map;

    invoke-static {}, Lorg/apache/poi/common/usermodel/HyperlinkType;->values()[Lorg/apache/poi/common/usermodel/HyperlinkType;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v2, v0, v3

    sget-object v5, Lorg/apache/poi/common/usermodel/HyperlinkType;->map:Ljava/util/Map;

    invoke-virtual {v2}, Lorg/apache/poi/common/usermodel/HyperlinkType;->getCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v3, v4

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Internal;
        since = "3.15 beta 3"
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/apache/poi/common/usermodel/HyperlinkType;->code:I

    return-void
.end method

.method public static forInt(I)Lorg/apache/poi/common/usermodel/HyperlinkType;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Internal;
        since = "3.15 beta 3"
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/poi/common/usermodel/HyperlinkType;->map:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lorg/apache/poi/common/usermodel/HyperlinkType;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 17
    .line 18
    const-string v1, "Invalid type: "

    .line 19
    .line 20
    invoke-static {p0, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/common/usermodel/HyperlinkType;
    .locals 1

    const-class v0, Lorg/apache/poi/common/usermodel/HyperlinkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/common/usermodel/HyperlinkType;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/common/usermodel/HyperlinkType;
    .locals 1

    sget-object v0, Lorg/apache/poi/common/usermodel/HyperlinkType;->$VALUES:[Lorg/apache/poi/common/usermodel/HyperlinkType;

    invoke-virtual {v0}, [Lorg/apache/poi/common/usermodel/HyperlinkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/common/usermodel/HyperlinkType;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Internal;
        since = "3.15 beta 3"
    .end annotation

    iget v0, p0, Lorg/apache/poi/common/usermodel/HyperlinkType;->code:I

    return v0
.end method
