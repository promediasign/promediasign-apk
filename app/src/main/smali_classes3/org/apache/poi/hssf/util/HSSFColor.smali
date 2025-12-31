.class public Lorg/apache/poi/hssf/util/HSSFColor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Color;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/util/HSSFColor$AUTOMATIC;,
        Lorg/apache/poi/hssf/util/HSSFColor$LIGHT_CORNFLOWER_BLUE;,
        Lorg/apache/poi/hssf/util/HSSFColor$ROYAL_BLUE;,
        Lorg/apache/poi/hssf/util/HSSFColor$CORAL;,
        Lorg/apache/poi/hssf/util/HSSFColor$ORCHID;,
        Lorg/apache/poi/hssf/util/HSSFColor$MAROON;,
        Lorg/apache/poi/hssf/util/HSSFColor$LEMON_CHIFFON;,
        Lorg/apache/poi/hssf/util/HSSFColor$CORNFLOWER_BLUE;,
        Lorg/apache/poi/hssf/util/HSSFColor$WHITE;,
        Lorg/apache/poi/hssf/util/HSSFColor$LAVENDER;,
        Lorg/apache/poi/hssf/util/HSSFColor$PALE_BLUE;,
        Lorg/apache/poi/hssf/util/HSSFColor$LIGHT_TURQUOISE;,
        Lorg/apache/poi/hssf/util/HSSFColor$LIGHT_GREEN;,
        Lorg/apache/poi/hssf/util/HSSFColor$LIGHT_YELLOW;,
        Lorg/apache/poi/hssf/util/HSSFColor$TAN;,
        Lorg/apache/poi/hssf/util/HSSFColor$ROSE;,
        Lorg/apache/poi/hssf/util/HSSFColor$GREY_25_PERCENT;,
        Lorg/apache/poi/hssf/util/HSSFColor$PLUM;,
        Lorg/apache/poi/hssf/util/HSSFColor$SKY_BLUE;,
        Lorg/apache/poi/hssf/util/HSSFColor$TURQUOISE;,
        Lorg/apache/poi/hssf/util/HSSFColor$BRIGHT_GREEN;,
        Lorg/apache/poi/hssf/util/HSSFColor$YELLOW;,
        Lorg/apache/poi/hssf/util/HSSFColor$GOLD;,
        Lorg/apache/poi/hssf/util/HSSFColor$PINK;,
        Lorg/apache/poi/hssf/util/HSSFColor$GREY_40_PERCENT;,
        Lorg/apache/poi/hssf/util/HSSFColor$VIOLET;,
        Lorg/apache/poi/hssf/util/HSSFColor$LIGHT_BLUE;,
        Lorg/apache/poi/hssf/util/HSSFColor$AQUA;,
        Lorg/apache/poi/hssf/util/HSSFColor$SEA_GREEN;,
        Lorg/apache/poi/hssf/util/HSSFColor$LIME;,
        Lorg/apache/poi/hssf/util/HSSFColor$LIGHT_ORANGE;,
        Lorg/apache/poi/hssf/util/HSSFColor$RED;,
        Lorg/apache/poi/hssf/util/HSSFColor$GREY_50_PERCENT;,
        Lorg/apache/poi/hssf/util/HSSFColor$BLUE_GREY;,
        Lorg/apache/poi/hssf/util/HSSFColor$BLUE;,
        Lorg/apache/poi/hssf/util/HSSFColor$TEAL;,
        Lorg/apache/poi/hssf/util/HSSFColor$GREEN;,
        Lorg/apache/poi/hssf/util/HSSFColor$DARK_YELLOW;,
        Lorg/apache/poi/hssf/util/HSSFColor$ORANGE;,
        Lorg/apache/poi/hssf/util/HSSFColor$DARK_RED;,
        Lorg/apache/poi/hssf/util/HSSFColor$GREY_80_PERCENT;,
        Lorg/apache/poi/hssf/util/HSSFColor$INDIGO;,
        Lorg/apache/poi/hssf/util/HSSFColor$DARK_BLUE;,
        Lorg/apache/poi/hssf/util/HSSFColor$DARK_TEAL;,
        Lorg/apache/poi/hssf/util/HSSFColor$DARK_GREEN;,
        Lorg/apache/poi/hssf/util/HSSFColor$OLIVE_GREEN;,
        Lorg/apache/poi/hssf/util/HSSFColor$BROWN;,
        Lorg/apache/poi/hssf/util/HSSFColor$BLACK;,
        Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorRef;,
        Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;
    }
.end annotation


# static fields
.field private static enumList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;",
            "Lorg/apache/poi/hssf/util/HSSFColor;",
            ">;"
        }
    .end annotation
.end field

.field private static indexHash:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/hssf/util/HSSFColor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private color:Ljava/awt/Color;

.field private index:I

.field private index2:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    const/4 v0, -0x1

    sget-object v1, Ljava/awt/Color;->BLACK:Ljava/awt/Color;

    const/16 v2, 0x40

    invoke-direct {p0, v2, v0, v1}, Lorg/apache/poi/hssf/util/HSSFColor;-><init>(IILjava/awt/Color;)V

    return-void
.end method

.method public constructor <init>(IILjava/awt/Color;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/poi/hssf/util/HSSFColor;->index:I

    iput p2, p0, Lorg/apache/poi/hssf/util/HSSFColor;->index2:I

    iput-object p3, p0, Lorg/apache/poi/hssf/util/HSSFColor;->color:Ljava/awt/Color;

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/poi/hssf/util/HSSFColor;)Ljava/awt/Color;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/util/HSSFColor;->color:Ljava/awt/Color;

    return-object p0
.end method

.method private static createColorsByHexStringMap()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/hssf/util/HSSFColor;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/apache/poi/hssf/util/HSSFColor;->mapEnumToColorClass()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->getHexString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private static createColorsByIndexMap()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/hssf/util/HSSFColor;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/apache/poi/hssf/util/HSSFColor;->mapEnumToColorClass()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->getIndex()S

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->getIndex2()S

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static final declared-synchronized getIndexHash()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/hssf/util/HSSFColor;",
            ">;"
        }
    .end annotation

    const-class v0, Lorg/apache/poi/hssf/util/HSSFColor;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/apache/poi/hssf/util/HSSFColor;->indexHash:Ljava/util/Map;

    if-nez v1, :cond_0

    invoke-static {}, Lorg/apache/poi/hssf/util/HSSFColor;->createColorsByIndexMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/hssf/util/HSSFColor;->indexHash:Ljava/util/Map;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lorg/apache/poi/hssf/util/HSSFColor;->indexHash:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw v1
.end method

.method public static final getMutableIndexHash()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/hssf/util/HSSFColor;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/apache/poi/hssf/util/HSSFColor;->createColorsByIndexMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getTripletHash()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/hssf/util/HSSFColor;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/apache/poi/hssf/util/HSSFColor;->createColorsByHexStringMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized mapEnumToColorClass()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;",
            "Lorg/apache/poi/hssf/util/HSSFColor;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "3.18"
    .end annotation

    const-class v0, Lorg/apache/poi/hssf/util/HSSFColor;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/apache/poi/hssf/util/HSSFColor;->enumList:Ljava/util/Map;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/EnumMap;

    const-class v2, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v1, Lorg/apache/poi/hssf/util/HSSFColor;->enumList:Ljava/util/Map;

    sget-object v2, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->BLACK:Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

    new-instance v3, Lorg/apache/poi/hssf/util/HSSFColor$BLACK;

    invoke-direct {v3}, Lorg/apache/poi/hssf/util/HSSFColor$BLACK;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/poi/hssf/util/HSSFColor;->enumList:Ljava/util/Map;

    sget-object v2, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->BROWN:Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

    new-instance v3, Lorg/apache/poi/hssf/util/HSSFColor$BROWN;

    invoke-direct {v3}, Lorg/apache/poi/hssf/util/HSSFColor$BROWN;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/poi/hssf/util/HSSFColor;->enumList:Ljava/util/Map;

    sget-object v2, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->OLIVE_GREEN:Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

    new-instance v3, Lorg/apache/poi/hssf/util/HSSFColor$OLIVE_GREEN;

    invoke-direct {v3}, Lorg/apache/poi/hssf/util/HSSFColor$OLIVE_GREEN;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/poi/hssf/util/HSSFColor;->enumList:Ljava/util/Map;

    sget-object v2, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->DARK_GREEN:Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

    new-instance v3, Lorg/apache/poi/hssf/util/HSSFColor$DARK_GREEN;

    invoke-direct {v3}, Lorg/apache/poi/hssf/util/HSSFColor$DARK_GREEN;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/poi/hssf/util/HSSFColor;->enumList:Ljava/util/Map;

    sget-object v2, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->DARK_TEAL:Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

    new-instance v3, Lorg/apache/poi/hssf/util/HSSFColor$DARK_TEAL;

    invoke-direct {v3}, Lorg/apache/poi/hssf/util/HSSFColor$DARK_TEAL;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/poi/hssf/util/HSSFColor;->enumList:Ljava/util/Map;

    sget-object v2, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->DARK_BLUE:Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

    new-instance v3, Lorg/apache/poi/hssf/util/HSSFColor$DARK_BLUE;

    invoke-direct {v3}, Lorg/apache/poi/hssf/util/HSSFColor$DARK_BLUE;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/poi/hssf/util/HSSFColor;->enumList:Ljava/util/Map;

    sget-object v2, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->INDIGO:Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

    new-instance v3, Lorg/apache/poi/hssf/util/HSSFColor$INDIGO;

    invoke-direct {v3}, Lorg/apache/poi/hssf/util/HSSFColor$INDIGO;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/poi/hssf/util/HSSFColor;->enumList:Ljava/util/Map;

    sget-object v2, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->GREY_80_PERCENT:Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

    new-instance v3, Lorg/apache/poi/hssf/util/HSSFColor$GREY_80_PERCENT;

    invoke-direct {v3}, Lorg/apache/poi/hssf/util/HSSFColor$GREY_80_PERCENT;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/poi/hssf/util/HSSFColor;->enumList:Ljava/util/Map;

    sget-object v2, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->ORANGE:Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

    new-instance v3, Lorg/apache/poi/hssf/util/HSSFColor$ORANGE;

    invoke-direct {v3}, Lorg/apache/poi/hssf/util/HSSFColor$ORANGE;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/poi/hssf/util/HSSFColor;->enumList:Ljava/util/Map;

    sget-object v2, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->DARK_YELLOW:Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

    new-instance v3, Lorg/apache/poi/hssf/util/HSSFColor$DARK_YELLOW;

    invoke-direct {v3}, Lorg/apache/poi/hssf/util/HSSFColor$DARK_YELLOW;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/poi/hssf/util/HSSFColor;->enumList:Ljava/util/Map;

    sget-object v2, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->GREEN:Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

    new-instance v3, Lorg/apache/poi/hssf/util/HSSFColor$GREEN;

    invoke-direct {v3}, Lorg/apache/poi/hssf/util/HSSFColor$GREEN;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/poi/hssf/util/HSSFColor;->enumList:Ljava/util/Map;

    sget-object v2, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->TEAL:Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

    new-instance v3, Lorg/apache/poi/hssf/util/HSSFColor$TEAL;

    invoke-direct {v3}, Lorg/apache/poi/hssf/util/HSSFColor$TEAL;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/poi/hssf/util/HSSFColor;->enumList:Ljava/util/Map;

    sget-object v2, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->BLUE:Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

    new-instance v3, Lorg/apache/poi/hssf/util/HSSFColor$BLUE;

    invoke-direct {v3}, Lorg/apache/poi/hssf/util/HSSFColor$BLUE;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/poi/hssf/util/HSSFColor;->enumList:Ljava/util/Map;

    sget-object v2, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->BLUE_GREY:Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

    new-instance v3, Lorg/apache/poi/hssf/util/HSSFColor$BLUE_GREY;

    invoke-direct {v3}, Lorg/apache/poi/hssf/util/HSSFColor$BLUE_GREY;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/poi/hssf/util/HSSFColor;->enumList:Ljava/util/Map;

    sget-object v2, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->GREY_50_PERCENT:Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

    new-instance v3, Lorg/apache/poi/hssf/util/HSSFColor$GREY_50_PERCENT;

    invoke-direct {v3}, Lorg/apache/poi/hssf/util/HSSFColor$GREY_50_PERCENT;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/poi/hssf/util/HSSFColor;->enumList:Ljava/util/Map;

    sget-object v2, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->RED:Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

    new-instance v3, Lorg/apache/poi/hssf/util/HSSFColor$RED;

    invoke-direct {v3}, Lorg/apache/poi/hssf/util/HSSFColor$RED;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/poi/hssf/util/HSSFColor;->enumList:Ljava/util/Map;

    sget-object v2, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->LIGHT_ORANGE:Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

    new-instance v3, Lorg/apache/poi/hssf/util/HSSFColor$LIGHT_ORANGE;

    invoke-direct {v3}, Lorg/apache/poi/hssf/util/HSSFColor$LIGHT_ORANGE;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/poi/hssf/util/HSSFColor;->enumList:Ljava/util/Map;

    sget-object v2, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->LIME:Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

    new-instance v3, Lorg/apache/poi/hssf/util/HSSFColor$LIME;

    invoke-direct {v3}, Lorg/apache/poi/hssf/util/HSSFColor$LIME;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/poi/hssf/util/HSSFColor;->enumList:Ljava/util/Map;

    sget-object v2, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->SEA_GREEN:Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

    new-instance v3, Lorg/apache/poi/hssf/util/HSSFColor$SEA_GREEN;

    invoke-direct {v3}, Lorg/apache/poi/hssf/util/HSSFColor$SEA_GREEN;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/poi/hssf/util/HSSFColor;->enumList:Ljava/util/Map;

    sget-object v2, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->AQUA:Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

    new-instance v3, Lorg/apache/poi/hssf/util/HSSFColor$AQUA;

    invoke-direct {v3}, Lorg/apache/poi/hssf/util/HSSFColor$AQUA;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/poi/hssf/util/HSSFColor;->enumList:Ljava/util/Map;

    sget-object v2, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->LIGHT_BLUE:Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

    new-instance v3, Lorg/apache/poi/hssf/util/HSSFColor$LIGHT_BLUE;

    invoke-direct {v3}, Lorg/apache/poi/hssf/util/HSSFColor$LIGHT_BLUE;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/poi/hssf/util/HSSFColor;->enumList:Ljava/util/Map;

    sget-object v2, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->VIOLET:Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

    new-instance v3, Lorg/apache/poi/hssf/util/HSSFColor$VIOLET;

    invoke-direct {v3}, Lorg/apache/poi/hssf/util/HSSFColor$VIOLET;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/poi/hssf/util/HSSFColor;->enumList:Ljava/util/Map;

    sget-object v2, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->GREY_40_PERCENT:Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

    new-instance v3, Lorg/apache/poi/hssf/util/HSSFColor$GREY_40_PERCENT;

    invoke-direct {v3}, Lorg/apache/poi/hssf/util/HSSFColor$GREY_40_PERCENT;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/poi/hssf/util/HSSFColor;->enumList:Ljava/util/Map;

    sget-object v2, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->PINK:Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

    new-instance v3, Lorg/apache/poi/hssf/util/HSSFColor$PINK;

    invoke-direct {v3}, Lorg/apache/poi/hssf/util/HSSFColor$PINK;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/poi/hssf/util/HSSFColor;->enumList:Ljava/util/Map;

    sget-object v2, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->GOLD:Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

    new-instance v3, Lorg/apache/poi/hssf/util/HSSFColor$GOLD;

    invoke-direct {v3}, Lorg/apache/poi/hssf/util/HSSFColor$GOLD;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/poi/hssf/util/HSSFColor;->enumList:Ljava/util/Map;

    sget-object v2, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->YELLOW:Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

    new-instance v3, Lorg/apache/poi/hssf/util/HSSFColor$YELLOW;

    invoke-direct {v3}, Lorg/apache/poi/hssf/util/HSSFColor$YELLOW;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/poi/hssf/util/HSSFColor;->enumList:Ljava/util/Map;

    sget-object v2, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->BRIGHT_GREEN:Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

    new-instance v3, Lorg/apache/poi/hssf/util/HSSFColor$BRIGHT_GREEN;

    invoke-direct {v3}, Lorg/apache/poi/hssf/util/HSSFColor$BRIGHT_GREEN;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/poi/hssf/util/HSSFColor;->enumList:Ljava/util/Map;

    sget-object v2, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->TURQUOISE:Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

    new-instance v3, Lorg/apache/poi/hssf/util/HSSFColor$TURQUOISE;

    invoke-direct {v3}, Lorg/apache/poi/hssf/util/HSSFColor$TURQUOISE;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/poi/hssf/util/HSSFColor;->enumList:Ljava/util/Map;

    sget-object v2, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->DARK_RED:Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

    new-instance v3, Lorg/apache/poi/hssf/util/HSSFColor$DARK_RED;

    invoke-direct {v3}, Lorg/apache/poi/hssf/util/HSSFColor$DARK_RED;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/poi/hssf/util/HSSFColor;->enumList:Ljava/util/Map;

    sget-object v2, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->SKY_BLUE:Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

    new-instance v3, Lorg/apache/poi/hssf/util/HSSFColor$SKY_BLUE;

    invoke-direct {v3}, Lorg/apache/poi/hssf/util/HSSFColor$SKY_BLUE;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/poi/hssf/util/HSSFColor;->enumList:Ljava/util/Map;

    sget-object v2, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->PLUM:Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

    new-instance v3, Lorg/apache/poi/hssf/util/HSSFColor$PLUM;

    invoke-direct {v3}, Lorg/apache/poi/hssf/util/HSSFColor$PLUM;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/poi/hssf/util/HSSFColor;->enumList:Ljava/util/Map;

    sget-object v2, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->GREY_25_PERCENT:Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

    new-instance v3, Lorg/apache/poi/hssf/util/HSSFColor$GREY_25_PERCENT;

    invoke-direct {v3}, Lorg/apache/poi/hssf/util/HSSFColor$GREY_25_PERCENT;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/poi/hssf/util/HSSFColor;->enumList:Ljava/util/Map;

    sget-object v2, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->ROSE:Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

    new-instance v3, Lorg/apache/poi/hssf/util/HSSFColor$ROSE;

    invoke-direct {v3}, Lorg/apache/poi/hssf/util/HSSFColor$ROSE;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/poi/hssf/util/HSSFColor;->enumList:Ljava/util/Map;

    sget-object v2, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->LIGHT_YELLOW:Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

    new-instance v3, Lorg/apache/poi/hssf/util/HSSFColor$LIGHT_YELLOW;

    invoke-direct {v3}, Lorg/apache/poi/hssf/util/HSSFColor$LIGHT_YELLOW;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/poi/hssf/util/HSSFColor;->enumList:Ljava/util/Map;

    sget-object v2, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->LIGHT_GREEN:Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

    new-instance v3, Lorg/apache/poi/hssf/util/HSSFColor$LIGHT_GREEN;

    invoke-direct {v3}, Lorg/apache/poi/hssf/util/HSSFColor$LIGHT_GREEN;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/poi/hssf/util/HSSFColor;->enumList:Ljava/util/Map;

    sget-object v2, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->LIGHT_TURQUOISE:Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

    new-instance v3, Lorg/apache/poi/hssf/util/HSSFColor$LIGHT_TURQUOISE;

    invoke-direct {v3}, Lorg/apache/poi/hssf/util/HSSFColor$LIGHT_TURQUOISE;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/poi/hssf/util/HSSFColor;->enumList:Ljava/util/Map;

    sget-object v2, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->PALE_BLUE:Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

    new-instance v3, Lorg/apache/poi/hssf/util/HSSFColor$PALE_BLUE;

    invoke-direct {v3}, Lorg/apache/poi/hssf/util/HSSFColor$PALE_BLUE;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/poi/hssf/util/HSSFColor;->enumList:Ljava/util/Map;

    sget-object v2, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->LAVENDER:Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

    new-instance v3, Lorg/apache/poi/hssf/util/HSSFColor$LAVENDER;

    invoke-direct {v3}, Lorg/apache/poi/hssf/util/HSSFColor$LAVENDER;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/poi/hssf/util/HSSFColor;->enumList:Ljava/util/Map;

    sget-object v2, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->WHITE:Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

    new-instance v3, Lorg/apache/poi/hssf/util/HSSFColor$WHITE;

    invoke-direct {v3}, Lorg/apache/poi/hssf/util/HSSFColor$WHITE;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/poi/hssf/util/HSSFColor;->enumList:Ljava/util/Map;

    sget-object v2, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->CORNFLOWER_BLUE:Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

    new-instance v3, Lorg/apache/poi/hssf/util/HSSFColor$CORNFLOWER_BLUE;

    invoke-direct {v3}, Lorg/apache/poi/hssf/util/HSSFColor$CORNFLOWER_BLUE;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/poi/hssf/util/HSSFColor;->enumList:Ljava/util/Map;

    sget-object v2, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->LEMON_CHIFFON:Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

    new-instance v3, Lorg/apache/poi/hssf/util/HSSFColor$LEMON_CHIFFON;

    invoke-direct {v3}, Lorg/apache/poi/hssf/util/HSSFColor$LEMON_CHIFFON;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/poi/hssf/util/HSSFColor;->enumList:Ljava/util/Map;

    sget-object v2, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->MAROON:Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

    new-instance v3, Lorg/apache/poi/hssf/util/HSSFColor$MAROON;

    invoke-direct {v3}, Lorg/apache/poi/hssf/util/HSSFColor$MAROON;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/poi/hssf/util/HSSFColor;->enumList:Ljava/util/Map;

    sget-object v2, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->ORCHID:Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

    new-instance v3, Lorg/apache/poi/hssf/util/HSSFColor$ORCHID;

    invoke-direct {v3}, Lorg/apache/poi/hssf/util/HSSFColor$ORCHID;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/poi/hssf/util/HSSFColor;->enumList:Ljava/util/Map;

    sget-object v2, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->CORAL:Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

    new-instance v3, Lorg/apache/poi/hssf/util/HSSFColor$CORAL;

    invoke-direct {v3}, Lorg/apache/poi/hssf/util/HSSFColor$CORAL;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/poi/hssf/util/HSSFColor;->enumList:Ljava/util/Map;

    sget-object v2, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->ROYAL_BLUE:Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

    new-instance v3, Lorg/apache/poi/hssf/util/HSSFColor$ROYAL_BLUE;

    invoke-direct {v3}, Lorg/apache/poi/hssf/util/HSSFColor$ROYAL_BLUE;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/poi/hssf/util/HSSFColor;->enumList:Ljava/util/Map;

    sget-object v2, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->LIGHT_CORNFLOWER_BLUE:Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

    new-instance v3, Lorg/apache/poi/hssf/util/HSSFColor$LIGHT_CORNFLOWER_BLUE;

    invoke-direct {v3}, Lorg/apache/poi/hssf/util/HSSFColor$LIGHT_CORNFLOWER_BLUE;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/apache/poi/hssf/util/HSSFColor;->enumList:Ljava/util/Map;

    sget-object v2, Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;->TAN:Lorg/apache/poi/hssf/util/HSSFColor$HSSFColorPredefined;

    new-instance v3, Lorg/apache/poi/hssf/util/HSSFColor$TAN;

    invoke-direct {v3}, Lorg/apache/poi/hssf/util/HSSFColor$TAN;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lorg/apache/poi/hssf/util/HSSFColor;->enumList:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw v1
.end method

.method public static toHSSFColor(Lorg/apache/poi/ss/usermodel/Color;)Lorg/apache/poi/hssf/util/HSSFColor;
    .locals 1

    if-eqz p0, :cond_1

    instance-of v0, p0, Lorg/apache/poi/hssf/util/HSSFColor;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only HSSFColor objects are supported"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    check-cast p0, Lorg/apache/poi/hssf/util/HSSFColor;

    return-object p0
.end method


# virtual methods
.method public getHexString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/hssf/util/HSSFColor;->color:Ljava/awt/Color;

    invoke-virtual {v1}, Ljava/awt/Color;->getRed()I

    move-result v1

    mul-int/lit16 v1, v1, 0x101

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/poi/hssf/util/HSSFColor;->color:Ljava/awt/Color;

    invoke-virtual {v2}, Ljava/awt/Color;->getGreen()I

    move-result v2

    mul-int/lit16 v2, v2, 0x101

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/hssf/util/HSSFColor;->color:Ljava/awt/Color;

    invoke-virtual {v1}, Ljava/awt/Color;->getBlue()I

    move-result v1

    mul-int/lit16 v1, v1, 0x101

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIndex()S
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/util/HSSFColor;->index:I

    int-to-short v0, v0

    return v0
.end method

.method public getIndex2()S
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/util/HSSFColor;->index2:I

    int-to-short v0, v0

    return v0
.end method

.method public getTriplet()[S
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/hssf/util/HSSFColor;->color:Ljava/awt/Color;

    invoke-virtual {v0}, Ljava/awt/Color;->getRed()I

    move-result v0

    int-to-short v0, v0

    iget-object v1, p0, Lorg/apache/poi/hssf/util/HSSFColor;->color:Ljava/awt/Color;

    invoke-virtual {v1}, Ljava/awt/Color;->getGreen()I

    move-result v1

    int-to-short v1, v1

    iget-object v2, p0, Lorg/apache/poi/hssf/util/HSSFColor;->color:Ljava/awt/Color;

    invoke-virtual {v2}, Ljava/awt/Color;->getBlue()I

    move-result v2

    int-to-short v2, v2

    const/4 v3, 0x3

    new-array v3, v3, [S

    const/4 v4, 0x0

    aput-short v0, v3, v4

    const/4 v0, 0x1

    aput-short v1, v3, v0

    const/4 v0, 0x2

    aput-short v2, v3, v0

    return-object v3
.end method
