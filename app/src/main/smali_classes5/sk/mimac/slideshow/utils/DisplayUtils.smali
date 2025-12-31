.class public abstract Lsk/mimac/slideshow/utils/DisplayUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static convertSupportedHdrTypes([I)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    aget v3, p0, v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    const-string v3, "HDR10+"

    goto :goto_1

    :cond_1
    const-string v3, "HLG"

    goto :goto_1

    :cond_2
    const-string v3, "HDR10"

    goto :goto_1

    :cond_3
    const-string v3, "Dolby Vision"

    goto :goto_1

    :cond_4
    const-string v3, "Invalid HDR"

    goto :goto_1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "No HDR"

    return-object p0

    :cond_6
    const-string p0, ", "

    invoke-static {v0, p0}, Lorg/apache/commons/lang3/StringUtils;->join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAllDisplays()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/utils/DisplayInfoDto;",
            ">;"
        }
    .end annotation

    sget-object v0, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-static {}, Lsk/mimac/slideshow/gui/GuiCreator;->getInstance()Lsk/mimac/slideshow/gui/GuiCreator;

    move-result-object v1

    invoke-virtual {v1}, Lsk/mimac/slideshow/gui/GuiCreator;->getResolution()Ljava/util/Map;

    move-result-object v1

    invoke-static {}, Lsk/mimac/slideshow/utils/DisplayUtils;->getDumpsysOutput()[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    array-length v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_7

    aget-object v7, v0, v6

    new-instance v8, Landroid/util/DisplayMetrics;

    invoke-direct {v8}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v7, v8}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    new-instance v9, Lsk/mimac/slideshow/utils/DisplayInfoDto;

    invoke-direct {v9}, Lsk/mimac/slideshow/utils/DisplayInfoDto;-><init>()V

    invoke-virtual {v7}, Landroid/view/Display;->getDisplayId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lsk/mimac/slideshow/utils/DisplayInfoDto;->setDisplayId(Ljava/lang/String;)V

    array-length v10, v2

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_1

    aget-object v12, v2, v11

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "displayId "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/view/Display;->getDisplayId()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "\""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_0

    const-string v10, ", uniqueId \""

    invoke-virtual {v12, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v10, v10, 0xc

    invoke-virtual {v12, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x22

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    invoke-virtual {v10, v5, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x3a

    const/16 v12, 0x2d

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/apache/commons/lang3/StringUtils;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lsk/mimac/slideshow/utils/DisplayInfoDto;->setUniqueId(Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-virtual {v7}, Landroid/view/Display;->getDisplayId()I

    move-result v10

    const/4 v11, 0x1

    if-nez v10, :cond_2

    invoke-virtual {v9, v11}, Lsk/mimac/slideshow/utils/DisplayInfoDto;->setMain(Z)V

    :cond_2
    invoke-virtual {v7}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lsk/mimac/slideshow/utils/DisplayInfoDto;->setName(Ljava/lang/String;)V

    invoke-virtual {v9}, Lsk/mimac/slideshow/utils/DisplayInfoDto;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lsk/mimac/slideshow/utils/Couple;

    if-eqz v10, :cond_3

    invoke-virtual {v10}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v9, v12}, Lsk/mimac/slideshow/utils/DisplayInfoDto;->setWidth(I)V

    invoke-virtual {v10}, Lsk/mimac/slideshow/utils/Couple;->getSecond()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    :goto_3
    invoke-virtual {v9, v10}, Lsk/mimac/slideshow/utils/DisplayInfoDto;->setHeight(I)V

    goto :goto_4

    :cond_3
    iget v10, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v9, v10}, Lsk/mimac/slideshow/utils/DisplayInfoDto;->setWidth(I)V

    iget v10, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_3

    :goto_4
    iget v8, v8, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v9, v8}, Lsk/mimac/slideshow/utils/DisplayInfoDto;->setDpi(I)V

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x18

    if-lt v8, v10, :cond_4

    invoke-static {v7}, LA/c;->c(Landroid/view/Display;)Landroid/view/Display$HdrCapabilities;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-static {v7}, LA/c;->c(Landroid/view/Display;)Landroid/view/Display$HdrCapabilities;

    move-result-object v10

    invoke-static {v10}, LA/c;->w(Landroid/view/Display$HdrCapabilities;)[I

    move-result-object v10

    invoke-static {v10}, Lsk/mimac/slideshow/utils/DisplayUtils;->convertSupportedHdrTypes([I)Ljava/lang/String;

    move-result-object v10

    :goto_5
    invoke-virtual {v9, v10}, Lsk/mimac/slideshow/utils/DisplayInfoDto;->setSupportedHdrTypes(Ljava/lang/String;)V

    goto :goto_6

    :cond_4
    const-string v10, "No HDR"

    goto :goto_5

    :goto_6
    const/16 v10, 0x17

    if-lt v8, v10, :cond_5

    invoke-static {v7}, LA/a;->f(Landroid/view/Display;)Landroid/view/Display$Mode;

    move-result-object v8

    invoke-static {v8}, LA/a;->c(Landroid/view/Display$Mode;)I

    move-result v10

    invoke-virtual {v9, v10}, Lsk/mimac/slideshow/utils/DisplayInfoDto;->setPhysicalWidth(I)V

    invoke-static {v8}, Lr/a;->g(Landroid/view/Display$Mode;)I

    move-result v10

    invoke-virtual {v9, v10}, Lsk/mimac/slideshow/utils/DisplayInfoDto;->setPhysicalHeight(I)V

    invoke-static {v8}, Lr/a;->b(Landroid/view/Display$Mode;)F

    move-result v8

    invoke-virtual {v9, v8}, Lsk/mimac/slideshow/utils/DisplayInfoDto;->setRefreshRate(F)V

    :cond_5
    invoke-virtual {v7}, Landroid/view/Display;->getFlags()I

    move-result v7

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_6

    invoke-virtual {v9, v11}, Lsk/mimac/slideshow/utils/DisplayInfoDto;->setHdcpEnabled(Z)V

    :cond_6
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_7
    return-object v3
.end method

.method private static getDumpsysOutput()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "dumpsys display | grep mBaseDisplayInfo"

    invoke-static {v1}, Lsk/mimac/slideshow/utils/Shell;->processWithOutput(Ljava/lang/String;)Lsk/mimac/slideshow/utils/Shell$Response;

    move-result-object v1

    invoke-virtual {v1}, Lsk/mimac/slideshow/utils/Shell$Response;->getStdout()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    :catch_1
    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method
