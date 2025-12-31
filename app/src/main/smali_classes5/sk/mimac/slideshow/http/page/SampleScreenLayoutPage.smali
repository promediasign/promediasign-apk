.class public Lsk/mimac/slideshow/http/page/SampleScreenLayoutPage;
.super Lsk/mimac/slideshow/http/page/AbstractFormPage;
.source "SourceFile"


# direct methods
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

    invoke-direct {p0, p1, p2}, Lsk/mimac/slideshow/http/page/AbstractFormPage;-><init>(Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;)V

    return-void
.end method

.method private appendRow(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 2

    const-string v0, "<tr><td>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sample_screen_layout_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</td><td style=\'white-space: normal;\'>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_help"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</td><td><form method=\'post\'><input type=\'hidden\' name=\'layout\' value=\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'/><input type=\'submit\' class=\'button\' value=\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "sample_screen_layout_use"

    invoke-static {p2}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'/></form></td></tr>"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private createAnimationWithTime()V
    .locals 19

    new-instance v0, Lsk/mimac/slideshow/database/entity/ScreenLayout;

    invoke-direct {v0}, Lsk/mimac/slideshow/database/entity/ScreenLayout;-><init>()V

    const-string v1, "Layout with animated images and time"

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->setName(Ljava/lang/String;)V

    invoke-static {}, Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;->getInstance()Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;

    move-result-object v1

    invoke-virtual {v1, v0}, Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;->create(Lsk/mimac/slideshow/database/entity/ScreenLayout;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->setId(Ljava/lang/Integer;)V

    invoke-static {}, Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;->getInstance()Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;

    move-result-object v1

    new-instance v2, Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    const/4 v5, 0x4

    invoke-direct {v2, v3, v4, v5}, Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;-><init>(JI)V

    invoke-virtual {v1, v2}, Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;->insert(Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;)V

    new-instance v1, Lsk/mimac/slideshow/database/entity/Item;

    sget-object v2, Lsk/mimac/slideshow/enums/ItemType;->RANDOM:Lsk/mimac/slideshow/enums/ItemType;

    const-string v3, "Images (+animation)"

    const-string v4, "images/*"

    invoke-direct {v1, v4, v2, v3}, Lsk/mimac/slideshow/database/entity/Item;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/enums/ItemType;Ljava/lang/String;)V

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/Item;->getProperties()Ljava/util/Map;

    move-result-object v2

    const-string v3, "animationTypes"

    const-string v4, "ZOOM_IN,ZOOM_OUT,MOVE_RIGHT,MOVE_LEFT,MOVE_TOP,MOVE_BOTTOM"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/Item;->getProperties()Ljava/util/Map;

    move-result-object v2

    const-string v3, "animationSpeed"

    const-string v4, "3"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/Item;->getProperties()Ljava/util/Map;

    move-result-object v2

    const-string v3, "imageBackgroundType"

    const-string v4, "BLURRED_LIGHTER"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lsk/mimac/slideshow/database/service/ItemService;->getInstance()Lsk/mimac/slideshow/database/service/ItemService;

    move-result-object v2

    invoke-virtual {v2, v1}, Lsk/mimac/slideshow/database/service/ItemService;->createItem(Lsk/mimac/slideshow/database/entity/Item;)Lsk/mimac/slideshow/utils/Couple;

    move-result-object v1

    invoke-virtual {v1}, Lsk/mimac/slideshow/utils/Couple;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string v4, "/images"

    invoke-static {v4}, Lsk/mimac/slideshow/SampleImageHelper;->addSampleImages(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lsk/mimac/slideshow/database/dao/ContentDao;->getInstance()Lsk/mimac/slideshow/database/dao/ContentDao;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Lsk/mimac/slideshow/database/dao/ContentDao;->get(Ljava/lang/Long;I)Lsk/mimac/slideshow/utils/Couple;

    move-result-object v4

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsk/mimac/slideshow/utils/Couple;->setSecond(Ljava/lang/Object;)V

    invoke-static {}, Lsk/mimac/slideshow/database/dao/ContentDao;->getInstance()Lsk/mimac/slideshow/database/dao/ContentDao;

    move-result-object v5

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v5, v1, v4}, Lsk/mimac/slideshow/database/dao/ContentDao;->updatePlaylist(Ljava/lang/Long;Ljava/util/List;)V

    new-instance v1, Lsk/mimac/slideshow/database/entity/PanelItem;

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->getId()Ljava/lang/Integer;

    move-result-object v7

    sget-object v15, Lsk/mimac/slideshow/enums/TransitionType;->CROSSFADE_TRUE:Lsk/mimac/slideshow/enums/TransitionType;

    const/16 v16, 0x5dc

    const/16 v17, 0x0

    const-string v8, "Whole screen"

    const-string v9, "#000000ff"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x42c80000    # 100.0f

    const/high16 v13, 0x42c80000    # 100.0f

    const/4 v14, 0x1

    move-object v6, v1

    invoke-direct/range {v6 .. v17}, Lsk/mimac/slideshow/database/entity/PanelItem;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;FFFFZLsk/mimac/slideshow/enums/TransitionType;ILjava/lang/String;)V

    invoke-static {}, Lsk/mimac/slideshow/database/dao/PanelItemDao;->getInstance()Lsk/mimac/slideshow/database/dao/PanelItemDao;

    move-result-object v4

    invoke-virtual {v4, v1}, Lsk/mimac/slideshow/database/dao/PanelItemDao;->create(Lsk/mimac/slideshow/database/entity/PanelItem;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lsk/mimac/slideshow/database/entity/PanelItem;->setId(Ljava/lang/Integer;)V

    invoke-static {}, Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;->getInstance()Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;

    move-result-object v4

    new-instance v5, Lsk/mimac/slideshow/database/entity/PlaylistSchedule;

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/PanelItem;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v6, 0x2

    invoke-direct {v5, v2, v3, v1, v6}, Lsk/mimac/slideshow/database/entity/PlaylistSchedule;-><init>(JLjava/lang/Long;I)V

    invoke-virtual {v4, v5}, Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;->insert(Lsk/mimac/slideshow/database/entity/PlaylistSchedule;)V

    new-instance v1, Lsk/mimac/slideshow/database/entity/Item;

    sget-object v2, Lsk/mimac/slideshow/enums/ItemType;->DATE_TIME:Lsk/mimac/slideshow/enums/ItemType;

    const-string v3, "Time"

    const-string v4, ""

    invoke-direct {v1, v4, v2, v3}, Lsk/mimac/slideshow/database/entity/Item;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/enums/ItemType;Ljava/lang/String;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v2}, Lsk/mimac/slideshow/database/entity/Item;->setProperties(Ljava/util/Map;)V

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/Item;->getProperties()Ljava/util/Map;

    move-result-object v2

    const-string v3, "timeFormat"

    const-string v5, "HH:mm"

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/Item;->getProperties()Ljava/util/Map;

    move-result-object v2

    const-string v3, "dateFormat"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/Item;->getProperties()Ljava/util/Map;

    move-result-object v2

    const-string v3, "textColor"

    const-string v4, "#002244"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/Item;->getProperties()Ljava/util/Map;

    move-result-object v2

    invoke-static {}, Lsk/mimac/slideshow/localization/Localization;->getLanguage()Lsk/mimac/slideshow/localization/Language;

    move-result-object v3

    invoke-virtual {v3}, Lsk/mimac/slideshow/localization/Language;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "locale"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lsk/mimac/slideshow/database/service/ItemService;->getInstance()Lsk/mimac/slideshow/database/service/ItemService;

    move-result-object v2

    invoke-virtual {v2, v1}, Lsk/mimac/slideshow/database/service/ItemService;->createItem(Lsk/mimac/slideshow/database/entity/Item;)Lsk/mimac/slideshow/utils/Couple;

    move-result-object v1

    invoke-virtual {v1}, Lsk/mimac/slideshow/utils/Couple;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    new-instance v3, Lsk/mimac/slideshow/database/entity/PanelItem;

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->getId()Ljava/lang/Integer;

    move-result-object v8

    sget-object v16, Lsk/mimac/slideshow/enums/TransitionType;->NONE:Lsk/mimac/slideshow/enums/TransitionType;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v9, "Time zone"

    const-string v10, "#ffffff4F"

    const/high16 v11, 0x42a00000    # 80.0f

    const/4 v12, 0x0

    const/high16 v13, 0x41a00000    # 20.0f

    const/high16 v14, 0x41800000    # 16.0f

    const/4 v15, 0x0

    move-object v7, v3

    invoke-direct/range {v7 .. v18}, Lsk/mimac/slideshow/database/entity/PanelItem;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;FFFFZLsk/mimac/slideshow/enums/TransitionType;ILjava/lang/String;)V

    invoke-virtual {v3}, Lsk/mimac/slideshow/database/entity/PanelItem;->getProperties()Ljava/util/Map;

    move-result-object v0

    const-string v4, "strokeWidth"

    const-string v5, "15"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lsk/mimac/slideshow/database/entity/PanelItem;->getProperties()Ljava/util/Map;

    move-result-object v0

    const-string v4, "strokeColor"

    const-string v5, "#FFFFFF5A"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lsk/mimac/slideshow/database/entity/PanelItem;->getProperties()Ljava/util/Map;

    move-result-object v0

    const-string v4, "radiusBottomLeft"

    const-string v5, "70"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lsk/mimac/slideshow/database/dao/PanelItemDao;->getInstance()Lsk/mimac/slideshow/database/dao/PanelItemDao;

    move-result-object v0

    invoke-virtual {v0, v3}, Lsk/mimac/slideshow/database/dao/PanelItemDao;->create(Lsk/mimac/slideshow/database/entity/PanelItem;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Lsk/mimac/slideshow/database/entity/PanelItem;->setId(Ljava/lang/Integer;)V

    invoke-static {}, Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;->getInstance()Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;

    move-result-object v0

    new-instance v4, Lsk/mimac/slideshow/database/entity/PlaylistSchedule;

    invoke-virtual {v3}, Lsk/mimac/slideshow/database/entity/PanelItem;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v4, v1, v2, v3, v6}, Lsk/mimac/slideshow/database/entity/PlaylistSchedule;-><init>(JLjava/lang/Long;I)V

    invoke-virtual {v0, v4}, Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;->insert(Lsk/mimac/slideshow/database/entity/PlaylistSchedule;)V

    invoke-static {}, Lsk/mimac/slideshow/layout/CurrentScreenLayoutResolver;->forceReloadScheduledLayout()V

    return-void
.end method

.method private createMovingRss()V
    .locals 28

    new-instance v0, Lsk/mimac/slideshow/database/entity/ScreenLayout;

    invoke-direct {v0}, Lsk/mimac/slideshow/database/entity/ScreenLayout;-><init>()V

    const-string v1, "Layout with moving RSS feed"

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->setName(Ljava/lang/String;)V

    invoke-static {}, Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;->getInstance()Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;

    move-result-object v1

    invoke-virtual {v1, v0}, Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;->create(Lsk/mimac/slideshow/database/entity/ScreenLayout;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->setId(Ljava/lang/Integer;)V

    invoke-static {}, Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;->getInstance()Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;

    move-result-object v1

    new-instance v2, Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    const/4 v5, 0x4

    invoke-direct {v2, v3, v4, v5}, Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;-><init>(JI)V

    invoke-virtual {v1, v2}, Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;->insert(Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;)V

    new-instance v1, Lsk/mimac/slideshow/database/entity/Item;

    sget-object v2, Lsk/mimac/slideshow/enums/ItemType;->RANDOM:Lsk/mimac/slideshow/enums/ItemType;

    const-string v3, "All files in cycle"

    const-string v4, "*"

    invoke-direct {v1, v4, v2, v3}, Lsk/mimac/slideshow/database/entity/Item;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/enums/ItemType;Ljava/lang/String;)V

    invoke-static {}, Lsk/mimac/slideshow/database/service/ItemService;->getInstance()Lsk/mimac/slideshow/database/service/ItemService;

    move-result-object v2

    invoke-virtual {v2, v1}, Lsk/mimac/slideshow/database/service/ItemService;->createItem(Lsk/mimac/slideshow/database/entity/Item;)Lsk/mimac/slideshow/utils/Couple;

    move-result-object v1

    invoke-virtual {v1}, Lsk/mimac/slideshow/utils/Couple;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    new-instance v15, Lsk/mimac/slideshow/database/entity/PanelItem;

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->getId()Ljava/lang/Integer;

    move-result-object v4

    sget-object v25, Lsk/mimac/slideshow/enums/TransitionType;->NONE:Lsk/mimac/slideshow/enums/TransitionType;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v5, "Whole screen"

    const-string v6, "#000000ff"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x42c80000    # 100.0f

    const/high16 v10, 0x42c80000    # 100.0f

    const/4 v11, 0x1

    move-object v3, v15

    move-object/from16 v12, v25

    invoke-direct/range {v3 .. v14}, Lsk/mimac/slideshow/database/entity/PanelItem;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;FFFFZLsk/mimac/slideshow/enums/TransitionType;ILjava/lang/String;)V

    invoke-static {}, Lsk/mimac/slideshow/database/dao/PanelItemDao;->getInstance()Lsk/mimac/slideshow/database/dao/PanelItemDao;

    move-result-object v3

    invoke-virtual {v3, v15}, Lsk/mimac/slideshow/database/dao/PanelItemDao;->create(Lsk/mimac/slideshow/database/entity/PanelItem;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3}, Lsk/mimac/slideshow/database/entity/PanelItem;->setId(Ljava/lang/Integer;)V

    invoke-static {}, Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;->getInstance()Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;

    move-result-object v3

    new-instance v4, Lsk/mimac/slideshow/database/entity/PlaylistSchedule;

    invoke-virtual {v15}, Lsk/mimac/slideshow/database/entity/PanelItem;->getId()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x2

    invoke-direct {v4, v1, v2, v5, v6}, Lsk/mimac/slideshow/database/entity/PlaylistSchedule;-><init>(JLjava/lang/Long;I)V

    invoke-virtual {v3, v4}, Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;->insert(Lsk/mimac/slideshow/database/entity/PlaylistSchedule;)V

    new-instance v1, Lsk/mimac/slideshow/database/entity/Item;

    sget-object v2, Lsk/mimac/slideshow/enums/ItemType;->RSS:Lsk/mimac/slideshow/enums/ItemType;

    const-string v3, "RSS feed"

    const-string v4, ""

    invoke-direct {v1, v4, v2, v3}, Lsk/mimac/slideshow/database/entity/Item;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/enums/ItemType;Ljava/lang/String;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v2}, Lsk/mimac/slideshow/database/entity/Item;->setProperties(Ljava/util/Map;)V

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/Item;->getProperties()Ljava/util/Map;

    move-result-object v2

    const-string v3, "rssReaderUrl"

    const-string v4, "http://feeds.bbci.co.uk/news/rss.xml"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/Item;->getProperties()Ljava/util/Map;

    move-result-object v2

    const-string v3, "textColor"

    const-string v4, "#F5F5F5"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/Item;->getProperties()Ljava/util/Map;

    move-result-object v2

    sget-object v3, Lsk/mimac/slideshow/enums/RssPanelDisplayType;->MARQUEE:Lsk/mimac/slideshow/enums/RssPanelDisplayType;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const-string v4, "rssDisplayType"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/Item;->getProperties()Ljava/util/Map;

    move-result-object v2

    const-string v3, "scrollSpeed"

    const-string v4, "10"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lsk/mimac/slideshow/database/service/ItemService;->getInstance()Lsk/mimac/slideshow/database/service/ItemService;

    move-result-object v2

    invoke-virtual {v2, v1}, Lsk/mimac/slideshow/database/service/ItemService;->createItem(Lsk/mimac/slideshow/database/entity/Item;)Lsk/mimac/slideshow/utils/Couple;

    move-result-object v1

    invoke-virtual {v1}, Lsk/mimac/slideshow/utils/Couple;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    new-instance v3, Lsk/mimac/slideshow/database/entity/PanelItem;

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->getId()Ljava/lang/Integer;

    move-result-object v17

    const/16 v26, 0x0

    const/16 v27, 0x0

    const-string v18, "RSS zone"

    const-string v19, "#00000077"

    const/16 v20, 0x0

    const/high16 v21, 0x42aa0000    # 85.0f

    const/high16 v22, 0x42c80000    # 100.0f

    const/high16 v23, 0x41700000    # 15.0f

    const/16 v24, 0x0

    move-object/from16 v16, v3

    invoke-direct/range {v16 .. v27}, Lsk/mimac/slideshow/database/entity/PanelItem;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;FFFFZLsk/mimac/slideshow/enums/TransitionType;ILjava/lang/String;)V

    invoke-static {}, Lsk/mimac/slideshow/database/dao/PanelItemDao;->getInstance()Lsk/mimac/slideshow/database/dao/PanelItemDao;

    move-result-object v0

    invoke-virtual {v0, v3}, Lsk/mimac/slideshow/database/dao/PanelItemDao;->create(Lsk/mimac/slideshow/database/entity/PanelItem;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Lsk/mimac/slideshow/database/entity/PanelItem;->setId(Ljava/lang/Integer;)V

    invoke-static {}, Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;->getInstance()Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;

    move-result-object v0

    new-instance v4, Lsk/mimac/slideshow/database/entity/PlaylistSchedule;

    invoke-virtual {v3}, Lsk/mimac/slideshow/database/entity/PanelItem;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v4, v1, v2, v3, v6}, Lsk/mimac/slideshow/database/entity/PlaylistSchedule;-><init>(JLjava/lang/Long;I)V

    invoke-virtual {v0, v4}, Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;->insert(Lsk/mimac/slideshow/database/entity/PlaylistSchedule;)V

    invoke-static {}, Lsk/mimac/slideshow/layout/CurrentScreenLayoutResolver;->forceReloadScheduledLayout()V

    return-void
.end method

.method private createSidePanels()V
    .locals 29

    new-instance v0, Lsk/mimac/slideshow/database/entity/ScreenLayout;

    invoke-direct {v0}, Lsk/mimac/slideshow/database/entity/ScreenLayout;-><init>()V

    const-string v1, "Side panels layout"

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->setName(Ljava/lang/String;)V

    invoke-static {}, Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;->getInstance()Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;

    move-result-object v1

    invoke-virtual {v1, v0}, Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;->create(Lsk/mimac/slideshow/database/entity/ScreenLayout;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->setId(Ljava/lang/Integer;)V

    invoke-static {}, Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;->getInstance()Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;

    move-result-object v1

    new-instance v2, Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    const/4 v5, 0x4

    invoke-direct {v2, v3, v4, v5}, Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;-><init>(JI)V

    invoke-virtual {v1, v2}, Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;->insert(Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;)V

    new-instance v1, Lsk/mimac/slideshow/database/entity/Item;

    sget-object v2, Lsk/mimac/slideshow/enums/ItemType;->RANDOM:Lsk/mimac/slideshow/enums/ItemType;

    const-string v3, "All files in cycle"

    const-string v4, "*"

    invoke-direct {v1, v4, v2, v3}, Lsk/mimac/slideshow/database/entity/Item;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/enums/ItemType;Ljava/lang/String;)V

    invoke-static {}, Lsk/mimac/slideshow/database/service/ItemService;->getInstance()Lsk/mimac/slideshow/database/service/ItemService;

    move-result-object v2

    invoke-virtual {v2, v1}, Lsk/mimac/slideshow/database/service/ItemService;->createItem(Lsk/mimac/slideshow/database/entity/Item;)Lsk/mimac/slideshow/utils/Couple;

    move-result-object v1

    invoke-virtual {v1}, Lsk/mimac/slideshow/utils/Couple;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    new-instance v15, Lsk/mimac/slideshow/database/entity/PanelItem;

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->getId()Ljava/lang/Integer;

    move-result-object v4

    sget-object v28, Lsk/mimac/slideshow/enums/TransitionType;->NONE:Lsk/mimac/slideshow/enums/TransitionType;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v5, "Main zone"

    const-string v6, "#000000ff"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x42a80000    # 84.0f

    const/high16 v10, 0x42a80000    # 84.0f

    const/4 v11, 0x1

    move-object v3, v15

    move-object/from16 v12, v28

    invoke-direct/range {v3 .. v14}, Lsk/mimac/slideshow/database/entity/PanelItem;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;FFFFZLsk/mimac/slideshow/enums/TransitionType;ILjava/lang/String;)V

    invoke-static {}, Lsk/mimac/slideshow/database/dao/PanelItemDao;->getInstance()Lsk/mimac/slideshow/database/dao/PanelItemDao;

    move-result-object v3

    invoke-virtual {v3, v15}, Lsk/mimac/slideshow/database/dao/PanelItemDao;->create(Lsk/mimac/slideshow/database/entity/PanelItem;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3}, Lsk/mimac/slideshow/database/entity/PanelItem;->setId(Ljava/lang/Integer;)V

    invoke-static {}, Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;->getInstance()Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;

    move-result-object v3

    new-instance v4, Lsk/mimac/slideshow/database/entity/PlaylistSchedule;

    invoke-virtual {v15}, Lsk/mimac/slideshow/database/entity/PanelItem;->getId()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x2

    invoke-direct {v4, v1, v2, v5, v6}, Lsk/mimac/slideshow/database/entity/PlaylistSchedule;-><init>(JLjava/lang/Long;I)V

    invoke-virtual {v3, v4}, Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;->insert(Lsk/mimac/slideshow/database/entity/PlaylistSchedule;)V

    new-instance v1, Lsk/mimac/slideshow/database/entity/Item;

    sget-object v2, Lsk/mimac/slideshow/enums/ItemType;->ALPHABETICALLY:Lsk/mimac/slideshow/enums/ItemType;

    const-string v3, "Logo file"

    const-string v4, "logo/logo.*"

    invoke-direct {v1, v4, v2, v3}, Lsk/mimac/slideshow/database/entity/Item;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/enums/ItemType;Ljava/lang/String;)V

    invoke-static {}, Lsk/mimac/slideshow/database/service/ItemService;->getInstance()Lsk/mimac/slideshow/database/service/ItemService;

    move-result-object v2

    invoke-virtual {v2, v1}, Lsk/mimac/slideshow/database/service/ItemService;->createItem(Lsk/mimac/slideshow/database/entity/Item;)Lsk/mimac/slideshow/utils/Couple;

    move-result-object v1

    invoke-virtual {v1}, Lsk/mimac/slideshow/utils/Couple;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    new-instance v3, Lsk/mimac/slideshow/database/entity/PanelItem;

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->getId()Ljava/lang/Integer;

    move-result-object v17

    const/16 v26, 0x0

    const/16 v27, 0x0

    const-string v18, "Logo zone"

    const-string v19, "#ccccccff"

    const/high16 v20, 0x42a80000    # 84.0f

    const/high16 v21, 0x42a80000    # 84.0f

    const/high16 v22, 0x41800000    # 16.0f

    const/high16 v23, 0x41800000    # 16.0f

    const/16 v24, 0x0

    move-object/from16 v16, v3

    move-object/from16 v25, v28

    invoke-direct/range {v16 .. v27}, Lsk/mimac/slideshow/database/entity/PanelItem;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;FFFFZLsk/mimac/slideshow/enums/TransitionType;ILjava/lang/String;)V

    invoke-static {}, Lsk/mimac/slideshow/database/dao/PanelItemDao;->getInstance()Lsk/mimac/slideshow/database/dao/PanelItemDao;

    move-result-object v4

    invoke-virtual {v4, v3}, Lsk/mimac/slideshow/database/dao/PanelItemDao;->create(Lsk/mimac/slideshow/database/entity/PanelItem;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsk/mimac/slideshow/database/entity/PanelItem;->setId(Ljava/lang/Integer;)V

    invoke-static {}, Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;->getInstance()Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;

    move-result-object v4

    new-instance v5, Lsk/mimac/slideshow/database/entity/PlaylistSchedule;

    invoke-virtual {v3}, Lsk/mimac/slideshow/database/entity/PanelItem;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v5, v1, v2, v3, v6}, Lsk/mimac/slideshow/database/entity/PlaylistSchedule;-><init>(JLjava/lang/Long;I)V

    invoke-virtual {v4, v5}, Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;->insert(Lsk/mimac/slideshow/database/entity/PlaylistSchedule;)V

    new-instance v1, Lsk/mimac/slideshow/database/entity/Item;

    sget-object v2, Lsk/mimac/slideshow/enums/ItemType;->RSS:Lsk/mimac/slideshow/enums/ItemType;

    const-string v3, "RSS feed"

    const-string v4, ""

    invoke-direct {v1, v4, v2, v3}, Lsk/mimac/slideshow/database/entity/Item;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/enums/ItemType;Ljava/lang/String;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v2}, Lsk/mimac/slideshow/database/entity/Item;->setProperties(Ljava/util/Map;)V

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/Item;->getProperties()Ljava/util/Map;

    move-result-object v2

    const-string v3, "rssReaderUrl"

    const-string v5, "http://feeds.bbci.co.uk/news/rss.xml"

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/Item;->getProperties()Ljava/util/Map;

    move-result-object v2

    const-string v3, "textColor"

    const-string v5, "#000000"

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/Item;->getProperties()Ljava/util/Map;

    move-result-object v2

    invoke-static {}, Lsk/mimac/slideshow/localization/Localization;->getLanguage()Lsk/mimac/slideshow/localization/Language;

    move-result-object v7

    invoke-virtual {v7}, Lsk/mimac/slideshow/localization/Language;->getLocale()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    const-string v8, "locale"

    invoke-interface {v2, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lsk/mimac/slideshow/database/service/ItemService;->getInstance()Lsk/mimac/slideshow/database/service/ItemService;

    move-result-object v2

    invoke-virtual {v2, v1}, Lsk/mimac/slideshow/database/service/ItemService;->createItem(Lsk/mimac/slideshow/database/entity/Item;)Lsk/mimac/slideshow/utils/Couple;

    move-result-object v1

    invoke-virtual {v1}, Lsk/mimac/slideshow/utils/Couple;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    new-instance v7, Lsk/mimac/slideshow/database/entity/PanelItem;

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->getId()Ljava/lang/Integer;

    move-result-object v17

    const-string v18, "RSS zone"

    const-string v19, "#ccccccff"

    const/high16 v20, 0x41a00000    # 20.0f

    const/high16 v22, 0x42800000    # 64.0f

    move-object/from16 v16, v7

    invoke-direct/range {v16 .. v27}, Lsk/mimac/slideshow/database/entity/PanelItem;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;FFFFZLsk/mimac/slideshow/enums/TransitionType;ILjava/lang/String;)V

    invoke-static {}, Lsk/mimac/slideshow/database/dao/PanelItemDao;->getInstance()Lsk/mimac/slideshow/database/dao/PanelItemDao;

    move-result-object v9

    invoke-virtual {v9, v7}, Lsk/mimac/slideshow/database/dao/PanelItemDao;->create(Lsk/mimac/slideshow/database/entity/PanelItem;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Lsk/mimac/slideshow/database/entity/PanelItem;->setId(Ljava/lang/Integer;)V

    invoke-static {}, Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;->getInstance()Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;

    move-result-object v9

    new-instance v10, Lsk/mimac/slideshow/database/entity/PlaylistSchedule;

    invoke-virtual {v7}, Lsk/mimac/slideshow/database/entity/PanelItem;->getId()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->longValue()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {v10, v1, v2, v7, v6}, Lsk/mimac/slideshow/database/entity/PlaylistSchedule;-><init>(JLjava/lang/Long;I)V

    invoke-virtual {v9, v10}, Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;->insert(Lsk/mimac/slideshow/database/entity/PlaylistSchedule;)V

    new-instance v1, Lsk/mimac/slideshow/database/entity/Item;

    sget-object v2, Lsk/mimac/slideshow/enums/ItemType;->WEATHER:Lsk/mimac/slideshow/enums/ItemType;

    const-string v7, "Weather"

    invoke-direct {v1, v4, v2, v7}, Lsk/mimac/slideshow/database/entity/Item;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/enums/ItemType;Ljava/lang/String;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v2}, Lsk/mimac/slideshow/database/entity/Item;->setProperties(Ljava/util/Map;)V

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/Item;->getProperties()Ljava/util/Map;

    move-result-object v2

    const-string v7, "weatherCity"

    const-string v9, "Punta Arenas, Chile"

    invoke-interface {v2, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/Item;->getProperties()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/Item;->getProperties()Ljava/util/Map;

    move-result-object v2

    invoke-static {}, Lsk/mimac/slideshow/localization/Localization;->getLanguage()Lsk/mimac/slideshow/localization/Language;

    move-result-object v7

    invoke-virtual {v7}, Lsk/mimac/slideshow/localization/Language;->getLocale()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lsk/mimac/slideshow/database/service/ItemService;->getInstance()Lsk/mimac/slideshow/database/service/ItemService;

    move-result-object v2

    invoke-virtual {v2, v1}, Lsk/mimac/slideshow/database/service/ItemService;->createItem(Lsk/mimac/slideshow/database/entity/Item;)Lsk/mimac/slideshow/utils/Couple;

    move-result-object v1

    invoke-virtual {v1}, Lsk/mimac/slideshow/utils/Couple;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    new-instance v7, Lsk/mimac/slideshow/database/entity/PanelItem;

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->getId()Ljava/lang/Integer;

    move-result-object v17

    const-string v18, "Weather zone"

    const-string v19, "#ccccccff"

    const/high16 v20, 0x42a80000    # 84.0f

    const/16 v21, 0x0

    const/high16 v22, 0x41800000    # 16.0f

    const/high16 v23, 0x42a80000    # 84.0f

    move-object/from16 v16, v7

    invoke-direct/range {v16 .. v27}, Lsk/mimac/slideshow/database/entity/PanelItem;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;FFFFZLsk/mimac/slideshow/enums/TransitionType;ILjava/lang/String;)V

    invoke-static {}, Lsk/mimac/slideshow/database/dao/PanelItemDao;->getInstance()Lsk/mimac/slideshow/database/dao/PanelItemDao;

    move-result-object v9

    invoke-virtual {v9, v7}, Lsk/mimac/slideshow/database/dao/PanelItemDao;->create(Lsk/mimac/slideshow/database/entity/PanelItem;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Lsk/mimac/slideshow/database/entity/PanelItem;->setId(Ljava/lang/Integer;)V

    invoke-static {}, Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;->getInstance()Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;

    move-result-object v9

    new-instance v10, Lsk/mimac/slideshow/database/entity/PlaylistSchedule;

    invoke-virtual {v7}, Lsk/mimac/slideshow/database/entity/PanelItem;->getId()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->longValue()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {v10, v1, v2, v7, v6}, Lsk/mimac/slideshow/database/entity/PlaylistSchedule;-><init>(JLjava/lang/Long;I)V

    invoke-virtual {v9, v10}, Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;->insert(Lsk/mimac/slideshow/database/entity/PlaylistSchedule;)V

    new-instance v1, Lsk/mimac/slideshow/database/entity/Item;

    sget-object v2, Lsk/mimac/slideshow/enums/ItemType;->DATE_TIME:Lsk/mimac/slideshow/enums/ItemType;

    const-string v7, "Date-time"

    invoke-direct {v1, v4, v2, v7}, Lsk/mimac/slideshow/database/entity/Item;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/enums/ItemType;Ljava/lang/String;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v2}, Lsk/mimac/slideshow/database/entity/Item;->setProperties(Ljava/util/Map;)V

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/Item;->getProperties()Ljava/util/Map;

    move-result-object v2

    const-string v4, "timeFormat"

    const-string v7, "HH:mm"

    invoke-interface {v2, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/Item;->getProperties()Ljava/util/Map;

    move-result-object v2

    const-string v4, "dateFormat"

    const-string v7, "EEEE, d.M.yyyy"

    invoke-interface {v2, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/Item;->getProperties()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/Item;->getProperties()Ljava/util/Map;

    move-result-object v2

    invoke-static {}, Lsk/mimac/slideshow/localization/Localization;->getLanguage()Lsk/mimac/slideshow/localization/Language;

    move-result-object v3

    invoke-virtual {v3}, Lsk/mimac/slideshow/localization/Language;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lsk/mimac/slideshow/database/service/ItemService;->getInstance()Lsk/mimac/slideshow/database/service/ItemService;

    move-result-object v2

    invoke-virtual {v2, v1}, Lsk/mimac/slideshow/database/service/ItemService;->createItem(Lsk/mimac/slideshow/database/entity/Item;)Lsk/mimac/slideshow/utils/Couple;

    move-result-object v1

    invoke-virtual {v1}, Lsk/mimac/slideshow/utils/Couple;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    new-instance v3, Lsk/mimac/slideshow/database/entity/PanelItem;

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->getId()Ljava/lang/Integer;

    move-result-object v17

    const-string v18, "Date-time zone"

    const-string v19, "#ccccccff"

    const/16 v20, 0x0

    const/high16 v21, 0x42a80000    # 84.0f

    const/high16 v22, 0x41a00000    # 20.0f

    const/high16 v23, 0x41800000    # 16.0f

    move-object/from16 v16, v3

    invoke-direct/range {v16 .. v27}, Lsk/mimac/slideshow/database/entity/PanelItem;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;FFFFZLsk/mimac/slideshow/enums/TransitionType;ILjava/lang/String;)V

    invoke-static {}, Lsk/mimac/slideshow/database/dao/PanelItemDao;->getInstance()Lsk/mimac/slideshow/database/dao/PanelItemDao;

    move-result-object v0

    invoke-virtual {v0, v3}, Lsk/mimac/slideshow/database/dao/PanelItemDao;->create(Lsk/mimac/slideshow/database/entity/PanelItem;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Lsk/mimac/slideshow/database/entity/PanelItem;->setId(Ljava/lang/Integer;)V

    invoke-static {}, Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;->getInstance()Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;

    move-result-object v0

    new-instance v4, Lsk/mimac/slideshow/database/entity/PlaylistSchedule;

    invoke-virtual {v3}, Lsk/mimac/slideshow/database/entity/PanelItem;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v4, v1, v2, v3, v6}, Lsk/mimac/slideshow/database/entity/PlaylistSchedule;-><init>(JLjava/lang/Long;I)V

    invoke-virtual {v0, v4}, Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;->insert(Lsk/mimac/slideshow/database/entity/PlaylistSchedule;)V

    invoke-static {}, Lsk/mimac/slideshow/layout/CurrentScreenLayoutResolver;->forceReloadScheduledLayout()V

    new-instance v0, Ljava/io/File;

    sget-object v1, Lsk/mimac/slideshow/FileConstants;->CONTENT_PATH:Ljava/lang/String;

    const-string v2, "logo"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    new-instance v1, Ljava/io/File;

    const-string v2, "logo.webp"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    const-class v0, Lsk/mimac/slideshow/http/page/SampleScreenLayoutPage;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v2, "sample-data/logo.webp"

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v2, v3}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v1, v0

    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object v3, v0

    :try_start_6
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_1
    if-eqz v2, :cond_0

    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v2, v0

    :try_start_8
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_2
    throw v1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :goto_3
    sget-object v1, Lsk/mimac/slideshow/http/page/AbstractFormPage;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Can\'t copy sample logo file"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_4
    return-void
.end method

.method private createSingleLayout()V
    .locals 16

    new-instance v0, Lsk/mimac/slideshow/database/entity/ScreenLayout;

    invoke-direct {v0}, Lsk/mimac/slideshow/database/entity/ScreenLayout;-><init>()V

    const-string v1, "Single layout"

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->setName(Ljava/lang/String;)V

    invoke-static {}, Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;->getInstance()Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;

    move-result-object v1

    invoke-virtual {v1, v0}, Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;->create(Lsk/mimac/slideshow/database/entity/ScreenLayout;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->setId(Ljava/lang/Integer;)V

    invoke-static {}, Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;->getInstance()Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;

    move-result-object v1

    new-instance v2, Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    const/4 v5, 0x4

    invoke-direct {v2, v3, v4, v5}, Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;-><init>(JI)V

    invoke-virtual {v1, v2}, Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;->insert(Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;)V

    new-instance v1, Lsk/mimac/slideshow/database/entity/Item;

    sget-object v2, Lsk/mimac/slideshow/enums/ItemType;->RANDOM:Lsk/mimac/slideshow/enums/ItemType;

    const-string v3, "All files in cycle"

    const-string v4, "*"

    invoke-direct {v1, v4, v2, v3}, Lsk/mimac/slideshow/database/entity/Item;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/enums/ItemType;Ljava/lang/String;)V

    invoke-static {}, Lsk/mimac/slideshow/database/service/ItemService;->getInstance()Lsk/mimac/slideshow/database/service/ItemService;

    move-result-object v2

    invoke-virtual {v2, v1}, Lsk/mimac/slideshow/database/service/ItemService;->createItem(Lsk/mimac/slideshow/database/entity/Item;)Lsk/mimac/slideshow/utils/Couple;

    move-result-object v1

    invoke-virtual {v1}, Lsk/mimac/slideshow/utils/Couple;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    new-instance v15, Lsk/mimac/slideshow/database/entity/PanelItem;

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->getId()Ljava/lang/Integer;

    move-result-object v4

    sget-object v12, Lsk/mimac/slideshow/enums/TransitionType;->NONE:Lsk/mimac/slideshow/enums/TransitionType;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v5, "Whole screen"

    const-string v6, "#000000ff"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x42c80000    # 100.0f

    const/high16 v10, 0x42c80000    # 100.0f

    const/4 v11, 0x1

    move-object v3, v15

    invoke-direct/range {v3 .. v14}, Lsk/mimac/slideshow/database/entity/PanelItem;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;FFFFZLsk/mimac/slideshow/enums/TransitionType;ILjava/lang/String;)V

    invoke-static {}, Lsk/mimac/slideshow/database/dao/PanelItemDao;->getInstance()Lsk/mimac/slideshow/database/dao/PanelItemDao;

    move-result-object v0

    invoke-virtual {v0, v15}, Lsk/mimac/slideshow/database/dao/PanelItemDao;->create(Lsk/mimac/slideshow/database/entity/PanelItem;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v15, v0}, Lsk/mimac/slideshow/database/entity/PanelItem;->setId(Ljava/lang/Integer;)V

    invoke-static {}, Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;->getInstance()Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;

    move-result-object v0

    new-instance v3, Lsk/mimac/slideshow/database/entity/PlaylistSchedule;

    invoke-virtual {v15}, Lsk/mimac/slideshow/database/entity/PanelItem;->getId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x2

    invoke-direct {v3, v1, v2, v4, v5}, Lsk/mimac/slideshow/database/entity/PlaylistSchedule;-><init>(JLjava/lang/Long;I)V

    invoke-virtual {v0, v3}, Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;->insert(Lsk/mimac/slideshow/database/entity/PlaylistSchedule;)V

    invoke-static {}, Lsk/mimac/slideshow/layout/CurrentScreenLayoutResolver;->forceReloadScheduledLayout()V

    return-void
.end method

.method private createWithTime()V
    .locals 19

    new-instance v0, Lsk/mimac/slideshow/database/entity/ScreenLayout;

    invoke-direct {v0}, Lsk/mimac/slideshow/database/entity/ScreenLayout;-><init>()V

    const-string v1, "Layout with time"

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->setName(Ljava/lang/String;)V

    invoke-static {}, Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;->getInstance()Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;

    move-result-object v1

    invoke-virtual {v1, v0}, Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;->create(Lsk/mimac/slideshow/database/entity/ScreenLayout;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->setId(Ljava/lang/Integer;)V

    invoke-static {}, Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;->getInstance()Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;

    move-result-object v1

    new-instance v2, Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    const/4 v5, 0x4

    invoke-direct {v2, v3, v4, v5}, Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;-><init>(JI)V

    invoke-virtual {v1, v2}, Lsk/mimac/slideshow/database/dao/ScreenLayoutScheduleDao;->insert(Lsk/mimac/slideshow/database/entity/ScreenLayoutSchedule;)V

    new-instance v1, Lsk/mimac/slideshow/database/entity/Item;

    sget-object v2, Lsk/mimac/slideshow/enums/ItemType;->RANDOM:Lsk/mimac/slideshow/enums/ItemType;

    const-string v3, "All files in cycle"

    const-string v4, "*"

    invoke-direct {v1, v4, v2, v3}, Lsk/mimac/slideshow/database/entity/Item;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/enums/ItemType;Ljava/lang/String;)V

    invoke-static {}, Lsk/mimac/slideshow/database/service/ItemService;->getInstance()Lsk/mimac/slideshow/database/service/ItemService;

    move-result-object v2

    invoke-virtual {v2, v1}, Lsk/mimac/slideshow/database/service/ItemService;->createItem(Lsk/mimac/slideshow/database/entity/Item;)Lsk/mimac/slideshow/utils/Couple;

    move-result-object v1

    invoke-virtual {v1}, Lsk/mimac/slideshow/utils/Couple;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    new-instance v15, Lsk/mimac/slideshow/database/entity/PanelItem;

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->getId()Ljava/lang/Integer;

    move-result-object v4

    sget-object v12, Lsk/mimac/slideshow/enums/TransitionType;->CROSSFADE:Lsk/mimac/slideshow/enums/TransitionType;

    const/16 v13, 0x320

    const/4 v14, 0x0

    const-string v5, "Whole screen"

    const-string v6, "#000000ff"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x42c80000    # 100.0f

    const/high16 v10, 0x42c80000    # 100.0f

    const/4 v11, 0x1

    move-object v3, v15

    invoke-direct/range {v3 .. v14}, Lsk/mimac/slideshow/database/entity/PanelItem;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;FFFFZLsk/mimac/slideshow/enums/TransitionType;ILjava/lang/String;)V

    invoke-static {}, Lsk/mimac/slideshow/database/dao/PanelItemDao;->getInstance()Lsk/mimac/slideshow/database/dao/PanelItemDao;

    move-result-object v3

    invoke-virtual {v3, v15}, Lsk/mimac/slideshow/database/dao/PanelItemDao;->create(Lsk/mimac/slideshow/database/entity/PanelItem;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3}, Lsk/mimac/slideshow/database/entity/PanelItem;->setId(Ljava/lang/Integer;)V

    invoke-static {}, Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;->getInstance()Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;

    move-result-object v3

    new-instance v4, Lsk/mimac/slideshow/database/entity/PlaylistSchedule;

    invoke-virtual {v15}, Lsk/mimac/slideshow/database/entity/PanelItem;->getId()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x2

    invoke-direct {v4, v1, v2, v5, v6}, Lsk/mimac/slideshow/database/entity/PlaylistSchedule;-><init>(JLjava/lang/Long;I)V

    invoke-virtual {v3, v4}, Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;->insert(Lsk/mimac/slideshow/database/entity/PlaylistSchedule;)V

    new-instance v1, Lsk/mimac/slideshow/database/entity/Item;

    sget-object v2, Lsk/mimac/slideshow/enums/ItemType;->DATE_TIME:Lsk/mimac/slideshow/enums/ItemType;

    const-string v3, "Date-time"

    const-string v4, ""

    invoke-direct {v1, v4, v2, v3}, Lsk/mimac/slideshow/database/entity/Item;-><init>(Ljava/lang/String;Lsk/mimac/slideshow/enums/ItemType;Ljava/lang/String;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v2}, Lsk/mimac/slideshow/database/entity/Item;->setProperties(Ljava/util/Map;)V

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/Item;->getProperties()Ljava/util/Map;

    move-result-object v2

    const-string v3, "timeFormat"

    const-string v4, "HH:mm"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/Item;->getProperties()Ljava/util/Map;

    move-result-object v2

    const-string v3, "dateFormat"

    const-string v4, "EEEE, d MMMM"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/Item;->getProperties()Ljava/util/Map;

    move-result-object v2

    const-string v3, "textColor"

    const-string v4, "#000000"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/Item;->getProperties()Ljava/util/Map;

    move-result-object v2

    invoke-static {}, Lsk/mimac/slideshow/localization/Localization;->getLanguage()Lsk/mimac/slideshow/localization/Language;

    move-result-object v3

    invoke-virtual {v3}, Lsk/mimac/slideshow/localization/Language;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "locale"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lsk/mimac/slideshow/database/service/ItemService;->getInstance()Lsk/mimac/slideshow/database/service/ItemService;

    move-result-object v2

    invoke-virtual {v2, v1}, Lsk/mimac/slideshow/database/service/ItemService;->createItem(Lsk/mimac/slideshow/database/entity/Item;)Lsk/mimac/slideshow/utils/Couple;

    move-result-object v1

    invoke-virtual {v1}, Lsk/mimac/slideshow/utils/Couple;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    new-instance v3, Lsk/mimac/slideshow/database/entity/PanelItem;

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->getId()Ljava/lang/Integer;

    move-result-object v8

    sget-object v16, Lsk/mimac/slideshow/enums/TransitionType;->NONE:Lsk/mimac/slideshow/enums/TransitionType;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v9, "Date-time zone"

    const-string v10, "#ffffff33"

    const/high16 v11, 0x41c80000    # 25.0f

    const/high16 v12, 0x41c80000    # 25.0f

    const/high16 v13, 0x42480000    # 50.0f

    const/high16 v14, 0x42480000    # 50.0f

    const/4 v15, 0x0

    move-object v7, v3

    invoke-direct/range {v7 .. v18}, Lsk/mimac/slideshow/database/entity/PanelItem;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;FFFFZLsk/mimac/slideshow/enums/TransitionType;ILjava/lang/String;)V

    invoke-virtual {v3}, Lsk/mimac/slideshow/database/entity/PanelItem;->getProperties()Ljava/util/Map;

    move-result-object v0

    const-string v4, "radiusTopLeft"

    const-string v5, "30"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lsk/mimac/slideshow/database/entity/PanelItem;->getProperties()Ljava/util/Map;

    move-result-object v0

    const-string v4, "radiusTopRight"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lsk/mimac/slideshow/database/entity/PanelItem;->getProperties()Ljava/util/Map;

    move-result-object v0

    const-string v4, "radiusBottomRight"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lsk/mimac/slideshow/database/entity/PanelItem;->getProperties()Ljava/util/Map;

    move-result-object v0

    const-string v4, "radiusBottomLeft"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lsk/mimac/slideshow/database/dao/PanelItemDao;->getInstance()Lsk/mimac/slideshow/database/dao/PanelItemDao;

    move-result-object v0

    invoke-virtual {v0, v3}, Lsk/mimac/slideshow/database/dao/PanelItemDao;->create(Lsk/mimac/slideshow/database/entity/PanelItem;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Lsk/mimac/slideshow/database/entity/PanelItem;->setId(Ljava/lang/Integer;)V

    invoke-static {}, Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;->getInstance()Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;

    move-result-object v0

    new-instance v4, Lsk/mimac/slideshow/database/entity/PlaylistSchedule;

    invoke-virtual {v3}, Lsk/mimac/slideshow/database/entity/PanelItem;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v4, v1, v2, v3, v6}, Lsk/mimac/slideshow/database/entity/PlaylistSchedule;-><init>(JLjava/lang/Long;I)V

    invoke-virtual {v0, v4}, Lsk/mimac/slideshow/database/dao/PlaylistScheduleDao;->insert(Lsk/mimac/slideshow/database/entity/PlaylistSchedule;)V

    invoke-static {}, Lsk/mimac/slideshow/layout/CurrentScreenLayoutResolver;->forceReloadScheduledLayout()V

    return-void
.end method


# virtual methods
.method public getPageHeader()Ljava/lang/String;
    .locals 1

    const-string v0, "sample_screen_layout"

    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public process()V
    .locals 7

    invoke-virtual {p0}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->isPost()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractFormPage;->params:Ljava/util/Map;

    const-string v1, "layout"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lsk/mimac/slideshow/http/page/AbstractFormPage;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Setting sample layout [{}]"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "SIDE_PANELS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_3

    :sswitch_1
    const-string v2, "ANIMATION_AND_TIME"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_2
    const-string v2, "WITH_TIME"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_3
    const-string v2, "MOVING_RSS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_4
    const-string v2, "SINGLE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v2, -0x1

    :goto_1
    if-eqz v2, :cond_5

    if-eq v2, v6, :cond_4

    if-eq v2, v4, :cond_3

    if-eq v2, v5, :cond_2

    if-eq v2, v3, :cond_1

    const-string v2, "Unknown sample layout [{}]"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-direct {p0}, Lsk/mimac/slideshow/http/page/SampleScreenLayoutPage;->createMovingRss()V

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Lsk/mimac/slideshow/http/page/SampleScreenLayoutPage;->createAnimationWithTime()V

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lsk/mimac/slideshow/http/page/SampleScreenLayoutPage;->createWithTime()V

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lsk/mimac/slideshow/http/page/SampleScreenLayoutPage;->createSidePanels()V

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Lsk/mimac/slideshow/http/page/SampleScreenLayoutPage;->createSingleLayout()V

    :goto_2
    const-string v1, "sample_screen_layout_success"

    invoke-static {v1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lsk/mimac/slideshow/http/page/AbstractFormPage;->resultMessage:Ljava/lang/String;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    sget-object v2, Lsk/mimac/slideshow/http/page/AbstractFormPage;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Can\'t use sample layout [{}]"

    invoke-interface {v2, v3, v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "sample_screen_layout_error"

    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "todo"

    invoke-virtual {p0, v1, v0}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->addError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6e3487b8 -> :sswitch_4
        -0x404fcd3f -> :sswitch_3
        -0x21be195a -> :sswitch_2
        0x27096d0 -> :sswitch_1
        0x7ea1f2d7 -> :sswitch_0
    .end sparse-switch
.end method

.method public writePage(Ljava/lang/StringBuilder;)V
    .locals 1

    const-string v0, "<i>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "sample_screen_layout_help"

    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</i><br><br>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<table class=\'styledTable\'><thead><tr><th>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "name2"

    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</th><th>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "description"

    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</th><th></th></tr></thead>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "SINGLE"

    invoke-direct {p0, p1, v0}, Lsk/mimac/slideshow/http/page/SampleScreenLayoutPage;->appendRow(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const-string v0, "SIDE_PANELS"

    invoke-direct {p0, p1, v0}, Lsk/mimac/slideshow/http/page/SampleScreenLayoutPage;->appendRow(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const-string v0, "WITH_TIME"

    invoke-direct {p0, p1, v0}, Lsk/mimac/slideshow/http/page/SampleScreenLayoutPage;->appendRow(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const-string v0, "ANIMATION_AND_TIME"

    invoke-direct {p0, p1, v0}, Lsk/mimac/slideshow/http/page/SampleScreenLayoutPage;->appendRow(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const-string v0, "MOVING_RSS"

    invoke-direct {p0, p1, v0}, Lsk/mimac/slideshow/http/page/SampleScreenLayoutPage;->appendRow(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const-string v0, "</table>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
