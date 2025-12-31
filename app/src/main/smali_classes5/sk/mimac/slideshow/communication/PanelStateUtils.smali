.class public abstract Lsk/mimac/slideshow/communication/PanelStateUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static deserializeCurrentPanels(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/communication/DeviceInfo$PanelInfo;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/api/client/util/Base64;->decodeBase64(Ljava/lang/String;)[B

    move-result-object p0

    const/4 v0, 0x0

    aget-byte v1, p0, v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    :goto_0
    if-ge v4, v1, :cond_1

    add-int/lit8 v5, v5, 0x4

    new-instance v6, Lsk/mimac/slideshow/communication/DeviceInfo$PanelInfo;

    invoke-direct {v6}, Lsk/mimac/slideshow/communication/DeviceInfo$PanelInfo;-><init>()V

    invoke-static {p0, v5}, Lsk/mimac/slideshow/communication/utils/PayloadSerializationUtils;->deserializeString([BI)Lsk/mimac/slideshow/communication/utils/DeserializeData;

    move-result-object v5

    invoke-virtual {v5}, Lsk/mimac/slideshow/communication/utils/DeserializeData;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Lsk/mimac/slideshow/communication/DeviceInfo$PanelInfo;->setPanelName(Ljava/lang/String;)V

    invoke-virtual {v5}, Lsk/mimac/slideshow/communication/utils/DeserializeData;->getOffset()I

    move-result v5

    aget-byte v7, p0, v5

    if-ne v7, v3, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v6, v7}, Lsk/mimac/slideshow/communication/DeviceInfo$PanelInfo;->setMainPanel(Z)V

    add-int/lit8 v5, v5, 0x1

    invoke-static {p0, v5}, Lsk/mimac/slideshow/communication/utils/PayloadSerializationUtils;->deserializeString([BI)Lsk/mimac/slideshow/communication/utils/DeserializeData;

    move-result-object v5

    invoke-virtual {v5}, Lsk/mimac/slideshow/communication/utils/DeserializeData;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Lsk/mimac/slideshow/communication/DeviceInfo$PanelInfo;->setPlaylistName(Ljava/lang/String;)V

    invoke-virtual {v5}, Lsk/mimac/slideshow/communication/utils/DeserializeData;->getOffset()I

    move-result v5

    invoke-static {p0, v5}, Lsk/mimac/slideshow/communication/utils/PayloadSerializationUtils;->deserializeString([BI)Lsk/mimac/slideshow/communication/utils/DeserializeData;

    move-result-object v5

    invoke-virtual {v5}, Lsk/mimac/slideshow/communication/utils/DeserializeData;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Lsk/mimac/slideshow/communication/DeviceInfo$PanelInfo;->setPlaylistSyncCode(Ljava/lang/String;)V

    invoke-virtual {v5}, Lsk/mimac/slideshow/communication/utils/DeserializeData;->getOffset()I

    move-result v5

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v2
.end method

.method public static getLocalCurrentPanels()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/communication/DeviceInfo$PanelInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getAllItemThreads()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsk/mimac/slideshow/utils/Couple;

    new-instance v3, Lsk/mimac/slideshow/communication/DeviceInfo$PanelInfo;

    invoke-direct {v3}, Lsk/mimac/slideshow/communication/DeviceInfo$PanelInfo;-><init>()V

    invoke-virtual {v2}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsk/mimac/slideshow/database/entity/PanelItem;

    invoke-virtual {v4}, Lsk/mimac/slideshow/database/entity/PanelItem;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_0
    const-string v4, "Background audio"

    :goto_1
    invoke-virtual {v3, v4}, Lsk/mimac/slideshow/communication/DeviceInfo$PanelInfo;->setPanelName(Ljava/lang/String;)V

    invoke-virtual {v2}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsk/mimac/slideshow/database/entity/PanelItem;

    invoke-virtual {v4}, Lsk/mimac/slideshow/database/entity/PanelItem;->isMainPanel()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v3, v4}, Lsk/mimac/slideshow/communication/DeviceInfo$PanelInfo;->setMainPanel(Z)V

    invoke-virtual {v2}, Lsk/mimac/slideshow/utils/Couple;->getSecond()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsk/mimac/slideshow/gui/ItemThread;

    invoke-virtual {v4}, Lsk/mimac/slideshow/gui/ItemThread;->getCurrentPlaylistResolver()Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;

    move-result-object v4

    invoke-virtual {v4}, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->getCurrentPlaylist()Lsk/mimac/slideshow/playlist/PlaylistWrapper;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v4}, Lsk/mimac/slideshow/playlist/PlaylistWrapper;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_2
    const-string v4, ""

    :goto_3
    invoke-virtual {v3, v4}, Lsk/mimac/slideshow/communication/DeviceInfo$PanelInfo;->setPlaylistName(Ljava/lang/String;)V

    invoke-virtual {v2}, Lsk/mimac/slideshow/utils/Couple;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsk/mimac/slideshow/gui/ItemThread;

    invoke-virtual {v2}, Lsk/mimac/slideshow/gui/ItemThread;->getPlaylistSyncCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lsk/mimac/slideshow/communication/DeviceInfo$PanelInfo;->setPlaylistSyncCode(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v1
.end method

.method public static serializeCurrentPanels()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getAllItemThreads()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsk/mimac/slideshow/utils/Couple;

    invoke-virtual {v2}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsk/mimac/slideshow/database/entity/PanelItem;

    invoke-virtual {v3}, Lsk/mimac/slideshow/database/entity/PanelItem;->getId()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsk/mimac/slideshow/database/entity/PanelItem;

    invoke-virtual {v3}, Lsk/mimac/slideshow/database/entity/PanelItem;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_1

    :cond_0
    const/4 v3, -0x1

    :goto_1
    invoke-static {v3}, Lsk/mimac/slideshow/communication/utils/PayloadSerializationUtils;->serializeInt(I)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v2}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsk/mimac/slideshow/database/entity/PanelItem;

    invoke-virtual {v3}, Lsk/mimac/slideshow/database/entity/PanelItem;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_1
    const-string v3, "Background audio"

    :goto_2
    invoke-static {v3, v1}, Lsk/mimac/slideshow/communication/utils/PayloadSerializationUtils;->serializeString(Ljava/lang/String;Ljava/io/OutputStream;)V

    invoke-virtual {v2}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsk/mimac/slideshow/database/entity/PanelItem;

    invoke-virtual {v3}, Lsk/mimac/slideshow/database/entity/PanelItem;->isMainPanel()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_3

    :cond_2
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v2}, Lsk/mimac/slideshow/utils/Couple;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsk/mimac/slideshow/gui/ItemThread;

    invoke-virtual {v3}, Lsk/mimac/slideshow/gui/ItemThread;->getCurrentPlaylistResolver()Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;

    move-result-object v3

    invoke-virtual {v3}, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->getCurrentPlaylist()Lsk/mimac/slideshow/playlist/PlaylistWrapper;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v3}, Lsk/mimac/slideshow/playlist/PlaylistWrapper;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_3
    const-string v3, ""

    :goto_4
    invoke-static {v3, v1}, Lsk/mimac/slideshow/communication/utils/PayloadSerializationUtils;->serializeString(Ljava/lang/String;Ljava/io/OutputStream;)V

    invoke-virtual {v2}, Lsk/mimac/slideshow/utils/Couple;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsk/mimac/slideshow/gui/ItemThread;

    invoke-virtual {v2}, Lsk/mimac/slideshow/gui/ItemThread;->getPlaylistSyncCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lsk/mimac/slideshow/communication/utils/PayloadSerializationUtils;->serializeString(Ljava/lang/String;Ljava/io/OutputStream;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/client/util/Base64;->encodeBase64String([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
