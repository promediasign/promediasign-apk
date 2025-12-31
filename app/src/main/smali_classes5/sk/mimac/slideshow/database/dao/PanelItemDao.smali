.class public Lsk/mimac/slideshow/database/dao/PanelItemDao;
.super Lsk/mimac/slideshow/database/dao/AbstractDao;
.source "SourceFile"


# static fields
.field private static INSTANCE:Lsk/mimac/slideshow/database/dao/PanelItemDao;

.field private static final LOG:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/database/dao/PanelItemDao;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/database/dao/PanelItemDao;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method private constructor <init>(Ljavax/sql/DataSource;)V
    .locals 1

    const-string v0, "panel_item"

    invoke-direct {p0, p1, v0}, Lsk/mimac/slideshow/database/dao/AbstractDao;-><init>(Ljavax/sql/DataSource;Ljava/lang/String;)V

    return-void
.end method

.method private createInternal(Ljava/sql/PreparedStatement;Lsk/mimac/slideshow/database/entity/PanelItem;)I
    .locals 3

    invoke-direct {p0, p1, p2}, Lsk/mimac/slideshow/database/dao/PanelItemDao;->mapItemToStatement(Ljava/sql/PreparedStatement;Lsk/mimac/slideshow/database/entity/PanelItem;)V

    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeUpdate()I

    invoke-interface {p1}, Ljava/sql/Statement;->getGeneratedKeys()Ljava/sql/ResultSet;

    move-result-object p1

    :try_start_0
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V

    sget-object p1, Lsk/mimac/slideshow/database/dao/PanelItemDao;->LOG:Lorg/slf4j/Logger;

    invoke-virtual {p2}, Lsk/mimac/slideshow/database/entity/PanelItem;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "New panel item \'{}\' added"

    invoke-interface {p1, v2, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lsk/mimac/slideshow/database/entity/PanelItem;->setId(Ljava/lang/Integer;)V

    return v0

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_0

    :try_start_1
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p2
.end method

.method private deleteInternal(Ljava/sql/PreparedStatement;Ljava/sql/PreparedStatement;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-interface {p2, v0, p3}, Ljava/sql/PreparedStatement;->setInt(II)V

    invoke-interface {p2}, Ljava/sql/PreparedStatement;->executeUpdate()I

    invoke-interface {p1, v0, p3}, Ljava/sql/PreparedStatement;->setInt(II)V

    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeUpdate()I

    sget-object p1, Lsk/mimac/slideshow/database/dao/PanelItemDao;->LOG:Lorg/slf4j/Logger;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "Panel item \'{}\' deleted"

    invoke-interface {p1, p3, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static getInstance()Lsk/mimac/slideshow/database/dao/PanelItemDao;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/database/dao/PanelItemDao;->INSTANCE:Lsk/mimac/slideshow/database/dao/PanelItemDao;

    return-object v0
.end method

.method private mapItemToStatement(Ljava/sql/PreparedStatement;Lsk/mimac/slideshow/database/entity/PanelItem;)V
    .locals 3

    invoke-virtual {p2}, Lsk/mimac/slideshow/database/entity/PanelItem;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, v1, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {p2}, Lsk/mimac/slideshow/database/entity/PanelItem;->getBackgroundColor()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 v0, 0x3

    invoke-virtual {p2}, Lsk/mimac/slideshow/database/entity/PanelItem;->getX()F

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/sql/PreparedStatement;->setFloat(IF)V

    const/4 v0, 0x4

    invoke-virtual {p2}, Lsk/mimac/slideshow/database/entity/PanelItem;->getY()F

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/sql/PreparedStatement;->setFloat(IF)V

    const/4 v0, 0x5

    invoke-virtual {p2}, Lsk/mimac/slideshow/database/entity/PanelItem;->getHeight()F

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/sql/PreparedStatement;->setFloat(IF)V

    const/4 v0, 0x6

    invoke-virtual {p2}, Lsk/mimac/slideshow/database/entity/PanelItem;->getWidth()F

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/sql/PreparedStatement;->setFloat(IF)V

    const/4 v0, 0x7

    invoke-virtual {p2}, Lsk/mimac/slideshow/database/entity/PanelItem;->isMainPanel()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/sql/PreparedStatement;->setBoolean(IZ)V

    invoke-virtual {p2}, Lsk/mimac/slideshow/database/entity/PanelItem;->getScreenLayoutId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x8

    invoke-interface {p1, v1, v0}, Ljava/sql/PreparedStatement;->setInt(II)V

    invoke-virtual {p2}, Lsk/mimac/slideshow/database/entity/PanelItem;->getAnimationType()Lsk/mimac/slideshow/enums/TransitionType;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lsk/mimac/slideshow/database/entity/PanelItem;->getAnimationType()Lsk/mimac/slideshow/enums/TransitionType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    const/16 v1, 0x9

    invoke-interface {p1, v1, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/16 v0, 0xa

    invoke-virtual {p2}, Lsk/mimac/slideshow/database/entity/PanelItem;->getAnimationLength()I

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/sql/PreparedStatement;->setInt(II)V

    invoke-virtual {p2}, Lsk/mimac/slideshow/database/entity/PanelItem;->getProperties()Ljava/util/Map;

    move-result-object v0

    const/16 v1, 0xb

    const/16 v2, 0xc

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lsk/mimac/slideshow/database/entity/PanelItem;->getProperties()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lsk/mimac/slideshow/database/entity/PanelItem;->getProperties()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lsk/mimac/slideshow/database/dao/AbstractDao;->propertiesToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-interface {p1, v1, v2}, Ljava/sql/PreparedStatement;->setNull(II)V

    :goto_1
    invoke-virtual {p2}, Lsk/mimac/slideshow/database/entity/PanelItem;->getDisplayOrder()I

    move-result v0

    invoke-interface {p1, v2, v0}, Ljava/sql/PreparedStatement;->setInt(II)V

    invoke-virtual {p2}, Lsk/mimac/slideshow/database/entity/PanelItem;->getDisplayId()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xd

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lsk/mimac/slideshow/database/entity/PanelItem;->getDisplayId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-interface {p1, v1, v2}, Ljava/sql/PreparedStatement;->setNull(II)V

    :goto_2
    return-void
.end method

.method private mapRsToItem(Ljava/sql/ResultSet;)Lsk/mimac/slideshow/database/entity/PanelItem;
    .locals 2

    new-instance v0, Lsk/mimac/slideshow/database/entity/PanelItem;

    invoke-direct {v0}, Lsk/mimac/slideshow/database/entity/PanelItem;-><init>()V

    const-string v1, "id"

    invoke-interface {p1, v1}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/database/entity/PanelItem;->setId(Ljava/lang/Integer;)V

    const-string v1, "name"

    invoke-interface {p1, v1}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/database/entity/PanelItem;->setName(Ljava/lang/String;)V

    const-string v1, "background_color"

    invoke-interface {p1, v1}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/database/entity/PanelItem;->setBackgroundColor(Ljava/lang/String;)V

    const-string v1, "x"

    invoke-interface {p1, v1}, Ljava/sql/ResultSet;->getFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/database/entity/PanelItem;->setX(F)V

    const-string v1, "y"

    invoke-interface {p1, v1}, Ljava/sql/ResultSet;->getFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/database/entity/PanelItem;->setY(F)V

    const-string v1, "height"

    invoke-interface {p1, v1}, Ljava/sql/ResultSet;->getFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/database/entity/PanelItem;->setHeight(F)V

    const-string v1, "width"

    invoke-interface {p1, v1}, Ljava/sql/ResultSet;->getFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/database/entity/PanelItem;->setWidth(F)V

    const-string v1, "main_panel"

    invoke-interface {p1, v1}, Ljava/sql/ResultSet;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/database/entity/PanelItem;->setMainPanel(Z)V

    const-string v1, "screen_layout_id"

    invoke-interface {p1, v1}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/database/entity/PanelItem;->setScreenLayoutId(Ljava/lang/Integer;)V

    const-string v1, "display_order"

    invoke-interface {p1, v1}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/database/entity/PanelItem;->setDisplayOrder(I)V

    :try_start_0
    const-string v1, "animation_type"

    invoke-interface {p1, v1}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsk/mimac/slideshow/enums/TransitionType;->valueOf(Ljava/lang/String;)Lsk/mimac/slideshow/enums/TransitionType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/database/entity/PanelItem;->setAnimationType(Lsk/mimac/slideshow/enums/TransitionType;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v1, Lsk/mimac/slideshow/enums/TransitionType;->NONE:Lsk/mimac/slideshow/enums/TransitionType;

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/database/entity/PanelItem;->setAnimationType(Lsk/mimac/slideshow/enums/TransitionType;)V

    :goto_0
    const-string v1, "animation_length"

    invoke-interface {p1, v1}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/database/entity/PanelItem;->setAnimationLength(I)V

    const-string v1, "display_id"

    invoke-interface {p1, v1}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/database/entity/PanelItem;->setDisplayId(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/sql/ResultSet;->wasNull()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/database/entity/PanelItem;->setDisplayId(Ljava/lang/String;)V

    :cond_0
    const-string v1, "properties"

    invoke-interface {p1, v1}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/entity/PanelItem;->getProperties()Ljava/util/Map;

    move-result-object v1

    invoke-static {p1, v1}, Lsk/mimac/slideshow/database/dao/AbstractDao;->stringToProperties(Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method public static setDataSource(Ljavax/sql/DataSource;)V
    .locals 1

    new-instance v0, Lsk/mimac/slideshow/database/dao/PanelItemDao;

    invoke-direct {v0, p0}, Lsk/mimac/slideshow/database/dao/PanelItemDao;-><init>(Ljavax/sql/DataSource;)V

    sput-object v0, Lsk/mimac/slideshow/database/dao/PanelItemDao;->INSTANCE:Lsk/mimac/slideshow/database/dao/PanelItemDao;

    return-void
.end method

.method private updateInternal(Ljava/sql/PreparedStatement;Lsk/mimac/slideshow/database/entity/PanelItem;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lsk/mimac/slideshow/database/dao/PanelItemDao;->mapItemToStatement(Ljava/sql/PreparedStatement;Lsk/mimac/slideshow/database/entity/PanelItem;)V

    invoke-virtual {p2}, Lsk/mimac/slideshow/database/entity/PanelItem;->getId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xe

    invoke-interface {p1, v1, v0}, Ljava/sql/PreparedStatement;->setInt(II)V

    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeUpdate()I

    sget-object p1, Lsk/mimac/slideshow/database/dao/PanelItemDao;->LOG:Lorg/slf4j/Logger;

    const-string v0, "Panel item \'{}\' updated"

    invoke-virtual {p2}, Lsk/mimac/slideshow/database/entity/PanelItem;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public create(Lsk/mimac/slideshow/database/entity/PanelItem;)I
    .locals 3

    iget-object v0, p0, Lsk/mimac/slideshow/database/dao/AbstractDao;->ds:Ljavax/sql/DataSource;

    invoke-interface {v0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    :try_start_0
    const-string v1, "INSERT INTO panel_item (name, background_color, x, y, height, width, main_panel, screen_layout_id, animation_type, animation_length, properties, display_order, display_id) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

    invoke-interface {v0, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-direct {p0, v1, p1}, Lsk/mimac/slideshow/database/dao/PanelItemDao;->createInternal(Ljava/sql/PreparedStatement;Lsk/mimac/slideshow/database/entity/PanelItem;)I

    move-result p1

    const/4 v2, 0x0

    invoke-static {v2}, Lsk/mimac/slideshow/settings/SystemSettings;->setImportedConfigHash(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    :try_start_2
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    return p1

    :catchall_1
    move-exception p1

    if-eqz v1, :cond_1

    :try_start_3
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v1

    :try_start_4
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    if-eqz v0, :cond_2

    :try_start_5
    invoke-interface {v0}, Ljava/sql/Connection;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    throw p1
.end method

.method public delete(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lsk/mimac/slideshow/database/dao/AbstractDao;->ds:Ljavax/sql/DataSource;

    invoke-interface {v0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    :try_start_0
    const-string v1, "DELETE FROM playlist_schedule WHERE panel_item_id = ?"

    invoke-interface {v0, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    const-string v2, "DELETE FROM panel_item WHERE id = ?"

    invoke-interface {v0, v2}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v3

    invoke-direct {p0, v2, v1, v3}, Lsk/mimac/slideshow/database/dao/PanelItemDao;->deleteInternal(Ljava/sql/PreparedStatement;Ljava/sql/PreparedStatement;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    if-eqz v2, :cond_1

    :try_start_3
    invoke-interface {v2}, Ljava/sql/Statement;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_5

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    :try_start_4
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    goto :goto_7

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    const/4 p1, 0x0

    invoke-static {p1}, Lsk/mimac/slideshow/settings/SystemSettings;->setImportedConfigHash(Ljava/lang/String;)V

    return-void

    :goto_3
    if-eqz v2, :cond_3

    :try_start_5
    invoke-interface {v2}, Ljava/sql/Statement;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v2

    :try_start_6
    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_4
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_5
    if-eqz v1, :cond_4

    :try_start_7
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_6

    :catchall_4
    move-exception v1

    :try_start_8
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_6
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :goto_7
    if-eqz v0, :cond_5

    :try_start_9
    invoke-interface {v0}, Ljava/sql/Connection;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_8

    :catchall_5
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_8
    throw p1
.end method

.method public getAllForLayout(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/database/entity/PanelItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lsk/mimac/slideshow/database/dao/AbstractDao;->ds:Ljavax/sql/DataSource;

    invoke-interface {v0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    :try_start_0
    const-string v1, "SELECT id, name, background_color, x, y, height, width, main_panel, screen_layout_id, animation_type, animation_length, properties, display_order, display_id FROM panel_item WHERE screen_layout_id = ? ORDER BY display_order, id"

    invoke-interface {v0, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x1

    invoke-interface {v1, v3, p1}, Ljava/sql/PreparedStatement;->setInt(II)V

    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :goto_0
    :try_start_2
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, p1}, Lsk/mimac/slideshow/database/dao/PanelItemDao;->mapRsToItem(Ljava/sql/ResultSet;)Lsk/mimac/slideshow/database/entity/PanelItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_0
    :try_start_3
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    return-object v2

    :catchall_1
    move-exception p1

    goto :goto_5

    :catchall_2
    move-exception p1

    goto :goto_3

    :goto_1
    if-eqz p1, :cond_1

    :try_start_5
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p1

    :try_start_6
    invoke-virtual {v2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_3
    if-eqz v1, :cond_2

    :try_start_7
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception v1

    :try_start_8
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_4
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_5
    if-eqz v0, :cond_3

    :try_start_9
    invoke-interface {v0}, Ljava/sql/Connection;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_6
    throw p1
.end method

.method public getAllForLayoutAndDisplay(ILjava/lang/String;Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/database/entity/PanelItem;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT id, name, background_color, x, y, height, width, main_panel, screen_layout_id, animation_type, animation_length, properties, display_order, display_id FROM panel_item WHERE screen_layout_id = ? AND (display_id = ?"

    iget-object v1, p0, Lsk/mimac/slideshow/database/dao/AbstractDao;->ds:Ljavax/sql/DataSource;

    invoke-interface {v1}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v1

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    const-string p3, " OR display_id IS NULL"

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_6

    :cond_0
    const-string p3, ""

    :goto_0
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ") ORDER BY display_order, id"

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v1, p3}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    invoke-interface {p3, v2, p1}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 p1, 0x2

    invoke-interface {p3, p1, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    invoke-interface {p3}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :goto_1
    :try_start_2
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lsk/mimac/slideshow/database/dao/PanelItemDao;->mapRsToItem(Ljava/sql/ResultSet;)Lsk/mimac/slideshow/database/entity/PanelItem;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p2

    goto :goto_2

    :cond_1
    :try_start_3
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-interface {p3}, Ljava/sql/Statement;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-interface {v1}, Ljava/sql/Connection;->close()V

    return-object v0

    :catchall_2
    move-exception p1

    goto :goto_4

    :goto_2
    if-eqz p1, :cond_2

    :try_start_5
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p1

    :try_start_6
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_4
    if-eqz p3, :cond_3

    :try_start_7
    invoke-interface {p3}, Ljava/sql/Statement;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_5

    :catchall_4
    move-exception p2

    :try_start_8
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_5
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_6
    if-eqz v1, :cond_4

    :try_start_9
    invoke-interface {v1}, Ljava/sql/Connection;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_7

    :catchall_5
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_7
    throw p1
.end method

.method public getById(I)Lsk/mimac/slideshow/database/entity/PanelItem;
    .locals 3

    iget-object v0, p0, Lsk/mimac/slideshow/database/dao/AbstractDao;->ds:Ljavax/sql/DataSource;

    invoke-interface {v0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    :try_start_0
    const-string v1, "SELECT id, name, background_color, x, y, height, width, main_panel, screen_layout_id, animation_type, animation_length, properties, display_order, display_id FROM panel_item WHERE id = ?"

    invoke-interface {v0, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    :try_start_1
    invoke-interface {v1, v2, p1}, Ljava/sql/PreparedStatement;->setInt(II)V

    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lsk/mimac/slideshow/database/dao/PanelItemDao;->mapRsToItem(Ljava/sql/ResultSet;)Lsk/mimac/slideshow/database/entity/PanelItem;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    return-object v2

    :catchall_0
    move-exception p1

    goto :goto_4

    :catchall_1
    move-exception p1

    goto :goto_2

    :catchall_2
    move-exception v2

    goto :goto_0

    :cond_0
    :try_start_5
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    const/4 p1, 0x0

    return-object p1

    :goto_0
    if-eqz p1, :cond_1

    :try_start_7
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p1

    :try_start_8
    invoke-virtual {v2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_2
    if-eqz v1, :cond_2

    :try_start_9
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_3

    :catchall_4
    move-exception v1

    :try_start_a
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_4
    if-eqz v0, :cond_3

    :try_start_b
    invoke-interface {v0}, Ljava/sql/Connection;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_5
    throw p1
.end method

.method public getMainForLayout(I)Lsk/mimac/slideshow/database/entity/PanelItem;
    .locals 3

    iget-object v0, p0, Lsk/mimac/slideshow/database/dao/AbstractDao;->ds:Ljavax/sql/DataSource;

    invoke-interface {v0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    :try_start_0
    const-string v1, "SELECT id, name, background_color, x, y, height, width, main_panel, screen_layout_id, animation_type, animation_length, properties, display_order, display_id FROM panel_item WHERE screen_layout_id = ? AND main_panel = TRUE"

    invoke-interface {v0, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    :try_start_1
    invoke-interface {v1, v2, p1}, Ljava/sql/PreparedStatement;->setInt(II)V

    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lsk/mimac/slideshow/database/dao/PanelItemDao;->mapRsToItem(Ljava/sql/ResultSet;)Lsk/mimac/slideshow/database/entity/PanelItem;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    return-object v2

    :catchall_0
    move-exception p1

    goto :goto_4

    :catchall_1
    move-exception p1

    goto :goto_2

    :catchall_2
    move-exception v2

    goto :goto_0

    :cond_0
    :try_start_5
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    const/4 p1, 0x0

    return-object p1

    :goto_0
    if-eqz p1, :cond_1

    :try_start_7
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p1

    :try_start_8
    invoke-virtual {v2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_2
    if-eqz v1, :cond_2

    :try_start_9
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_3

    :catchall_4
    move-exception v1

    :try_start_a
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_4
    if-eqz v0, :cond_3

    :try_start_b
    invoke-interface {v0}, Ljava/sql/Connection;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_5
    throw p1
.end method

.method public getUsedWithPlaylist(J)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/database/entity/PanelItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lsk/mimac/slideshow/database/dao/AbstractDao;->ds:Ljavax/sql/DataSource;

    invoke-interface {v0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    :try_start_0
    const-string v1, "SELECT DISTINCT panel_item.id, name, background_color, x, y, height, width, main_panel, screen_layout_id, animation_type, animation_length, properties, display_order, display_id FROM panel_item JOIN playlist_schedule ON panel_item.id = panel_item_id WHERE playlist_id = ?"

    invoke-interface {v0, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x1

    invoke-interface {v1, v3, p1, p2}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :goto_0
    :try_start_2
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lsk/mimac/slideshow/database/dao/PanelItemDao;->mapRsToItem(Ljava/sql/ResultSet;)Lsk/mimac/slideshow/database/entity/PanelItem;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_0
    :try_start_3
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    return-object v2

    :catchall_1
    move-exception p1

    goto :goto_5

    :catchall_2
    move-exception p1

    goto :goto_3

    :goto_1
    if-eqz p1, :cond_1

    :try_start_5
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p1

    :try_start_6
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_3
    if-eqz v1, :cond_2

    :try_start_7
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception p2

    :try_start_8
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_4
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_5
    if-eqz v0, :cond_3

    :try_start_9
    invoke-interface {v0}, Ljava/sql/Connection;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_6
    throw p1
.end method

.method public update(Lsk/mimac/slideshow/database/entity/PanelItem;)V
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/database/dao/AbstractDao;->ds:Ljavax/sql/DataSource;

    invoke-interface {v0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    :try_start_0
    const-string v1, "UPDATE panel_item SET name = ?, background_color = ?, x = ?, y = ?, height = ?, width = ?, main_panel = ?, screen_layout_id = ?, animation_type = ?, animation_length = ?, properties = ?, display_order = ?, display_id = ? WHERE id = ?"

    invoke-interface {v0, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-direct {p0, v1, p1}, Lsk/mimac/slideshow/database/dao/PanelItemDao;->updateInternal(Ljava/sql/PreparedStatement;Lsk/mimac/slideshow/database/entity/PanelItem;)V

    const/4 p1, 0x0

    invoke-static {p1}, Lsk/mimac/slideshow/settings/SystemSettings;->setImportedConfigHash(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    :try_start_2
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    return-void

    :catchall_1
    move-exception p1

    if-eqz v1, :cond_1

    :try_start_3
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v1

    :try_start_4
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    if-eqz v0, :cond_2

    :try_start_5
    invoke-interface {v0}, Ljava/sql/Connection;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    throw p1
.end method

.method public updateAll(Ljava/lang/Integer;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/database/entity/PanelItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lsk/mimac/slideshow/database/dao/AbstractDao;->ds:Ljavax/sql/DataSource;

    invoke-interface {v0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    :try_start_0
    const-string v1, "UPDATE panel_item SET name = ?, background_color = ?, x = ?, y = ?, height = ?, width = ?, main_panel = ?, screen_layout_id = ?, animation_type = ?, animation_length = ?, properties = ?, display_order = ?, display_id = ? WHERE id = ?"

    invoke-interface {v0, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    :try_start_1
    const-string v2, "INSERT INTO panel_item (name, background_color, x, y, height, width, main_panel, screen_layout_id,animation_type, animation_length, properties, display_order, display_id) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

    invoke-interface {v0, v2}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    const-string v3, "DELETE FROM playlist_schedule WHERE panel_item_id = ?"

    invoke-interface {v0, v3}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    const-string v4, "DELETE FROM panel_item WHERE id = ?"

    invoke-interface {v0, v4}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    const-string v5, "SELECT id FROM panel_item WHERE screen_layout_id = ?"

    invoke-interface {v0, v5}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    :try_start_5
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v7, 0x1

    invoke-interface {v5, v7, p1}, Ljava/sql/PreparedStatement;->setInt(II)V

    invoke-interface {v5}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_0
    :try_start_6
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "id"

    invoke-interface {p1, v7}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    goto/16 :goto_7

    :cond_0
    :try_start_7
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lsk/mimac/slideshow/database/entity/PanelItem;

    invoke-virtual {p2}, Lsk/mimac/slideshow/database/entity/PanelItem;->getId()Ljava/lang/Integer;

    move-result-object v7

    if-nez v7, :cond_1

    invoke-direct {p0, v2, p2}, Lsk/mimac/slideshow/database/dao/PanelItemDao;->createInternal(Ljava/sql/PreparedStatement;Lsk/mimac/slideshow/database/entity/PanelItem;)I

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_9

    :cond_1
    invoke-direct {p0, v1, p2}, Lsk/mimac/slideshow/database/dao/PanelItemDao;->updateInternal(Ljava/sql/PreparedStatement;Lsk/mimac/slideshow/database/entity/PanelItem;)V

    invoke-virtual {p2}, Lsk/mimac/slideshow/database/entity/PanelItem;->getId()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, v4, v3, p2}, Lsk/mimac/slideshow/database/dao/PanelItemDao;->deleteInternal(Ljava/sql/PreparedStatement;Ljava/sql/PreparedStatement;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    :cond_3
    :try_start_8
    invoke-interface {v5}, Ljava/sql/Statement;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    if-eqz v4, :cond_4

    :try_start_9
    invoke-interface {v4}, Ljava/sql/Statement;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p1

    goto :goto_d

    :cond_4
    :goto_3
    if-eqz v3, :cond_5

    :try_start_a
    invoke-interface {v3}, Ljava/sql/Statement;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception p1

    goto :goto_f

    :cond_5
    :goto_4
    if-eqz v2, :cond_6

    :try_start_b
    invoke-interface {v2}, Ljava/sql/Statement;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    goto :goto_5

    :catchall_4
    move-exception p1

    goto :goto_11

    :cond_6
    :goto_5
    if-eqz v1, :cond_7

    :try_start_c
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception p1

    goto :goto_13

    :cond_7
    :goto_6
    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    const/4 p1, 0x0

    invoke-static {p1}, Lsk/mimac/slideshow/settings/SystemSettings;->setImportedConfigHash(Ljava/lang/String;)V

    return-void

    :catchall_6
    move-exception p1

    goto :goto_b

    :goto_7
    if-eqz p1, :cond_8

    :try_start_d
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    goto :goto_8

    :catchall_7
    move-exception p1

    :try_start_e
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_8
    throw p2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :goto_9
    if-eqz v5, :cond_9

    :try_start_f
    invoke-interface {v5}, Ljava/sql/Statement;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    goto :goto_a

    :catchall_8
    move-exception p2

    :try_start_10
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9
    :goto_a
    throw p1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    :goto_b
    if-eqz v4, :cond_a

    :try_start_11
    invoke-interface {v4}, Ljava/sql/Statement;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    goto :goto_c

    :catchall_9
    move-exception p2

    :try_start_12
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a
    :goto_c
    throw p1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    :goto_d
    if-eqz v3, :cond_b

    :try_start_13
    invoke-interface {v3}, Ljava/sql/Statement;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_a

    goto :goto_e

    :catchall_a
    move-exception p2

    :try_start_14
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b
    :goto_e
    throw p1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    :goto_f
    if-eqz v2, :cond_c

    :try_start_15
    invoke-interface {v2}, Ljava/sql/Statement;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_b

    goto :goto_10

    :catchall_b
    move-exception p2

    :try_start_16
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_c
    :goto_10
    throw p1
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    :goto_11
    if-eqz v1, :cond_d

    :try_start_17
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_c

    goto :goto_12

    :catchall_c
    move-exception p2

    :try_start_18
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_d
    :goto_12
    throw p1
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    :goto_13
    if-eqz v0, :cond_e

    :try_start_19
    invoke-interface {v0}, Ljava/sql/Connection;->close()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_d

    goto :goto_14

    :catchall_d
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_e
    :goto_14
    throw p1
.end method
