.class public abstract Lsk/mimac/slideshow/ScreenControlHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/ScreenControlHelper;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/ScreenControlHelper;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public static synthetic a(Lsk/mimac/slideshow/utils/SuffixEditText;Lsk/mimac/slideshow/playlist/PlaylistWrapper;ILandroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lsk/mimac/slideshow/ScreenControlHelper;->lambda$showChangeDuration$2(Lsk/mimac/slideshow/utils/SuffixEditText;Lsk/mimac/slideshow/playlist/PlaylistWrapper;ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic b(Ljava/util/List;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lsk/mimac/slideshow/ScreenControlHelper;->lambda$showChangePlaylist$1(Ljava/util/List;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic c(Ljava/util/List;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lsk/mimac/slideshow/ScreenControlHelper;->lambda$showChangeLayout$0(Ljava/util/List;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private static getAllLayouts()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/database/entity/ScreenLayout;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;->getInstance()Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/database/dao/ScreenLayoutDao;->getAll()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lsk/mimac/slideshow/ScreenControlHelper;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Can\'t get playlists from database"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static getAllPlaylists()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/database/entity/Playlist;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lsk/mimac/slideshow/database/dao/PlaylistDao;->getInstance()Lsk/mimac/slideshow/database/dao/PlaylistDao;

    move-result-object v0

    sget-object v1, Lsk/mimac/slideshow/enums/MusicType;->NONE:Lsk/mimac/slideshow/enums/MusicType;

    invoke-virtual {v1}, Lsk/mimac/slideshow/enums/MusicType;->getId()I

    move-result v1

    sget-object v2, Lsk/mimac/slideshow/enums/MusicType;->VIDEO:Lsk/mimac/slideshow/enums/MusicType;

    invoke-virtual {v2}, Lsk/mimac/slideshow/enums/MusicType;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lsk/mimac/slideshow/database/dao/PlaylistDao;->getAllWithMusicTypes(II)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lsk/mimac/slideshow/ScreenControlHelper;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Can\'t get playlists from database"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$showChangeDuration$2(Lsk/mimac/slideshow/utils/SuffixEditText;Lsk/mimac/slideshow/playlist/PlaylistWrapper;ILandroid/content/DialogInterface;I)V
    .locals 0

    const/4 p3, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {}, Lsk/mimac/slideshow/database/dao/ContentDao;->getInstance()Lsk/mimac/slideshow/database/dao/ContentDao;

    move-result-object p4

    invoke-interface {p1}, Lsk/mimac/slideshow/playlist/PlaylistWrapper;->getId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p4, p1, p2, p0}, Lsk/mimac/slideshow/database/dao/ContentDao;->updateLength(Ljava/lang/Long;II)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "change_content_length"

    invoke-static {p2}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "s"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    invoke-static {p1, p0, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lsk/mimac/slideshow/ScreenControlHelper;->LOG:Lorg/slf4j/Logger;

    const-string p2, "Can\'t change content length"

    invoke-interface {p1, p2, p0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p0, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    const-string p1, "change_content_length_error"

    .line 1
    invoke-static {p0, p3, p1}, Lch/qos/logback/core/joran/util/a;->v(Landroid/content/Context;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$showChangeLayout$0(Ljava/util/List;Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p2, v0, :cond_0

    invoke-static {}, Lsk/mimac/slideshow/layout/CurrentScreenLayoutResolver;->clearSetScreenLayout()V

    goto :goto_0

    :cond_0
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lsk/mimac/slideshow/database/entity/ScreenLayout;

    invoke-virtual {p0}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->getId()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lsk/mimac/slideshow/layout/CurrentScreenLayoutResolver;->setScreenLayout(I)V

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private static synthetic lambda$showChangePlaylist$1(Ljava/util/List;Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p2, v0, :cond_0

    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getMainItemThread()Lsk/mimac/slideshow/gui/DisplayItemThread;

    move-result-object p0

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/ItemThread;->getCurrentPlaylistResolver()Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;

    move-result-object p0

    invoke-virtual {p0}, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->clearSetPlaylist()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getMainItemThread()Lsk/mimac/slideshow/gui/DisplayItemThread;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/ItemThread;->getCurrentPlaylistResolver()Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;

    move-result-object v0

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lsk/mimac/slideshow/database/entity/Playlist;

    invoke-virtual {p0}, Lsk/mimac/slideshow/database/entity/Playlist;->getId()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->setPlaylist(Ljava/lang/Long;)V

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public static showChangeDuration()V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getMainItemThread()Lsk/mimac/slideshow/gui/DisplayItemThread;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    invoke-virtual {v2}, Lsk/mimac/slideshow/gui/ItemThread;->getCurrentPlaylistResolver()Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->getCurrentPlaylist()Lsk/mimac/slideshow/playlist/PlaylistWrapper;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    instance-of v3, v2, Lsk/mimac/slideshow/playlist/EntityPlaylistWrapper;

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    move-object v3, v2

    .line 20
    check-cast v3, Lsk/mimac/slideshow/playlist/EntityPlaylistWrapper;

    .line 21
    .line 22
    :try_start_0
    invoke-virtual {v3}, Lsk/mimac/slideshow/playlist/EntityPlaylistWrapper;->getPosition()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    invoke-static {}, Lsk/mimac/slideshow/database/dao/ContentDao;->getInstance()Lsk/mimac/slideshow/database/dao/ContentDao;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    invoke-virtual {v3}, Lsk/mimac/slideshow/playlist/EntityPlaylistWrapper;->getId()Ljava/lang/Long;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v5, v3, v4}, Lsk/mimac/slideshow/database/dao/ContentDao;->getItem(Ljava/lang/Long;I)Lsk/mimac/slideshow/utils/Couple;

    .line 35
    .line 36
    .line 37
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    new-instance v5, Landroid/app/AlertDialog$Builder;

    .line 39
    .line 40
    sget-object v6, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    .line 41
    .line 42
    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 43
    .line 44
    .line 45
    new-instance v6, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v7, "change_current_content_duration"

    .line 51
    .line 52
    invoke-static {v7}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v7, ": "

    .line 60
    .line 61
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    check-cast v7, Lsk/mimac/slideshow/database/entity/Item;

    .line 69
    .line 70
    invoke-virtual {v7}, Lsk/mimac/slideshow/database/entity/Item;->getLabel()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 82
    .line 83
    .line 84
    new-instance v6, Lsk/mimac/slideshow/utils/SuffixEditText;

    .line 85
    .line 86
    sget-object v7, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    .line 87
    .line 88
    invoke-direct {v6, v7}, Lsk/mimac/slideshow/utils/SuffixEditText;-><init>(Landroid/content/Context;)V

    .line 89
    .line 90
    .line 91
    const/4 v7, 0x2

    .line 92
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setInputType(I)V

    .line 93
    .line 94
    .line 95
    const/4 v7, 0x3

    .line 96
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setRawInputType(I)V

    .line 97
    .line 98
    .line 99
    new-instance v7, Landroid/text/InputFilter$LengthFilter;

    .line 100
    .line 101
    const/4 v8, 0x5

    .line 102
    invoke-direct {v7, v8}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 103
    .line 104
    .line 105
    new-array v1, v1, [Landroid/text/InputFilter;

    .line 106
    .line 107
    aput-object v7, v1, v0

    .line 108
    .line 109
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v3}, Lsk/mimac/slideshow/utils/Couple;->getSecond()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    check-cast v0, Ljava/lang/Integer;

    .line 117
    .line 118
    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    .line 124
    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    const-string v1, " "

    .line 128
    .line 129
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    const-string v1, "seconds"

    .line 133
    .line 134
    invoke-static {v1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-virtual {v6, v0}, Lsk/mimac/slideshow/utils/SuffixEditText;->setSuffix(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 149
    .line 150
    .line 151
    const-string v0, "save"

    .line 152
    .line 153
    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    new-instance v1, Le1/e;

    .line 158
    .line 159
    check-cast v2, Lsk/mimac/slideshow/playlist/EntityPlaylistWrapper;

    .line 160
    .line 161
    invoke-direct {v1, v6, v2, v4}, Le1/e;-><init>(Lsk/mimac/slideshow/utils/SuffixEditText;Lsk/mimac/slideshow/playlist/EntityPlaylistWrapper;I)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 172
    .line 173
    .line 174
    return-void

    .line 175
    :catch_0
    move-exception v1

    .line 176
    sget-object v2, Lsk/mimac/slideshow/ScreenControlHelper;->LOG:Lorg/slf4j/Logger;

    .line 177
    .line 178
    const-string v3, "Can\'t change content length"

    .line 179
    .line 180
    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 181
    .line 182
    .line 183
    sget-object v1, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    .line 184
    .line 185
    const-string v2, "change_content_length_error"

    .line 186
    .line 187
    invoke-static {v1, v0, v2}, Lch/qos/logback/core/joran/util/a;->v(Landroid/content/Context;ILjava/lang/String;)V

    .line 188
    .line 189
    .line 190
    return-void

    .line 191
    :cond_0
    sget-object v0, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    .line 192
    .line 193
    const-string v2, "change_content_duration_wrong_playlist"

    .line 194
    .line 195
    invoke-static {v0, v1, v2}, Lch/qos/logback/core/joran/util/a;->v(Landroid/content/Context;ILjava/lang/String;)V

    .line 196
    .line 197
    .line 198
    return-void
.end method

.method public static showChangeLayout()V
    .locals 8

    invoke-static {}, Lsk/mimac/slideshow/ScreenControlHelper;->getAllLayouts()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lsk/mimac/slideshow/layout/CurrentScreenLayoutResolver;->getCurrentLayoutDirect()Lsk/mimac/slideshow/layout/ScreenLayoutWrapper;

    move-result-object v1

    invoke-static {}, Lsk/mimac/slideshow/layout/CurrentScreenLayoutResolver;->isSetScreenLayout()Z

    move-result v2

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lsk/mimac/slideshow/layout/ScreenLayoutWrapper;->getId()Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v2, :cond_1

    add-int/lit8 v3, v3, 0x1

    :cond_1
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_3

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lsk/mimac/slideshow/database/entity/ScreenLayout;

    invoke-virtual {v6}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    invoke-virtual {v6}, Lsk/mimac/slideshow/database/entity/ScreenLayout;->getId()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v5, v4

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "set_original_screen_layout"

    invoke-static {v2}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    :cond_4
    new-instance v1, Landroid/app/AlertDialog$Builder;

    sget-object v2, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "change_screen_layout"

    invoke-static {v2}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Le1/f;

    const/4 v4, 0x0

    invoke-direct {v2, v0, v4}, Le1/f;-><init>(Ljava/util/List;I)V

    invoke-virtual {v1, v3, v5, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static showChangePlaylist()V
    .locals 10

    invoke-static {}, Lsk/mimac/slideshow/ScreenControlHelper;->getAllPlaylists()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lsk/mimac/slideshow/gui/GuiCreator;->getInstance()Lsk/mimac/slideshow/gui/GuiCreator;

    move-result-object v1

    invoke-virtual {v1}, Lsk/mimac/slideshow/gui/GuiCreator;->getMainPlaylistPanel()Lsk/mimac/slideshow/gui/PlaylistPanel;

    move-result-object v1

    invoke-virtual {v1}, Lsk/mimac/slideshow/gui/PlaylistPanel;->getItemThread()Lsk/mimac/slideshow/gui/DisplayItemThread;

    move-result-object v1

    invoke-virtual {v1}, Lsk/mimac/slideshow/gui/ItemThread;->getCurrentPlaylistResolver()Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;

    move-result-object v1

    invoke-virtual {v1}, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->getCurrentPlaylist()Lsk/mimac/slideshow/playlist/PlaylistWrapper;

    move-result-object v2

    invoke-virtual {v1}, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->isSetPlaylist()Z

    move-result v1

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lsk/mimac/slideshow/playlist/PlaylistWrapper;->getId()Ljava/lang/Long;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v1, :cond_1

    add-int/lit8 v3, v3, 0x1

    :cond_1
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lsk/mimac/slideshow/database/entity/Playlist;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lsk/mimac/slideshow/database/entity/Playlist;->getNumber()Ljava/lang/Integer;

    move-result-object v8

    if-eqz v8, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "("

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lsk/mimac/slideshow/database/entity/Playlist;->getNumber()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ".) "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_2
    const-string v8, ""

    :goto_2
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lsk/mimac/slideshow/database/entity/Playlist;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "playlist_action_"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lsk/mimac/slideshow/database/entity/Playlist;->getAction()Lsk/mimac/slideshow/enums/PlaylistAction;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    invoke-virtual {v6}, Lsk/mimac/slideshow/database/entity/Playlist;->getId()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v5, v4

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "set_original_playlist"

    invoke-static {v2}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    :cond_5
    new-instance v1, Landroid/app/AlertDialog$Builder;

    sget-object v2, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "change_playlist_info"

    invoke-static {v2}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Le1/f;

    const/4 v4, 0x1

    invoke-direct {v2, v0, v4}, Le1/f;-><init>(Ljava/util/List;I)V

    invoke-virtual {v1, v3, v5, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
