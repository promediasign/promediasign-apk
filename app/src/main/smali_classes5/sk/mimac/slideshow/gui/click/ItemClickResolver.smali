.class public Lsk/mimac/slideshow/gui/click/ItemClickResolver;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# instance fields
.field private final actions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lsk/mimac/slideshow/gui/click/ClickShape;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final folderPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/gui/click/ItemClickResolver;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/gui/click/ItemClickResolver;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsk/mimac/slideshow/gui/click/ItemClickResolver;->actions:Ljava/util/Map;

    iput-object p2, p0, Lsk/mimac/slideshow/gui/click/ItemClickResolver;->folderPath:Ljava/lang/String;

    const-string p2, "\\|"

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length p2, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_4

    aget-object v2, p1, v1

    const-string v3, ":"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x3

    if-ge v3, v4, :cond_0

    goto :goto_2

    :cond_0
    aget-object v3, v2, v0

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v5, v3

    const/4 v6, 0x5

    if-ge v5, v6, :cond_1

    goto :goto_2

    :cond_1
    :try_start_0
    aget-object v5, v3, v0

    const-string v6, "R"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v5, :cond_2

    new-instance v5, Lsk/mimac/slideshow/gui/click/ClickRectangle;

    aget-object v8, v3, v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    aget-object v7, v3, v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    aget-object v3, v3, v6

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-direct {v5, v8, v7, v4, v3}, Lsk/mimac/slideshow/gui/click/ClickRectangle;-><init>(FFFF)V

    goto :goto_1

    :cond_2
    aget-object v5, v3, v0

    const-string v9, "E"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Lsk/mimac/slideshow/gui/click/ClickEllipse;

    aget-object v8, v3, v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    aget-object v7, v3, v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    aget-object v3, v3, v6

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-direct {v5, v8, v7, v4, v3}, Lsk/mimac/slideshow/gui/click/ClickEllipse;-><init>(FFFF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v3, p0, Lsk/mimac/slideshow/gui/click/ItemClickResolver;->actions:Ljava/util/Map;

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :catch_0
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private performAction([Ljava/lang/String;)V
    .locals 7

    sget-object v0, Lsk/mimac/slideshow/gui/click/ItemClickResolver;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Detected click, performing action: {}"

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x1

    :try_start_0
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "pause"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :sswitch_1
    const-string v2, "next"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_2
    const-string v2, "showFile"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_3
    const-string v2, "resume"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_4
    const-string v2, "previous"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_5
    const-string v2, "playlist/clear"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    :goto_1
    const-string v2, "zoneName"

    if-eqz v1, :cond_6

    if-eq v1, v0, :cond_5

    if-eq v1, v6, :cond_4

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    goto :goto_3

    :cond_1
    :try_start_1
    aget-object v0, p1, v6

    invoke-static {v2, v0}, Lsk/mimac/slideshow/utils/MapConstructor;->create(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lsk/mimac/slideshow/ApiService;->clearPlaylist(Ljava/util/Map;)V

    goto :goto_3

    :cond_2
    aget-object v0, p1, v6

    invoke-static {v2, v0}, Lsk/mimac/slideshow/utils/MapConstructor;->create(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lsk/mimac/slideshow/ApiService;->next(Ljava/util/Map;)V

    goto :goto_3

    :cond_3
    aget-object v0, p1, v6

    invoke-static {v2, v0}, Lsk/mimac/slideshow/utils/MapConstructor;->create(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lsk/mimac/slideshow/ApiService;->previous(Ljava/util/Map;)V

    goto :goto_3

    :cond_4
    aget-object v0, p1, v6

    invoke-static {v2, v0}, Lsk/mimac/slideshow/utils/MapConstructor;->create(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lsk/mimac/slideshow/ApiService;->resume(Ljava/util/Map;)V

    goto :goto_3

    :cond_5
    aget-object v0, p1, v6

    invoke-static {v2, v0}, Lsk/mimac/slideshow/utils/MapConstructor;->create(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lsk/mimac/slideshow/ApiService;->pause(Ljava/util/Map;)V

    goto :goto_3

    :cond_6
    aget-object v0, p1, v6

    const-string v1, "file"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lsk/mimac/slideshow/gui/click/ItemClickResolver;->folderPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v1, v3}, Lsk/mimac/slideshow/utils/MapConstructor;->create(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lsk/mimac/slideshow/ApiService;->showFile(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :goto_2
    sget-object v1, Lsk/mimac/slideshow/gui/click/ItemClickResolver;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Can\'t perform action after click to {}"

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6de82830 -> :sswitch_5
        -0x4bec4509 -> :sswitch_4
        -0x37b237d3 -> :sswitch_3
        -0x143881e7 -> :sswitch_2
        0x338af3 -> :sswitch_1
        0x65825f6 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public onClick(FF)V
    .locals 3

    iget-object v0, p0, Lsk/mimac/slideshow/gui/click/ItemClickResolver;->actions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsk/mimac/slideshow/gui/click/ClickShape;

    invoke-interface {v2, p1, p2}, Lsk/mimac/slideshow/gui/click/ClickShape;->isInside(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lsk/mimac/slideshow/gui/click/ItemClickResolver;->performAction([Ljava/lang/String;)V

    :cond_1
    return-void
.end method
