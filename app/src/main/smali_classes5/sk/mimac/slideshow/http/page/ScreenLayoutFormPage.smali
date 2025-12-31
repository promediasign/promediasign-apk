.class public Lsk/mimac/slideshow/http/page/ScreenLayoutFormPage;
.super Lsk/mimac/slideshow/http/page/AbstractTemplatePage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsk/mimac/slideshow/http/page/ScreenLayoutFormPage$ScreenLayoutPanelProperty;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# instance fields
.field private clonePanelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/utils/Couple<",
            "Lsk/mimac/slideshow/database/entity/PanelItem;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/http/page/ScreenLayoutFormPage;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/http/page/ScreenLayoutFormPage;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfi/iki/elonen/NanoHTTPD$Method;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;-><init>(Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;)V

    return-void
.end method

.method private convertPanels(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/database/entity/PanelItem;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsk/mimac/slideshow/database/entity/PanelItem;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/PanelItem;->getId()Ljava/lang/Integer;

    move-result-object v3

    const-string v4, ""

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/PanelItem;->getId()Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    :cond_0
    move-object v3, v4

    :goto_1
    const-string v5, "id"

    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "name"

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/PanelItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/PanelItem;->getWidth()F

    move-result v3

    float-to-double v5, v3

    const-string v3, "width"

    invoke-virtual {v2, v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/PanelItem;->getHeight()F

    move-result v3

    float-to-double v5, v3

    const-string v3, "height"

    invoke-virtual {v2, v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/PanelItem;->getX()F

    move-result v3

    float-to-double v5, v3

    const-string v3, "left"

    invoke-virtual {v2, v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/PanelItem;->getY()F

    move-result v3

    float-to-double v5, v3

    const-string v3, "top"

    invoke-virtual {v2, v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v3, "backgroundColor"

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/PanelItem;->getBackgroundColor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "main"

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/PanelItem;->isMainPanel()Z

    move-result v5

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/PanelItem;->getDisplayId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/PanelItem;->getDisplayId()Ljava/lang/String;

    move-result-object v4

    :cond_1
    const-string v3, "displayId"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    sget-object v4, Lsk/mimac/slideshow/http/page/ScreenLayoutFormPage$ScreenLayoutPanelProperty;->ANIMATION_TYPE:Lsk/mimac/slideshow/http/page/ScreenLayoutFormPage$ScreenLayoutPanelProperty;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/PanelItem;->getAnimationType()Lsk/mimac/slideshow/enums/TransitionType;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/PanelItem;->getAnimationType()Lsk/mimac/slideshow/enums/TransitionType;

    move-result-object v5

    :goto_2
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_2
    sget-object v5, Lsk/mimac/slideshow/enums/TransitionType;->NONE:Lsk/mimac/slideshow/enums/TransitionType;

    goto :goto_2

    :goto_3
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v4, Lsk/mimac/slideshow/http/page/ScreenLayoutFormPage$ScreenLayoutPanelProperty;->ANIMATION_LENGTH:Lsk/mimac/slideshow/http/page/ScreenLayoutFormPage$ScreenLayoutPanelProperty;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/PanelItem;->getAnimationLength()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/PanelItem;->getProperties()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-static {}, Lsk/mimac/slideshow/http/page/ScreenLayoutFormPage$ScreenLayoutPanelProperty;->values()[Lsk/mimac/slideshow/http/page/ScreenLayoutFormPage$ScreenLayoutPanelProperty;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_5
    if-ge v7, v6, :cond_3

    aget-object v8, v5, v7

    invoke-virtual {v8}, Lsk/mimac/slideshow/http/page/ScreenLayoutFormPage$ScreenLayoutPanelProperty;->getCode()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-virtual {v8}, Lsk/mimac/slideshow/http/page/ScreenLayoutFormPage$ScreenLayoutPanelProperty;->getCode()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_5
    const-string v1, "properties"

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_0

    :cond_6
    return-object v0
.end method

.method private getMaxFromParams()I
    .locals 5

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ".name"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x6

    const/4 v4, 0x5

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private hasMainPanel(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/database/entity/PanelItem;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsk/mimac/slideshow/database/entity/PanelItem;

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/PanelItem;->isMainPanel()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private makeSequence(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    add-int/lit8 v1, p1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-gt v1, p1, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private parsePanelItem(Lsk/mimac/slideshow/database/entity/ScreenLayout;ILjava/lang/String;Z)Lsk/mimac/slideshow/database/entity/PanelItem;
    .locals 6

    new-instance v0, Lsk/mimac/slideshow/database/entity/PanelItem;

    invoke-direct {v0}, Lsk/mimac/slideshow/database/entity/PanelItem;-><init>()V

    iget-object v1, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "list["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "].id"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p4, :cond_0

    iget-object p4, p0, Lsk/mimac/slideshow/http/page/ScreenLayoutFormPage;->clonePanelList:Ljava/util/List;

    new-instance v2, Lsk/mimac/slideshow/utils/Couple;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lsk/mimac/slideshow/utils/Couple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {v0, p4}, Lsk/mimac/slideshow/database/entity/PanelItem;->setId(Ljava/lang/Integer;)V

    :cond_1
    :goto_0
    invoke-virtual {v0, p3}, Lsk/mimac/slideshow/database/entity/PanelItem;->setName(Ljava/lang/String;)V

    iget-object p3, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "].left"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p3

    invoke-virtual {v0, p3}, Lsk/mimac/slideshow/database/entity/PanelItem;->setX(F)V

    iget-object p3, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "].top"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p3

    invoke-virtual {v0, p3}, Lsk/mimac/slideshow/database/entity/PanelItem;->setY(F)V

    iget-object p3, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "].width"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p3

    invoke-virtual {v0, p3}, Lsk/mimac/slideshow/database/entity/PanelItem;->setWidth(F)V

    iget-object p3, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "].height"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p3

    invoke-virtual {v0, p3}, Lsk/mimac/slideshow/database/entity/PanelItem;->setHeight(F)V

    iget-object p3, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "].backgroundColor"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {v0, p3}, Lsk/mimac/slideshow/database/entity/PanelItem;->setBackgroundColor(Ljava/lang/String;)V

    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->getId()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/database/entity/PanelItem;->setScreenLayoutId(Ljava/lang/Integer;)V

    iget-object p1, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "].main"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/database/entity/PanelItem;->setMainPanel(Z)V

    iget-object p1, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "].displayOrder"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/database/entity/PanelItem;->setDisplayOrder(I)V

    iget-object p1, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "].displayId"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_2

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/database/entity/PanelItem;->setDisplayId(Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "].properties[\"ANIMATION_TYPE\"]"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_3

    invoke-static {p1}, Lsk/mimac/slideshow/enums/TransitionType;->valueOf(Ljava/lang/String;)Lsk/mimac/slideshow/enums/TransitionType;

    move-result-object p1

    goto :goto_1

    :cond_3
    sget-object p1, Lsk/mimac/slideshow/enums/TransitionType;->NONE:Lsk/mimac/slideshow/enums/TransitionType;

    :goto_1
    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/database/entity/PanelItem;->setAnimationType(Lsk/mimac/slideshow/enums/TransitionType;)V

    iget-object p1, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "].properties[\"ANIMATION_LENGTH\"]"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 p3, 0x0

    if-eqz p1, :cond_4

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/database/entity/PanelItem;->setAnimationLength(I)V

    invoke-static {}, Lsk/mimac/slideshow/http/page/ScreenLayoutFormPage$ScreenLayoutPanelProperty;->values()[Lsk/mimac/slideshow/http/page/ScreenLayoutFormPage$ScreenLayoutPanelProperty;

    move-result-object p1

    array-length p4, p1

    :goto_3
    if-ge p3, p4, :cond_6

    aget-object v1, p1, p3

    invoke-virtual {v1}, Lsk/mimac/slideshow/http/page/ScreenLayoutFormPage$ScreenLayoutPanelProperty;->getCode()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    const-string v4, "].properties[\""

    .line 1
    invoke-static {p2, v3, v4}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\"]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/PanelItem;->getProperties()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v1}, Lsk/mimac/slideshow/http/page/ScreenLayoutFormPage$ScreenLayoutPanelProperty;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    :cond_6
    return-object v0
.end method

.method private processPost(Lsk/mimac/slideshow/database/entity/ScreenLayout;Z)V
    .locals 7

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    const-string v1, "rotation"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    invoke-virtual {p1, v0}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->setRotation(S)V

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    const-string v1, "interval"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p1, v0}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->setInterval(F)V

    :cond_0
    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    const-string v1, "layoutName"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p1, "name2_empty"

    :goto_0
    invoke-static {p1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->addError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    const-string v2, " (copy)"

    goto :goto_1

    :cond_2
    const-string v2, ""

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->setName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->getId()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {}, Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;->getInstance()Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;->create(Lsk/mimac/slideshow/database/entity/ScreenLayout;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->setId(Ljava/lang/Integer;)V

    goto :goto_2

    :cond_3
    invoke-static {}, Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;->getInstance()Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;->update(Lsk/mimac/slideshow/database/entity/ScreenLayout;)V

    :goto_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lsk/mimac/slideshow/http/page/ScreenLayoutFormPage;->getMaxFromParams()I

    move-result v2

    const/4 v3, 0x0

    :goto_3
    if-gt v3, v2, :cond_5

    iget-object v4, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "list["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "].name"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-direct {p0, p1, v3, v4, p2}, Lsk/mimac/slideshow/http/page/ScreenLayoutFormPage;->parsePanelItem(Lsk/mimac/slideshow/database/entity/ScreenLayout;ILjava/lang/String;Z)Lsk/mimac/slideshow/database/entity/PanelItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    invoke-direct {p0, v0}, Lsk/mimac/slideshow/http/page/ScreenLayoutFormPage;->hasMainPanel(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string p1, "main_panel_empty"

    goto :goto_0

    :cond_6
    invoke-static {}, Lsk/mimac/slideshow/database/dao/PanelItemDao;->getInstance()Lsk/mimac/slideshow/database/dao/PanelItemDao;

    move-result-object v1

    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lsk/mimac/slideshow/database/dao/PanelItemDao;->updateAll(Ljava/lang/Integer;Ljava/util/List;)V

    if-eqz p2, :cond_7

    iget-object p1, p0, Lsk/mimac/slideshow/http/page/ScreenLayoutFormPage;->clonePanelList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsk/mimac/slideshow/utils/Couple;

    invoke-static {}, Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;->getInstance()Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;

    move-result-object v1

    invoke-virtual {v0}, Lsk/mimac/slideshow/utils/Couple;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsk/mimac/slideshow/database/entity/PanelItem;

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/PanelItem;->getId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;->copyBetweenPanels(Ljava/lang/Long;Ljava/lang/Long;)V

    goto :goto_4

    :cond_7
    invoke-static {}, Lsk/mimac/slideshow/layout/CurrentScreenLayoutResolver;->getCurrentLayoutDirect()Lsk/mimac/slideshow/layout/ScreenLayoutWrapper;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lsk/mimac/slideshow/layout/ScreenLayoutWrapper;->getId()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Lsk/mimac/slideshow/layout/ScreenLayoutWrapper;->getId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->getId()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-static {}, Lsk/mimac/slideshow/layout/CurrentScreenLayoutResolver;->reloadCurrentLayout()V

    :cond_8
    if-eqz p2, :cond_9

    const-string p1, "screen_layout_clone_success"

    :goto_5
    invoke-static {p1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->resultMessage:Ljava/lang/String;

    goto :goto_6

    :cond_9
    const-string p1, "screen_layout_save_success"

    goto :goto_5

    :goto_6
    return-void
.end method


# virtual methods
.method public getTemplateName()Ljava/lang/String;
    .locals 1

    const-string v0, "pages/screen_layout_form"

    return-object v0
.end method

.method public process()V
    .locals 6

    const-string v0, "layout"

    :try_start_0
    iget-object v1, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    const-string v2, "clone"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lsk/mimac/slideshow/http/page/ScreenLayoutFormPage;->clonePanelList:Ljava/util/List;

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_3

    :catch_1
    move-exception v0

    goto/16 :goto_3

    :cond_0
    :goto_0
    iget-object v2, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    invoke-static {}, Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;->getInstance()Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;

    move-result-object v2

    iget-object v3, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;->get(I)Lsk/mimac/slideshow/database/entity/ScreenLayout;

    move-result-object v0

    goto :goto_1

    :cond_1
    new-instance v0, Lsk/mimac/slideshow/database/entity/ScreenLayout;

    invoke-direct {v0}, Lsk/mimac/slideshow/database/entity/ScreenLayout;-><init>()V

    :goto_1
    invoke-virtual {p0}, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->isPost()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v0, v1}, Lsk/mimac/slideshow/http/page/ScreenLayoutFormPage;->processPost(Lsk/mimac/slideshow/database/entity/ScreenLayout;Z)V

    :cond_2
    iget-object v1, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    const-string v2, "layoutName"

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    const-string v2, "rotation"

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->getRotation()S

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    const-string v2, "interval"

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->getInterval()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->getId()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {}, Lsk/mimac/slideshow/database/dao/PanelItemDao;->getInstance()Lsk/mimac/slideshow/database/dao/PanelItemDao;

    move-result-object v1

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lsk/mimac/slideshow/database/dao/PanelItemDao;->getAllForLayout(I)Ljava/util/List;

    move-result-object v1

    goto :goto_2

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v3, Lsk/mimac/slideshow/database/entity/PanelItem;

    invoke-direct {v3}, Lsk/mimac/slideshow/database/entity/PanelItem;-><init>()V

    const/high16 v4, 0x42c80000    # 100.0f

    invoke-virtual {v3, v4}, Lsk/mimac/slideshow/database/entity/PanelItem;->setWidth(F)V

    invoke-virtual {v3, v4}, Lsk/mimac/slideshow/database/entity/PanelItem;->setHeight(F)V

    const-string v4, "#000000"

    invoke-virtual {v3, v4}, Lsk/mimac/slideshow/database/entity/PanelItem;->setBackgroundColor(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lsk/mimac/slideshow/database/entity/PanelItem;->setMainPanel(Z)V

    const-string v2, "main_panel"

    invoke-static {v2}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lsk/mimac/slideshow/database/entity/PanelItem;->setName(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    sget-object v2, Lsk/mimac/slideshow/settings/UserSettings;->MULTI_DISPLAY_ALLOW:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v2}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    move-result v2

    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getAllDisplays()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->model:Ljava/util/Map;

    const-string v5, "multiDisplayAllow"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->model:Ljava/util/Map;

    const-string v4, "displays"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->model:Ljava/util/Map;

    const-string v3, "screenLayout"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->model:Ljava/util/Map;

    const-string v3, "panels"

    invoke-direct {p0, v1}, Lsk/mimac/slideshow/http/page/ScreenLayoutFormPage;->convertPanels(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->getId()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    sget-object v1, Lsk/mimac/slideshow/settings/UserSettings;->USE_SCREEN_LAYOUT_INTERVALS:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v1}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->model:Ljava/util/Map;

    const-string v2, "schedules"

    invoke-static {}, Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;->getInstance()Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;

    move-result-object v3

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->getId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;->getAllForLayout(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    sget-object v1, Lsk/mimac/slideshow/http/page/ScreenLayoutFormPage;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Can\'t insert panel items into DB"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "database_error"

    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_ROOT_"

    invoke-virtual {p0, v1, v0}, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->addError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_4
    invoke-static {}, Lsk/mimac/slideshow/layout/CurrentScreenLayoutResolver;->getCurrentLayout()Lsk/mimac/slideshow/layout/ScreenLayoutWrapper;

    move-result-object v0

    iget-object v1, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->model:Ljava/util/Map;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lsk/mimac/slideshow/layout/ScreenLayoutWrapper;->getId()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    :goto_5
    const-string v2, "currentId"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->model:Ljava/util/Map;

    const-string v1, "weekdays"

    invoke-static {}, Lsk/mimac/slideshow/utils/DateUtils;->getWeekdayNames()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->model:Ljava/util/Map;

    const/16 v1, 0x17

    invoke-direct {p0, v1}, Lsk/mimac/slideshow/http/page/ScreenLayoutFormPage;->makeSequence(I)Ljava/util/List;

    move-result-object v1

    const-string v2, "hours"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->model:Ljava/util/Map;

    sget-object v1, Lsk/mimac/slideshow/settings/UserSettings;->USE_SCREEN_LAYOUT_INTERVALS:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v1}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "useIntervals"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->model:Ljava/util/Map;

    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-static {}, Lsk/mimac/slideshow/localization/Localization;->getLanguage()Lsk/mimac/slideshow/localization/Language;

    move-result-object v2

    invoke-virtual {v2}, Lsk/mimac/slideshow/localization/Language;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "daysOfWeek"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->model:Ljava/util/Map;

    const-string v1, "resourceTag"

    sget-object v2, Lsk/mimac/slideshow/BuildInfo;->BUILD_DATE:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
