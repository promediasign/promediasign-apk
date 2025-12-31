.class public Lsk/mimac/slideshow/http/page/KeyMappingPage;
.super Lsk/mimac/slideshow/http/page/AbstractTemplatePage;
.source "SourceFile"


# static fields
.field private static final ACTIONS_UP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/database/entity/KeyAction$Action;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lsk/mimac/slideshow/database/entity/KeyAction$Action;->values()[Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lsk/mimac/slideshow/http/page/KeyMappingPage;->ACTIONS_UP:Ljava/util/List;

    sget-object v1, Lsk/mimac/slideshow/database/entity/KeyAction$Action;->CHANGE_CONTENT_LENGTH:Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    sget-object v1, Lsk/mimac/slideshow/database/entity/KeyAction$Action;->CHANGE_TO_PLAYLIST_NUMBER:Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

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

.method private processPost()V
    .locals 4

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    const-string v1, "delete"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lsk/mimac/slideshow/database/dao/KeyActionDao;->getInstance()Lsk/mimac/slideshow/database/dao/KeyActionDao;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lsk/mimac/slideshow/database/dao/AbstractDao;->delete(J)V

    :goto_0
    invoke-static {}, Lsk/mimac/slideshow/userinput/KeyboardListener;->init()V

    return-void

    :cond_0
    new-instance v0, Lsk/mimac/slideshow/database/entity/KeyAction;

    invoke-direct {v0}, Lsk/mimac/slideshow/database/entity/KeyAction;-><init>()V

    iget-object v1, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    const-string v2, "keyCode"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/database/entity/KeyAction;->setKeyCode(I)V

    iget-object v1, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    const-string v2, "actionDown"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lsk/mimac/slideshow/database/entity/KeyAction$Action;->valueOf(Ljava/lang/String;)Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/database/entity/KeyAction;->setActionDown(Lsk/mimac/slideshow/database/entity/KeyAction$Action;)V

    iget-object v1, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    const-string v2, "actionUp"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Lsk/mimac/slideshow/database/entity/KeyAction$Action;->valueOf(Ljava/lang/String;)Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/database/entity/KeyAction;->setActionUp(Lsk/mimac/slideshow/database/entity/KeyAction$Action;)V

    :cond_1
    iget-object v1, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    const-string v2, "propertyKey"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    const-string v3, "propertyValue"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Lsk/mimac/slideshow/utils/MapConstructor;->create(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/database/entity/KeyAction;->setProperties(Ljava/util/Map;)V

    :cond_2
    invoke-static {}, Lsk/mimac/slideshow/database/dao/KeyActionDao;->getInstance()Lsk/mimac/slideshow/database/dao/KeyActionDao;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsk/mimac/slideshow/database/dao/KeyActionDao;->insertOrUpdate(Ljava/util/List;)V

    goto :goto_0
.end method


# virtual methods
.method public getTemplateName()Ljava/lang/String;
    .locals 1

    const-string v0, "pages/key_mapping"

    return-object v0
.end method

.method public process()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->isPost()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lsk/mimac/slideshow/http/page/KeyMappingPage;->processPost()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->model:Ljava/util/Map;

    const-string v1, "keyActions"

    invoke-static {}, Lsk/mimac/slideshow/database/dao/KeyActionDao;->getInstance()Lsk/mimac/slideshow/database/dao/KeyActionDao;

    move-result-object v2

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/dao/KeyActionDao;->getAll()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->model:Ljava/util/Map;

    const-string v1, "keycodes"

    sget-object v2, Lsk/mimac/slideshow/userinput/KeyMapper;->KEYCODES:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->model:Ljava/util/Map;

    const-string v1, "actionsDown"

    invoke-static {}, Lsk/mimac/slideshow/database/entity/KeyAction$Action;->values()[Lsk/mimac/slideshow/database/entity/KeyAction$Action;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->model:Ljava/util/Map;

    const-string v1, "actionsUp"

    sget-object v2, Lsk/mimac/slideshow/http/page/KeyMappingPage;->ACTIONS_UP:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    sget-object v1, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Can\'t process keyMappings from DB"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "database_error"

    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_ROOT_"

    invoke-virtual {p0, v1, v0}, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->addError(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method
