.class public Lsk/mimac/slideshow/gui/GuiCreator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final INSTANCE:Lsk/mimac/slideshow/gui/GuiCreator;

.field private static final LOG:Lorg/slf4j/Logger;

.field private static final RANDOM:Ljava/util/Random;


# instance fields
.field private fullscreen:Z

.field private final layouts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lsk/mimac/slideshow/gui/PercentageLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mainPlaylistPanel:Lsk/mimac/slideshow/gui/PlaylistPanel;

.field private final panels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/utils/Couple<",
            "Lsk/mimac/slideshow/gui/PlaylistPanel;",
            "Lsk/mimac/slideshow/database/entity/PanelItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private screenLayoutRotation:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lsk/mimac/slideshow/gui/GuiCreator;

    invoke-direct {v0}, Lsk/mimac/slideshow/gui/GuiCreator;-><init>()V

    sput-object v0, Lsk/mimac/slideshow/gui/GuiCreator;->INSTANCE:Lsk/mimac/slideshow/gui/GuiCreator;

    const-class v0, Lsk/mimac/slideshow/gui/GuiCreator;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/gui/GuiCreator;->LOG:Lorg/slf4j/Logger;

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lsk/mimac/slideshow/gui/GuiCreator;->RANDOM:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lsk/mimac/slideshow/gui/GuiCreator;->panels:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lsk/mimac/slideshow/gui/GuiCreator;->layouts:Ljava/util/Set;

    return-void
.end method

.method public static synthetic a(Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lsk/mimac/slideshow/gui/GuiCreator;->lambda$showScreenCheck$5(Ljava/util/List;)V

    return-void
.end method

.method private addBetaSign(Lsk/mimac/slideshow/gui/PercentageLayout;)V
    .locals 4

    new-instance v0, Landroid/widget/TextView;

    sget-object v1, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v1, "For testing only"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v2, 0x41

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x5f

    const/16 v2, 0xb4

    invoke-static {v2, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x42280000    # 42.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    new-instance v1, Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;

    const/high16 v2, 0x41200000    # 10.0f

    const/high16 v3, 0x42a00000    # 80.0f

    invoke-direct {v1, v2, v2, v3, v3}, Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;-><init>(FFFF)V

    invoke-virtual {p1, v0, v1}, Lsk/mimac/slideshow/gui/PercentageLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private addTrialSign(Lsk/mimac/slideshow/gui/PercentageLayout;)V
    .locals 9

    const/16 v0, 0x190

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v2, 0x3c0

    invoke-static {v2, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/high16 v3, 0x42e60000    # 115.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    const/16 v3, 0xc8

    const/16 v4, 0xcd

    invoke-static {v3, v3, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v3, 0x19

    const/16 v4, 0x14

    const/16 v5, 0x5a

    invoke-static {v5, v3, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    const/high16 v4, 0x41200000    # 10.0f

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v5, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    new-instance v3, Lsk/mimac/slideshow/utils/Rectangle;

    const/16 v4, 0xa0

    const/16 v6, 0x32

    const/16 v7, 0x3c

    const/16 v8, 0x35c

    invoke-direct {v3, v6, v7, v8, v4}, Lsk/mimac/slideshow/utils/Rectangle;-><init>(IIII)V

    const-string v4, "PROMEDIA trial"

    invoke-static {v1, v4, v2, v3}, Lsk/mimac/slideshow/utils/MediaUtilsImpl;->drawTextInRectangle(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Paint;Lsk/mimac/slideshow/utils/Rectangle;)V

    new-instance v3, Lsk/mimac/slideshow/utils/Rectangle;

    const/16 v4, 0xdc

    const/16 v7, 0x64

    invoke-direct {v3, v6, v4, v8, v7}, Lsk/mimac/slideshow/utils/Rectangle;-><init>(IIII)V

    const-string v4, "Please contact support to get licence key"

    invoke-static {v1, v4, v2, v3}, Lsk/mimac/slideshow/utils/MediaUtilsImpl;->drawTextInRectangle(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Paint;Lsk/mimac/slideshow/utils/Rectangle;)V

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeY(Landroid/graphics/Shader$TileMode;)V

    new-instance v0, Landroid/widget/ImageView;

    sget-object v2, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-direct {v1, v5, v5, v2, v2}, Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;-><init>(FFFF)V

    invoke-virtual {p1, v0, v1}, Lsk/mimac/slideshow/gui/PercentageLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic b(Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lsk/mimac/slideshow/gui/GuiCreator;->lambda$createGui$0(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic c(Lsk/mimac/slideshow/gui/GuiCreator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsk/mimac/slideshow/gui/GuiCreator;->lambda$mute$2()V

    return-void
.end method

.method private checkRotateLayout()V
    .locals 4

    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->ROTATE_LAYOUT_PERIODICALLY:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lsk/mimac/slideshow/gui/GuiCreator;->panels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    sget-object v0, Lsk/mimac/slideshow/gui/GuiCreator;->RANDOM:Ljava/util/Random;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1, v1}, Lsk/mimac/slideshow/gui/GuiCreator;->changeLayout(ZZ)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2, v1}, Lsk/mimac/slideshow/gui/GuiCreator;->changeLayout(ZZ)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1, v2}, Lsk/mimac/slideshow/gui/GuiCreator;->changeLayout(ZZ)V

    :cond_3
    :goto_0
    return-void
.end method

.method private createGradientDrawable(Ljava/util/Map;Ljava/lang/String;[F)Landroid/graphics/drawable/GradientDrawable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "[F)",
            "Landroid/graphics/drawable/GradientDrawable;"
        }
    .end annotation

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v0, p3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    const-string p3, "gradType"

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {v0, p3}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    const-string p3, "color2"

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Lsk/mimac/slideshow/utils/ColorUtils;->parseColorRGBA(Ljava/lang/String;)I

    move-result p2

    invoke-static {p3}, Lsk/mimac/slideshow/utils/ColorUtils;->parseColorRGBA(Ljava/lang/String;)I

    move-result p3

    filled-new-array {p2, p3}, [I

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    :cond_0
    const-string p2, "gradRadius"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_1

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    :cond_1
    const-string p2, "gradOrient"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-static {p1}, Landroid/graphics/drawable/GradientDrawable$Orientation;->valueOf(Ljava/lang/String;)Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    goto :goto_0

    :cond_2
    invoke-static {p2}, Lsk/mimac/slideshow/utils/ColorUtils;->parseColorRGBA(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_3
    :goto_0
    return-object v0
.end method

.method public static synthetic d(Lsk/mimac/slideshow/gui/GuiCreator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsk/mimac/slideshow/gui/GuiCreator;->lambda$unMute$3()V

    return-void
.end method

.method public static synthetic e(Lsk/mimac/slideshow/gui/GuiCreator;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lsk/mimac/slideshow/gui/GuiCreator;->lambda$showScreenCheck$4(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic f(Lsk/mimac/slideshow/gui/GuiCreator;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Lsk/mimac/slideshow/gui/DisplayItemThread;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lsk/mimac/slideshow/gui/GuiCreator;->lambda$showScreenCheck$6(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Lsk/mimac/slideshow/gui/DisplayItemThread;)V

    return-void
.end method

.method public static synthetic g(Ljava/lang/String;Lsk/mimac/slideshow/utils/Couple;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lsk/mimac/slideshow/gui/GuiCreator;->lambda$stop$1(Ljava/lang/String;Lsk/mimac/slideshow/utils/Couple;)Z

    move-result p0

    return p0
.end method

.method private getCornerRadii(Ljava/util/Map;)[F
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[F"
        }
    .end annotation

    const/16 v0, 0x8

    new-array v0, v0, [F

    const-string v1, "radiusTopLeft"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v2, 0x0

    aput v1, v0, v2

    :cond_0
    const-string v1, "radiusTopRight"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x3

    aput v1, v0, v2

    const/4 v2, 0x2

    aput v1, v0, v2

    :cond_1
    const-string v1, "radiusBottomRight"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x5

    aput v1, v0, v2

    const/4 v2, 0x4

    aput v1, v0, v2

    :cond_2
    const-string v1, "radiusBottomLeft"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    int-to-float p1, p1

    const/4 v1, 0x7

    aput p1, v0, v1

    const/4 v1, 0x6

    aput p1, v0, v1

    :cond_3
    return-object v0
.end method

.method public static getInstance()Lsk/mimac/slideshow/gui/GuiCreator;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/gui/GuiCreator;->INSTANCE:Lsk/mimac/slideshow/gui/GuiCreator;

    return-object v0
.end method

.method private getPanelItems(Ljava/lang/Integer;Ljava/lang/String;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/database/entity/PanelItem;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Lsk/mimac/slideshow/database/entity/PanelItem;

    invoke-direct {p1}, Lsk/mimac/slideshow/database/entity/PanelItem;-><init>()V

    const-string p2, ""

    invoke-virtual {p1, p2}, Lsk/mimac/slideshow/database/entity/PanelItem;->setName(Ljava/lang/String;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lsk/mimac/slideshow/database/entity/PanelItem;->setMainPanel(Z)V

    const/high16 p2, 0x42c80000    # 100.0f

    invoke-virtual {p1, p2}, Lsk/mimac/slideshow/database/entity/PanelItem;->setHeight(F)V

    invoke-virtual {p1, p2}, Lsk/mimac/slideshow/database/entity/PanelItem;->setWidth(F)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lsk/mimac/slideshow/database/entity/PanelItem;->setX(F)V

    invoke-virtual {p1, p2}, Lsk/mimac/slideshow/database/entity/PanelItem;->setY(F)V

    const-string p2, "#000000"

    invoke-virtual {p1, p2}, Lsk/mimac/slideshow/database/entity/PanelItem;->setBackgroundColor(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    :try_start_0
    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->MULTI_DISPLAY_ALLOW:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lsk/mimac/slideshow/database/dao/PanelItemDao;->getInstance()Lsk/mimac/slideshow/database/dao/PanelItemDao;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1, p2, p3}, Lsk/mimac/slideshow/database/dao/PanelItemDao;->getAllForLayoutAndDisplay(ILjava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_1
    invoke-static {}, Lsk/mimac/slideshow/database/dao/PanelItemDao;->getInstance()Lsk/mimac/slideshow/database/dao/PanelItemDao;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2, p1}, Lsk/mimac/slideshow/database/dao/PanelItemDao;->getAllForLayout(I)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_0
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Can\'t load panel item data"

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private getScreenCheckHtml(Lsk/mimac/slideshow/utils/DisplayInfoDto;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "<!DOCTYPE html><html style=\'margin: 0; width: 100%; height: 100%\'><head><meta charset=\'utf-8\'></head><body style=\'padding: 6vh 6vw; border: 8px solid orange; background-color: white; margin: 0; width: 100%; height: 100%; box-sizing: border-box;\'\'><center><div style=\'font-size: 6vw\'><b>"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, ":</b> "

    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string p2, "device_name"

    .line 17
    .line 18
    invoke-static {p2, v1, v0}, Lch/qos/logback/core/joran/util/a;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 19
    .line 20
    .line 21
    sget-object p2, Lsk/mimac/slideshow/settings/UserSettings;->DEVICE_NAME:Lsk/mimac/slideshow/settings/UserSettings;

    .line 22
    .line 23
    invoke-virtual {p2}, Lsk/mimac/slideshow/settings/UserSettings;->getString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    :goto_0
    const-string p2, "<br><b>"

    .line 31
    .line 32
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string p2, "ip_address"

    .line 36
    .line 37
    invoke-static {p2}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getNetworkInfo()Lsk/mimac/slideshow/network/NetworkInfo;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-virtual {p2}, Lsk/mimac/slideshow/network/NetworkInfo;->getIpAddress()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string p2, "<div style=\'padding: 3vh 0 3vh 0\'><span style=\'padding: 2.2vh 2.8vw; background-color:red; display: inline-block;\'>RED</span><span style=\'padding: 2.2vh 2.8vw; background-color:green; display: inline-block;\'>GREEN</span><span style=\'padding: 2.2vh 2.8vw; background-color:blue; display: inline-block;\'>BLUE</span></div><div style=\'width: 12vw; height: 12vh; bottom:6px; right:6px; position: absolute; background: url(\"data:image/bmp;base64,Qk1GAAAAAAAAADYAAAAoAAAAAgAAAAIAAAABABgAAAAAABAAAACIDwAAiA8AAAAAAAAAAAAA+v38BgYCAAAGAgb8/PoAAA==\")\'></div>"

    .line 59
    .line 60
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    if-eqz p1, :cond_1

    .line 64
    .line 65
    const-string p2, "<b style=\'font-size: 2.5vw\'>"

    .line 66
    .line 67
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string p2, "display"

    .line 71
    .line 72
    invoke-static {p2}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Lsk/mimac/slideshow/utils/DisplayInfoDto;->getId()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string p2, " <span style=\'font-size: 2.5vw\'>"

    .line 90
    .line 91
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Lsk/mimac/slideshow/utils/DisplayInfoDto;->getName()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string p2, " ("

    .line 102
    .line 103
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1}, Lsk/mimac/slideshow/utils/DisplayInfoDto;->getWidth()I

    .line 107
    .line 108
    .line 109
    move-result p2

    .line 110
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string p2, " x "

    .line 114
    .line 115
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1}, Lsk/mimac/slideshow/utils/DisplayInfoDto;->getHeight()I

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string p1, " px)</span>"

    .line 126
    .line 127
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    :cond_1
    const-string p1, "</center></body><html>"

    .line 131
    .line 132
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    return-object p1
.end method

.method private getStrokeColor(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lsk/mimac/slideshow/utils/ColorUtils;->parseColorRGBA(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getStrokeWidth(Ljava/lang/String;)I
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method private static synthetic lambda$createGui$0(Ljava/util/List;)V
    .locals 1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsk/mimac/slideshow/utils/Couple;

    invoke-virtual {v0}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsk/mimac/slideshow/gui/PlaylistPanel;

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/PlaylistPanel;->getItemThread()Lsk/mimac/slideshow/gui/DisplayItemThread;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/ItemThread;->start()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$mute$2()V
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/gui/GuiCreator;->panels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsk/mimac/slideshow/utils/Couple;

    invoke-virtual {v1}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsk/mimac/slideshow/gui/PlaylistPanel;

    invoke-virtual {v1}, Lsk/mimac/slideshow/gui/PlaylistPanel;->mute()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$showScreenCheck$4(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)V
    .locals 6

    iget-object v0, p0, Lsk/mimac/slideshow/gui/GuiCreator;->layouts:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsk/mimac/slideshow/gui/PercentageLayout;

    new-instance v2, Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    new-instance v3, Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;

    const/4 v4, 0x0

    const/high16 v5, 0x42c80000    # 100.0f

    invoke-direct {v3, v4, v4, v5, v5}, Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;-><init>(FFFF)V

    invoke-virtual {v1, v2, v3}, Lsk/mimac/slideshow/gui/PercentageLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1}, Lsk/mimac/slideshow/gui/PercentageLayout;->getDisplayId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsk/mimac/slideshow/utils/DisplayInfoDto;

    invoke-direct {p0, v1, p2}, Lsk/mimac/slideshow/gui/GuiCreator;->getScreenCheckHtml(Lsk/mimac/slideshow/utils/DisplayInfoDto;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    invoke-virtual {v2, v1, v3, v4}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static synthetic lambda$showScreenCheck$5(Ljava/util/List;)V
    .locals 2

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lsk/mimac/slideshow/gui/PercentageLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$showScreenCheck$6(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Lsk/mimac/slideshow/gui/DisplayItemThread;)V
    .locals 7

    new-instance v6, LD/i;

    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, LD/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v6}, Lsk/mimac/slideshow/ContextHolder;->runOnUiThread(Ljava/lang/Runnable;)V

    const-wide/16 p1, 0x4e20

    :try_start_0
    invoke-virtual {p4, p1, p2}, Lsk/mimac/slideshow/gui/ItemThread;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p1, Lk1/a;

    const/4 p2, 0x1

    invoke-direct {p1, p3, p2}, Lk1/a;-><init>(Ljava/util/List;I)V

    invoke-static {p1}, Lsk/mimac/slideshow/ContextHolder;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    new-instance p2, Lk1/a;

    const/4 p4, 0x1

    invoke-direct {p2, p3, p4}, Lk1/a;-><init>(Ljava/util/List;I)V

    invoke-static {p2}, Lsk/mimac/slideshow/ContextHolder;->runOnUiThread(Ljava/lang/Runnable;)V

    throw p1
.end method

.method private static synthetic lambda$stop$1(Ljava/lang/String;Lsk/mimac/slideshow/utils/Couple;)Z
    .locals 0

    invoke-virtual {p1}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsk/mimac/slideshow/gui/PlaylistPanel;

    invoke-virtual {p1}, Lsk/mimac/slideshow/gui/PlaylistPanel;->getDisplayId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$unMute$3()V
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/gui/GuiCreator;->panels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsk/mimac/slideshow/utils/Couple;

    invoke-virtual {v1}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsk/mimac/slideshow/gui/PlaylistPanel;

    invoke-virtual {v1}, Lsk/mimac/slideshow/gui/PlaylistPanel;->unMute()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private refreshBackground(Lsk/mimac/slideshow/database/entity/PanelItem;Lsk/mimac/slideshow/gui/RoundedRelativeLayout;)V
    .locals 3

    invoke-virtual {p2}, Lsk/mimac/slideshow/gui/RoundedRelativeLayout;->getCornerRadii()[F

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/PanelItem;->getProperties()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/PanelItem;->getBackgroundColor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lsk/mimac/slideshow/gui/RoundedRelativeLayout;->getCornerRadii()[F

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lsk/mimac/slideshow/gui/GuiCreator;->createGradientDrawable(Ljava/util/Map;Ljava/lang/String;[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    sget-object v0, Lsk/mimac/slideshow/gui/GuiCreator;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Can\'t create background of panel [id={}]"

    invoke-virtual {p1}, Lsk/mimac/slideshow/database/entity/PanelItem;->getId()Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private setLayoutParamsIfChanged(Landroid/view/View;Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public changeLayout(ZZ)V
    .locals 6

    iget-boolean v0, p0, Lsk/mimac/slideshow/gui/GuiCreator;->fullscreen:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lsk/mimac/slideshow/gui/GuiCreator;->panels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lsk/mimac/slideshow/gui/GuiCreator;->panels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsk/mimac/slideshow/utils/Couple;

    invoke-virtual {v1}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsk/mimac/slideshow/gui/PlaylistPanel;

    invoke-virtual {v2}, Lsk/mimac/slideshow/gui/PlaylistPanel;->getView()Lsk/mimac/slideshow/gui/RoundedRelativeLayout;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lsk/mimac/slideshow/gui/RoundedRelativeLayout;->changeLayout(ZZ)V

    invoke-virtual {v1}, Lsk/mimac/slideshow/utils/Couple;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsk/mimac/slideshow/database/entity/PanelItem;

    invoke-direct {p0, v1, v2}, Lsk/mimac/slideshow/gui/GuiCreator;->refreshBackground(Lsk/mimac/slideshow/database/entity/PanelItem;Lsk/mimac/slideshow/gui/RoundedRelativeLayout;)V

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;

    const/high16 v3, 0x42c80000    # 100.0f

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;->getxPercentage()F

    move-result v4

    sub-float v4, v3, v4

    invoke-virtual {v1}, Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;->getWidthPercentage()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v1, v4}, Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;->setxPercentage(F)V

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {v1}, Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;->getyPercentage()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {v1}, Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;->getHeightPercentage()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {v1, v3}, Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;->setyPercentage(F)V

    :cond_2
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public createGui(Lsk/mimac/slideshow/gui/PercentageLayout;)V
    .locals 12

    iget-object v0, p0, Lsk/mimac/slideshow/gui/GuiCreator;->layouts:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lsk/mimac/slideshow/layout/CurrentScreenLayoutResolver;->getCurrentLayout()Lsk/mimac/slideshow/layout/ScreenLayoutWrapper;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lsk/mimac/slideshow/layout/ScreenLayoutWrapper;->getRotation()S

    move-result v1

    invoke-virtual {p1, v1}, Lsk/mimac/slideshow/gui/PercentageLayout;->setRotation(I)V

    invoke-interface {v0}, Lsk/mimac/slideshow/layout/ScreenLayoutWrapper;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lsk/mimac/slideshow/gui/PercentageLayout;->getDisplayId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lsk/mimac/slideshow/gui/PercentageLayout;->isMainDisplay()Z

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lsk/mimac/slideshow/gui/GuiCreator;->getPanelItems(Ljava/lang/Integer;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsk/mimac/slideshow/database/entity/PanelItem;

    invoke-virtual {v3}, Lsk/mimac/slideshow/database/entity/PanelItem;->getProperties()Ljava/util/Map;

    move-result-object v4

    invoke-direct {p0, v4}, Lsk/mimac/slideshow/gui/GuiCreator;->getCornerRadii(Ljava/util/Map;)[F

    move-result-object v11

    invoke-virtual {v3}, Lsk/mimac/slideshow/database/entity/PanelItem;->getProperties()Ljava/util/Map;

    move-result-object v4

    const-string v5, "strokeWidth"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Lsk/mimac/slideshow/gui/GuiCreator;->getStrokeWidth(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3}, Lsk/mimac/slideshow/database/entity/PanelItem;->getProperties()Ljava/util/Map;

    move-result-object v4

    const-string v5, "strokeColor"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Lsk/mimac/slideshow/gui/GuiCreator;->getStrokeColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3}, Lsk/mimac/slideshow/database/entity/PanelItem;->isMainPanel()Z

    move-result v5

    invoke-interface {v0}, Lsk/mimac/slideshow/layout/ScreenLayoutWrapper;->getRotation()S

    move-result v9

    invoke-virtual {p1}, Lsk/mimac/slideshow/gui/PercentageLayout;->getDisplayId()Ljava/lang/String;

    move-result-object v10

    move-object v4, v3

    move-object v6, v11

    invoke-static/range {v4 .. v10}, Lsk/mimac/slideshow/gui/PlaylistPanel;->initialize(Lsk/mimac/slideshow/database/entity/PanelItem;Z[FILjava/lang/Integer;ILjava/lang/String;)Lsk/mimac/slideshow/gui/PlaylistPanel;

    move-result-object v4

    invoke-virtual {v4}, Lsk/mimac/slideshow/gui/PlaylistPanel;->isMainPanel()Z

    move-result v5

    if-eqz v5, :cond_1

    iput-object v4, p0, Lsk/mimac/slideshow/gui/GuiCreator;->mainPlaylistPanel:Lsk/mimac/slideshow/gui/PlaylistPanel;

    :cond_1
    new-instance v5, Lsk/mimac/slideshow/utils/Couple;

    invoke-direct {v5, v4, v3}, Lsk/mimac/slideshow/utils/Couple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lsk/mimac/slideshow/gui/PlaylistPanel;->getView()Lsk/mimac/slideshow/gui/RoundedRelativeLayout;

    move-result-object v4

    :try_start_0
    invoke-virtual {v3}, Lsk/mimac/slideshow/database/entity/PanelItem;->getProperties()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v3}, Lsk/mimac/slideshow/database/entity/PanelItem;->getBackgroundColor()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6, v11}, Lsk/mimac/slideshow/gui/GuiCreator;->createGradientDrawable(Ljava/util/Map;Ljava/lang/String;[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    sget-object v6, Lsk/mimac/slideshow/gui/GuiCreator;->LOG:Lorg/slf4j/Logger;

    const-string v7, "Can\'t create background of panel [id={}]"

    invoke-virtual {v3}, Lsk/mimac/slideshow/database/entity/PanelItem;->getId()Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v7, v8, v5}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3}, Lsk/mimac/slideshow/database/entity/PanelItem;->getBackgroundColor()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lsk/mimac/slideshow/utils/ColorUtils;->parseColorRGBA(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_1
    new-instance v5, Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;

    invoke-virtual {v3}, Lsk/mimac/slideshow/database/entity/PanelItem;->getX()F

    move-result v6

    invoke-virtual {v3}, Lsk/mimac/slideshow/database/entity/PanelItem;->getY()F

    move-result v7

    invoke-virtual {v3}, Lsk/mimac/slideshow/database/entity/PanelItem;->getWidth()F

    move-result v8

    invoke-virtual {v3}, Lsk/mimac/slideshow/database/entity/PanelItem;->getHeight()F

    move-result v3

    invoke-direct {v5, v6, v7, v8, v3}, Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;-><init>(FFFF)V

    invoke-virtual {p1, v4, v5}, Lsk/mimac/slideshow/gui/PercentageLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_2
    invoke-direct {p0}, Lsk/mimac/slideshow/gui/GuiCreator;->checkRotateLayout()V

    sget-boolean v0, Lsk/mimac/slideshow/BuildInfo;->IS_BETA:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lsk/mimac/slideshow/gui/GuiCreator;->addBetaSign(Lsk/mimac/slideshow/gui/PercentageLayout;)V

    :cond_3
    invoke-static {}, Lsk/mimac/slideshow/utils/LicenseKeyUtils;->isStoredLicenceKeyValid()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lsk/mimac/slideshow/gui/GuiCreator;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Not licensed, displaying \'Free trial\' sign"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lsk/mimac/slideshow/gui/GuiCreator;->addTrialSign(Lsk/mimac/slideshow/gui/PercentageLayout;)V

    :cond_4
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lk1/a;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1}, Lk1/a;-><init>(Ljava/util/List;I)V

    const-wide/16 v3, 0x1

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p1, p0, Lsk/mimac/slideshow/gui/GuiCreator;->panels:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lsk/mimac/slideshow/layout/CurrentScreenLayoutResolver;->processScreenPower()V

    return-void
.end method

.method public getAllDisplayItemThreads()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/utils/Couple<",
            "Lsk/mimac/slideshow/database/entity/PanelItem;",
            "Lsk/mimac/slideshow/gui/ItemThread;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lsk/mimac/slideshow/gui/GuiCreator;->panels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsk/mimac/slideshow/utils/Couple;

    new-instance v3, Lsk/mimac/slideshow/utils/Couple;

    invoke-virtual {v2}, Lsk/mimac/slideshow/utils/Couple;->getSecond()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsk/mimac/slideshow/database/entity/PanelItem;

    invoke-virtual {v2}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsk/mimac/slideshow/gui/PlaylistPanel;

    invoke-virtual {v2}, Lsk/mimac/slideshow/gui/PlaylistPanel;->getItemThread()Lsk/mimac/slideshow/gui/DisplayItemThread;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lsk/mimac/slideshow/utils/Couple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getLayoutByDisplayId(Ljava/lang/Integer;)Lsk/mimac/slideshow/gui/PercentageLayout;
    .locals 4

    iget-object v0, p0, Lsk/mimac/slideshow/gui/GuiCreator;->layouts:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsk/mimac/slideshow/gui/PercentageLayout;

    if-nez p1, :cond_1

    invoke-virtual {v1}, Lsk/mimac/slideshow/gui/PercentageLayout;->isMainDisplay()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1}, Lsk/mimac/slideshow/gui/PercentageLayout;->getDisplayIdInt()I

    move-result v3

    if-ne v2, v3, :cond_0

    :cond_2
    return-object v1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLayoutCount()I
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/GuiCreator;->layouts:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public getMainPlaylistPanel()Lsk/mimac/slideshow/gui/PlaylistPanel;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/GuiCreator;->mainPlaylistPanel:Lsk/mimac/slideshow/gui/PlaylistPanel;

    return-object v0
.end method

.method public getPanels()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lsk/mimac/slideshow/gui/GuiCreator;->panels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsk/mimac/slideshow/utils/Couple;

    invoke-virtual {v2}, Lsk/mimac/slideshow/utils/Couple;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsk/mimac/slideshow/database/entity/PanelItem;

    invoke-virtual {v3}, Lsk/mimac/slideshow/database/entity/PanelItem;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lsk/mimac/slideshow/utils/Couple;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsk/mimac/slideshow/database/entity/PanelItem;

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/PanelItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getPlaylistPanelById(I)Lsk/mimac/slideshow/gui/PlaylistPanel;
    .locals 4

    iget-object v0, p0, Lsk/mimac/slideshow/gui/GuiCreator;->panels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsk/mimac/slideshow/utils/Couple;

    invoke-virtual {v1}, Lsk/mimac/slideshow/utils/Couple;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsk/mimac/slideshow/database/entity/PanelItem;

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/PanelItem;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsk/mimac/slideshow/gui/PlaylistPanel;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPlaylistPanelByName(Ljava/lang/String;)Lsk/mimac/slideshow/gui/PlaylistPanel;
    .locals 3

    iget-object v0, p0, Lsk/mimac/slideshow/gui/GuiCreator;->panels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsk/mimac/slideshow/utils/Couple;

    invoke-virtual {v1}, Lsk/mimac/slideshow/utils/Couple;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsk/mimac/slideshow/database/entity/PanelItem;

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/PanelItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsk/mimac/slideshow/gui/PlaylistPanel;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getResolution()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lsk/mimac/slideshow/utils/Couple<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lsk/mimac/slideshow/gui/GuiCreator;->layouts:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsk/mimac/slideshow/gui/PercentageLayout;

    invoke-virtual {v2}, Lsk/mimac/slideshow/gui/PercentageLayout;->getDisplayId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lsk/mimac/slideshow/utils/Couple;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v4, v5, v2}, Lsk/mimac/slideshow/utils/Couple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public isFullscreen()Z
    .locals 1

    iget-boolean v0, p0, Lsk/mimac/slideshow/gui/GuiCreator;->fullscreen:Z

    return v0
.end method

.method public mute()V
    .locals 2

    new-instance v0, Lk1/b;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lk1/b;-><init>(Lsk/mimac/slideshow/gui/GuiCreator;I)V

    invoke-static {v0}, Lsk/mimac/slideshow/ContextHolder;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public declared-synchronized reload()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lsk/mimac/slideshow/gui/GuiCreator;->panels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsk/mimac/slideshow/utils/Couple;

    invoke-virtual {v1}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsk/mimac/slideshow/gui/PlaylistPanel;

    invoke-virtual {v1}, Lsk/mimac/slideshow/gui/PlaylistPanel;->stop()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_0
    iget-object v0, p0, Lsk/mimac/slideshow/gui/GuiCreator;->panels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsk/mimac/slideshow/utils/Couple;

    invoke-virtual {v1}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsk/mimac/slideshow/gui/PlaylistPanel;

    invoke-virtual {v1}, Lsk/mimac/slideshow/gui/PlaylistPanel;->join()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lsk/mimac/slideshow/gui/GuiCreator;->layouts:Ljava/util/Set;

    new-instance v1, Lh1/e;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lh1/e;-><init>(I)V

    invoke-static {v0, v1}, Lj$/lang/Iterable$-EL;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/GuiCreator;->panels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/GuiCreator;->layouts:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsk/mimac/slideshow/gui/PercentageLayout;

    invoke-virtual {p0, v1}, Lsk/mimac/slideshow/gui/GuiCreator;->createGui(Lsk/mimac/slideshow/gui/PercentageLayout;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lsk/mimac/slideshow/gui/GuiCreator;->fullscreen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_2
    monitor-exit p0

    return-void

    :goto_3
    monitor-exit p0

    throw v0
.end method

.method public rotateScreenLayout()V
    .locals 3

    iget v0, p0, Lsk/mimac/slideshow/gui/GuiCreator;->screenLayoutRotation:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lsk/mimac/slideshow/gui/GuiCreator;->screenLayoutRotation:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    iput v1, p0, Lsk/mimac/slideshow/gui/GuiCreator;->screenLayoutRotation:I

    :cond_0
    iget v0, p0, Lsk/mimac/slideshow/gui/GuiCreator;->screenLayoutRotation:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0, v1, v2}, Lsk/mimac/slideshow/gui/GuiCreator;->changeLayout(ZZ)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2, v1}, Lsk/mimac/slideshow/gui/GuiCreator;->changeLayout(ZZ)V

    :goto_0
    return-void
.end method

.method public setFullscreen(Z)V
    .locals 6

    iget-boolean v0, p0, Lsk/mimac/slideshow/gui/GuiCreator;->fullscreen:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lsk/mimac/slideshow/gui/GuiCreator;->LOG:Lorg/slf4j/Logger;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "Setting fullscreen to {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean p1, p0, Lsk/mimac/slideshow/gui/GuiCreator;->fullscreen:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lsk/mimac/slideshow/gui/GuiCreator;->mainPlaylistPanel:Lsk/mimac/slideshow/gui/PlaylistPanel;

    invoke-virtual {p1}, Lsk/mimac/slideshow/gui/PlaylistPanel;->getDisplayId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/GuiCreator;->panels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsk/mimac/slideshow/utils/Couple;

    invoke-virtual {v1}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsk/mimac/slideshow/gui/PlaylistPanel;

    invoke-virtual {v3}, Lsk/mimac/slideshow/gui/PlaylistPanel;->isMainPanel()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsk/mimac/slideshow/gui/PlaylistPanel;

    invoke-virtual {v3}, Lsk/mimac/slideshow/gui/PlaylistPanel;->getDisplayId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsk/mimac/slideshow/gui/PlaylistPanel;

    invoke-virtual {v3}, Lsk/mimac/slideshow/gui/PlaylistPanel;->getView()Lsk/mimac/slideshow/gui/RoundedRelativeLayout;

    move-result-object v3

    new-instance v4, Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;

    invoke-direct {v4, v2, v2, v2, v2}, Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;-><init>(FFFF)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsk/mimac/slideshow/gui/PlaylistPanel;

    invoke-virtual {v1}, Lsk/mimac/slideshow/gui/PlaylistPanel;->getItemThread()Lsk/mimac/slideshow/gui/DisplayItemThread;

    move-result-object v1

    invoke-virtual {v1}, Lsk/mimac/slideshow/gui/ItemThread;->interrupt()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lsk/mimac/slideshow/gui/GuiCreator;->mainPlaylistPanel:Lsk/mimac/slideshow/gui/PlaylistPanel;

    invoke-virtual {p1}, Lsk/mimac/slideshow/gui/PlaylistPanel;->getView()Lsk/mimac/slideshow/gui/RoundedRelativeLayout;

    move-result-object p1

    new-instance v0, Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-direct {v0, v2, v2, v1, v1}, Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;-><init>(FFFF)V

    invoke-direct {p0, p1, v0}, Lsk/mimac/slideshow/gui/GuiCreator;->setLayoutParamsIfChanged(Landroid/view/View;Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lsk/mimac/slideshow/gui/GuiCreator;->panels:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsk/mimac/slideshow/utils/Couple;

    invoke-virtual {v0}, Lsk/mimac/slideshow/utils/Couple;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsk/mimac/slideshow/database/entity/PanelItem;

    invoke-virtual {v0}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsk/mimac/slideshow/gui/PlaylistPanel;

    invoke-virtual {v2}, Lsk/mimac/slideshow/gui/PlaylistPanel;->getView()Lsk/mimac/slideshow/gui/RoundedRelativeLayout;

    move-result-object v2

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/PanelItem;->getProperties()Ljava/util/Map;

    move-result-object v3

    invoke-direct {p0, v3}, Lsk/mimac/slideshow/gui/GuiCreator;->getCornerRadii(Ljava/util/Map;)[F

    move-result-object v3

    invoke-virtual {v2, v3}, Lsk/mimac/slideshow/gui/RoundedRelativeLayout;->setCornerRadii([F)V

    invoke-virtual {v0}, Lsk/mimac/slideshow/utils/Couple;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsk/mimac/slideshow/database/entity/PanelItem;

    invoke-direct {p0, v0, v2}, Lsk/mimac/slideshow/gui/GuiCreator;->refreshBackground(Lsk/mimac/slideshow/database/entity/PanelItem;Lsk/mimac/slideshow/gui/RoundedRelativeLayout;)V

    new-instance v0, Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/PanelItem;->getX()F

    move-result v3

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/PanelItem;->getY()F

    move-result v4

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/PanelItem;->getWidth()F

    move-result v5

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/entity/PanelItem;->getHeight()F

    move-result v1

    invoke-direct {v0, v3, v4, v5, v1}, Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;-><init>(FFFF)V

    invoke-direct {p0, v2, v0}, Lsk/mimac/slideshow/gui/GuiCreator;->setLayoutParamsIfChanged(Landroid/view/View;Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;)V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lsk/mimac/slideshow/gui/GuiCreator;->checkRotateLayout()V

    :goto_2
    return-void
.end method

.method public showScreenCheck(Ljava/lang/String;)V
    .locals 8

    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getMainItemThread()Lsk/mimac/slideshow/gui/DisplayItemThread;

    move-result-object v6

    invoke-static {}, Lsk/mimac/slideshow/utils/DisplayUtils;->getAllDisplays()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, LT0/b;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, LT0/b;-><init>(I)V

    invoke-static {}, Lj$/util/function/Function$-CC;->identity()Ljava/util/function/Function;

    move-result-object v2

    invoke-static {v1, v2}, Lj$/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Lj$/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/Map;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Lk1/c;

    move-object v0, v7

    move-object v1, p0

    move-object v3, p1

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lk1/c;-><init>(Lsk/mimac/slideshow/gui/GuiCreator;Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;Lsk/mimac/slideshow/gui/DisplayItemThread;)V

    invoke-virtual {v6, v7}, Lsk/mimac/slideshow/gui/ItemThread;->addToRun(Lsk/mimac/slideshow/utils/InterruptableRunnable;)V

    return-void
.end method

.method public stop(Lsk/mimac/slideshow/gui/PercentageLayout;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lsk/mimac/slideshow/gui/GuiCreator;->panels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsk/mimac/slideshow/utils/Couple;

    invoke-virtual {v1}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsk/mimac/slideshow/gui/PlaylistPanel;

    invoke-virtual {v2}, Lsk/mimac/slideshow/gui/PlaylistPanel;->getDisplayId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsk/mimac/slideshow/gui/PlaylistPanel;

    invoke-virtual {v1}, Lsk/mimac/slideshow/gui/PlaylistPanel;->stop()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lsk/mimac/slideshow/gui/GuiCreator;->panels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsk/mimac/slideshow/utils/Couple;

    invoke-virtual {v1}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsk/mimac/slideshow/gui/PlaylistPanel;

    invoke-virtual {v2}, Lsk/mimac/slideshow/gui/PlaylistPanel;->getDisplayId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsk/mimac/slideshow/gui/PlaylistPanel;

    invoke-virtual {v1}, Lsk/mimac/slideshow/gui/PlaylistPanel;->join()V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/GuiCreator;->panels:Ljava/util/List;

    new-instance v1, Lh1/c;

    const/4 v2, 0x1

    invoke-direct {v1, p2, v2}, Lh1/c;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0, v1}, Lj$/util/Collection$-EL;->removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    iget-object p2, p0, Lsk/mimac/slideshow/gui/GuiCreator;->layouts:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unMute()V
    .locals 2

    new-instance v0, Lk1/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lk1/b;-><init>(Lsk/mimac/slideshow/gui/GuiCreator;I)V

    invoke-static {v0}, Lsk/mimac/slideshow/ContextHolder;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
