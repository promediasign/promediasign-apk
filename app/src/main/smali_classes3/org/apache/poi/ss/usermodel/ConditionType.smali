.class public Lorg/apache/poi/ss/usermodel/ConditionType;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CELL_VALUE_IS:Lorg/apache/poi/ss/usermodel/ConditionType;

.field public static final COLOR_SCALE:Lorg/apache/poi/ss/usermodel/ConditionType;

.field public static final DATA_BAR:Lorg/apache/poi/ss/usermodel/ConditionType;

.field public static final FILTER:Lorg/apache/poi/ss/usermodel/ConditionType;

.field public static final FORMULA:Lorg/apache/poi/ss/usermodel/ConditionType;

.field public static final ICON_SET:Lorg/apache/poi/ss/usermodel/ConditionType;

.field private static lookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/ss/usermodel/ConditionType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final id:B

.field public final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/usermodel/ConditionType;->lookup:Ljava/util/Map;

    new-instance v0, Lorg/apache/poi/ss/usermodel/ConditionType;

    const/4 v1, 0x1

    const-string v2, "cellIs"

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/ConditionType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/ConditionType;->CELL_VALUE_IS:Lorg/apache/poi/ss/usermodel/ConditionType;

    new-instance v0, Lorg/apache/poi/ss/usermodel/ConditionType;

    const/4 v1, 0x2

    const-string v2, "expression"

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/ConditionType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/ConditionType;->FORMULA:Lorg/apache/poi/ss/usermodel/ConditionType;

    new-instance v0, Lorg/apache/poi/ss/usermodel/ConditionType;

    const/4 v1, 0x3

    const-string v2, "colorScale"

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/ConditionType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/ConditionType;->COLOR_SCALE:Lorg/apache/poi/ss/usermodel/ConditionType;

    new-instance v0, Lorg/apache/poi/ss/usermodel/ConditionType;

    const/4 v1, 0x4

    const-string v2, "dataBar"

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/ConditionType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/ConditionType;->DATA_BAR:Lorg/apache/poi/ss/usermodel/ConditionType;

    new-instance v0, Lorg/apache/poi/ss/usermodel/ConditionType;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/ConditionType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/ConditionType;->FILTER:Lorg/apache/poi/ss/usermodel/ConditionType;

    new-instance v0, Lorg/apache/poi/ss/usermodel/ConditionType;

    const/4 v1, 0x6

    const-string v2, "iconSet"

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/ConditionType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/ConditionType;->ICON_SET:Lorg/apache/poi/ss/usermodel/ConditionType;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    int-to-byte v0, p1

    iput-byte v0, p0, Lorg/apache/poi/ss/usermodel/ConditionType;->id:B

    iput-object p2, p0, Lorg/apache/poi/ss/usermodel/ConditionType;->type:Ljava/lang/String;

    sget-object p2, Lorg/apache/poi/ss/usermodel/ConditionType;->lookup:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static forId(B)Lorg/apache/poi/ss/usermodel/ConditionType;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/ConditionType;->forId(I)Lorg/apache/poi/ss/usermodel/ConditionType;

    move-result-object p0

    return-object p0
.end method

.method public static forId(I)Lorg/apache/poi/ss/usermodel/ConditionType;
    .locals 1

    .line 2
    sget-object v0, Lorg/apache/poi/ss/usermodel/ConditionType;->lookup:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ss/usermodel/ConditionType;

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-byte v1, p0, Lorg/apache/poi/ss/usermodel/ConditionType;->id:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/ss/usermodel/ConditionType;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
