.class public abstract Lsk/mimac/slideshow/userinput/ActionHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/userinput/ActionHelper;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/userinput/ActionHelper;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public static synthetic a(Ljava/io/File;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lsk/mimac/slideshow/userinput/ActionHelper;->lambda$deleteLastFile$1(Ljava/io/File;Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic b()V
    .locals 0

    .line 1
    invoke-static {}, Lsk/mimac/slideshow/userinput/ActionHelper;->lambda$showFullscreen$3()V

    return-void
.end method

.method public static synthetic c(Lsk/mimac/slideshow/gui/DisplayItemThread;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lsk/mimac/slideshow/userinput/ActionHelper;->lambda$showHelp$2(Lsk/mimac/slideshow/gui/DisplayItemThread;)V

    return-void
.end method

.method public static changeLength(I)V
    .locals 10

    .line 1
    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getMainItemThread()Lsk/mimac/slideshow/gui/DisplayItemThread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/ItemThread;->getCurrentPlaylistResolver()Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->getCurrentPlaylist()Lsk/mimac/slideshow/playlist/PlaylistWrapper;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    instance-of v1, v0, Lsk/mimac/slideshow/playlist/EntityPlaylistWrapper;

    .line 14
    .line 15
    const-string v2, "s"

    .line 16
    .line 17
    const-string v3, ": "

    .line 18
    .line 19
    const-string v4, "change_content_length"

    .line 20
    .line 21
    const/4 v5, 0x1

    .line 22
    const-string v6, "change_content_length_error"

    .line 23
    .line 24
    const/4 v7, 0x0

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    check-cast v0, Lsk/mimac/slideshow/playlist/EntityPlaylistWrapper;

    .line 28
    .line 29
    :try_start_0
    invoke-virtual {v0}, Lsk/mimac/slideshow/playlist/EntityPlaylistWrapper;->getPosition()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-static {}, Lsk/mimac/slideshow/database/dao/ContentDao;->getInstance()Lsk/mimac/slideshow/database/dao/ContentDao;

    .line 34
    .line 35
    .line 36
    move-result-object v8

    .line 37
    invoke-virtual {v0}, Lsk/mimac/slideshow/playlist/EntityPlaylistWrapper;->getId()Ljava/lang/Long;

    .line 38
    .line 39
    .line 40
    move-result-object v9

    .line 41
    invoke-virtual {v8, v9, v1}, Lsk/mimac/slideshow/database/dao/ContentDao;->getLength(Ljava/lang/Long;I)I

    .line 42
    .line 43
    .line 44
    move-result v8

    .line 45
    add-int/2addr v8, p0

    .line 46
    if-ge v8, v5, :cond_0

    .line 47
    .line 48
    sget-object p0, Lsk/mimac/slideshow/userinput/ActionHelper;->LOG:Lorg/slf4j/Logger;

    .line 49
    .line 50
    const-string v0, "Can\'t set playlist length to {}s"

    .line 51
    .line 52
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-interface {p0, v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    sget-object p0, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    .line 60
    .line 61
    invoke-static {v6}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    :goto_0
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 70
    .line 71
    .line 72
    goto/16 :goto_4

    .line 73
    .line 74
    :catch_0
    move-exception p0

    .line 75
    goto :goto_1

    .line 76
    :cond_0
    invoke-static {}, Lsk/mimac/slideshow/database/dao/ContentDao;->getInstance()Lsk/mimac/slideshow/database/dao/ContentDao;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-virtual {v0}, Lsk/mimac/slideshow/playlist/EntityPlaylistWrapper;->getId()Ljava/lang/Long;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {p0, v0, v1, v8}, Lsk/mimac/slideshow/database/dao/ContentDao;->updateLength(Ljava/lang/Long;II)V

    .line 85
    .line 86
    .line 87
    new-instance p0, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-static {v4}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    sget-object v0, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    .line 113
    .line 114
    invoke-static {v0, p0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 115
    .line 116
    .line 117
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    goto :goto_0

    .line 119
    :goto_1
    sget-object v0, Lsk/mimac/slideshow/userinput/ActionHelper;->LOG:Lorg/slf4j/Logger;

    .line 120
    .line 121
    const-string v1, "Can\'t change content length"

    .line 122
    .line 123
    invoke-interface {v0, v1, p0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 124
    .line 125
    .line 126
    sget-object p0, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_1
    instance-of v1, v0, Lsk/mimac/slideshow/playlist/InfiniteItemPlaylistWrapper;

    .line 130
    .line 131
    if-eqz v1, :cond_3

    .line 132
    .line 133
    check-cast v0, Lsk/mimac/slideshow/playlist/InfiniteItemPlaylistWrapper;

    .line 134
    .line 135
    invoke-virtual {v0}, Lsk/mimac/slideshow/playlist/InfiniteItemPlaylistWrapper;->getLength()I

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    add-int/2addr v1, p0

    .line 140
    if-ge v1, v5, :cond_2

    .line 141
    .line 142
    sget-object p0, Lsk/mimac/slideshow/userinput/ActionHelper;->LOG:Lorg/slf4j/Logger;

    .line 143
    .line 144
    const-string v0, "Can\'t set playlist length to less that 1"

    .line 145
    .line 146
    invoke-interface {p0, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_2
    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/playlist/InfiniteItemPlaylistWrapper;->setLength(I)V

    .line 151
    .line 152
    .line 153
    new-instance p0, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .line 157
    .line 158
    invoke-static {v4}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    sget-object v0, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    .line 179
    .line 180
    invoke-static {v0, p0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 185
    .line 186
    .line 187
    goto :goto_4

    .line 188
    :cond_3
    :goto_2
    sget-object p0, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    .line 189
    .line 190
    :goto_3
    invoke-static {p0, v7, v6}, Lch/qos/logback/core/joran/util/a;->v(Landroid/content/Context;ILjava/lang/String;)V

    .line 191
    .line 192
    .line 193
    :goto_4
    return-void
.end method

.method public static changePlaylistToNumber(I)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lsk/mimac/slideshow/database/dao/PlaylistDao;->getInstance()Lsk/mimac/slideshow/database/dao/PlaylistDao;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lsk/mimac/slideshow/database/dao/PlaylistDao;->getByNumber(I)Lsk/mimac/slideshow/database/entity/Playlist;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Lsk/mimac/slideshow/database/entity/Playlist;->getMusic()Lsk/mimac/slideshow/enums/MusicType;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget-object v1, Lsk/mimac/slideshow/enums/MusicType;->AUDIO:Lsk/mimac/slideshow/enums/MusicType;

    .line 16
    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getAudioItemThread()Lsk/mimac/slideshow/gui/AudioItemThread;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :goto_0
    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/ItemThread;->getCurrentPlaylistResolver()Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    goto :goto_1

    .line 28
    :catch_0
    move-exception p0

    .line 29
    goto :goto_2

    .line 30
    :cond_0
    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getMainItemThread()Lsk/mimac/slideshow/gui/DisplayItemThread;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    goto :goto_0

    .line 35
    :goto_1
    invoke-virtual {p0}, Lsk/mimac/slideshow/database/entity/Playlist;->getId()Ljava/lang/Long;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {v0, p0}, Lsk/mimac/slideshow/playlist/CurrentPlaylistResolver;->setPlaylist(Ljava/lang/Long;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    goto :goto_3

    .line 43
    :goto_2
    sget-object v0, Lsk/mimac/slideshow/userinput/ActionHelper;->LOG:Lorg/slf4j/Logger;

    .line 44
    .line 45
    const-string v1, "Can\'t change playlist"

    .line 46
    .line 47
    invoke-interface {v0, v1, p0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    .line 49
    .line 50
    sget-object p0, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    .line 51
    .line 52
    const-string v0, "database_error"

    .line 53
    .line 54
    const/4 v1, 0x0

    .line 55
    invoke-static {p0, v1, v0}, Lch/qos/logback/core/joran/util/a;->v(Landroid/content/Context;ILjava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    :goto_3
    return-void
.end method

.method public static synthetic d(Lsk/mimac/slideshow/gui/DisplayItemThread;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lsk/mimac/slideshow/userinput/ActionHelper;->lambda$showInfo$0(Lsk/mimac/slideshow/gui/DisplayItemThread;)V

    return-void
.end method

.method public static deleteLastFile()V
    .locals 5

    .line 1
    invoke-static {}, Lsk/mimac/slideshow/item/ItemCounter;->getLastItem()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v1, Ljava/io/File;

    .line 9
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    sget-object v3, Lsk/mimac/slideshow/FileConstants;->CONTENT_PATH:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v3, v0, v2}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v2, "Nothing"

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-nez v2, :cond_2

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-nez v2, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    .line 40
    .line 41
    sget-object v3, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    .line 42
    .line 43
    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 44
    .line 45
    .line 46
    const v3, 0x1080027

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    const-string v3, "delete_file"

    .line 54
    .line 55
    invoke-static {v3}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    new-instance v3, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string v4, "delete_file_confirm"

    .line 69
    .line 70
    invoke-static {v4}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v4, " "

    .line 78
    .line 79
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v4, "?"

    .line 86
    .line 87
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    const-string v3, "yes"

    .line 99
    .line 100
    invoke-static {v3}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    new-instance v4, Lt1/a;

    .line 105
    .line 106
    invoke-direct {v4, v1, v0}, Lt1/a;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    const-string v1, "no"

    .line 114
    .line 115
    invoke-static {v1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    const/4 v2, 0x0

    .line 120
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :cond_2
    :goto_0
    sget-object v0, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    .line 129
    .line 130
    const-string v1, "delete_file_unsuccess"

    .line 131
    .line 132
    const/4 v2, 0x0

    .line 133
    invoke-static {v0, v2, v1}, Lch/qos/logback/core/joran/util/a;->v(Landroid/content/Context;ILjava/lang/String;)V

    .line 134
    .line 135
    .line 136
    return-void
.end method

.method public static synthetic e()V
    .locals 0

    .line 1
    invoke-static {}, Lsk/mimac/slideshow/userinput/ActionHelper;->lambda$showFullscreen$4()V

    return-void
.end method

.method public static synthetic f(Lsk/mimac/slideshow/utils/InterruptableConsumer;Lsk/mimac/slideshow/gui/DisplayItemThread;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lsk/mimac/slideshow/userinput/ActionHelper;->lambda$showFullscreen$5(Lsk/mimac/slideshow/utils/InterruptableConsumer;Lsk/mimac/slideshow/gui/DisplayItemThread;)V

    return-void
.end method

.method private static synthetic lambda$deleteLastFile$1(Ljava/io/File;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    const-string p1, "delete_file_success"

    invoke-static {p1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getMainItemThread()Lsk/mimac/slideshow/gui/DisplayItemThread;

    move-result-object p0

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/ItemThread;->interrupt()V

    goto :goto_0

    :cond_0
    sget-object p0, Lsk/mimac/slideshow/userinput/ActionHelper;->LOG:Lorg/slf4j/Logger;

    const-string p2, "Can\'t delete file \'{}\'"

    invoke-interface {p0, p2, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    const-string p1, "delete_file_unsuccess"

    const/4 p2, 0x1

    .line 1
    invoke-static {p0, p2, p1}, Lch/qos/logback/core/joran/util/a;->v(Landroid/content/Context;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$showFullscreen$3()V
    .locals 2

    invoke-static {}, Lsk/mimac/slideshow/gui/GuiCreator;->getInstance()Lsk/mimac/slideshow/gui/GuiCreator;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/gui/GuiCreator;->setFullscreen(Z)V

    return-void
.end method

.method private static synthetic lambda$showFullscreen$4()V
    .locals 2

    invoke-static {}, Lsk/mimac/slideshow/gui/GuiCreator;->getInstance()Lsk/mimac/slideshow/gui/GuiCreator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/gui/GuiCreator;->setFullscreen(Z)V

    return-void
.end method

.method private static synthetic lambda$showFullscreen$5(Lsk/mimac/slideshow/utils/InterruptableConsumer;Lsk/mimac/slideshow/gui/DisplayItemThread;)V
    .locals 2

    new-instance v0, Le1/c;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Le1/c;-><init>(I)V

    invoke-static {v0}, Lsk/mimac/slideshow/ContextHolder;->runOnUiThread(Ljava/lang/Runnable;)V

    :try_start_0
    invoke-interface {p0, p1}, Lsk/mimac/slideshow/utils/InterruptableConsumer;->run(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p0, Le1/c;

    const/16 p1, 0x9

    invoke-direct {p0, p1}, Le1/c;-><init>(I)V

    invoke-static {p0}, Lsk/mimac/slideshow/ContextHolder;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p0

    new-instance p1, Le1/c;

    const/16 v0, 0x9

    invoke-direct {p1, v0}, Le1/c;-><init>(I)V

    invoke-static {p1}, Lsk/mimac/slideshow/ContextHolder;->runOnUiThread(Ljava/lang/Runnable;)V

    throw p0
.end method

.method private static synthetic lambda$showHelp$2(Lsk/mimac/slideshow/gui/DisplayItemThread;)V
    .locals 2

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/DisplayItemThread;->getShowHelper()Lsk/mimac/slideshow/gui/ShowHelper;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/ShowHelper;->showInstructionScreen()V

    const-string v0, "Help"

    invoke-static {v0}, Lsk/mimac/slideshow/item/ItemCounter;->addItem(Ljava/lang/String;)V

    const-wide/16 v0, 0x7530

    invoke-virtual {p0, v0, v1}, Lsk/mimac/slideshow/gui/ItemThread;->sleep(J)V

    return-void
.end method

.method private static synthetic lambda$showInfo$0(Lsk/mimac/slideshow/gui/DisplayItemThread;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "<html><head><style>*{font-size:2.9vmin} body{padding:1%; background-color: white} h2 {display: none;}</style></head><body><b>"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "version"

    .line 9
    .line 10
    const-string v2, ":</b> "

    .line 11
    .line 12
    invoke-static {v1, v2, v0}, Lch/qos/logback/core/joran/util/a;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 13
    .line 14
    .line 15
    sget-object v1, Lsk/mimac/slideshow/BuildInfo;->VERSION:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, "<br>"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    new-instance v1, Lsk/mimac/slideshow/http/page/AboutHardwarePage;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-direct {v1, v2}, Lsk/mimac/slideshow/http/page/AboutHardwarePage;-><init>(Z)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->getPage()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v1, "</body></html>"

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/DisplayItemThread;->getShowHelper()Lsk/mimac/slideshow/gui/ShowHelper;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    const/4 v6, 0x0

    .line 52
    const/4 v7, -0x1

    .line 53
    const/4 v4, 0x0

    .line 54
    const/4 v5, 0x0

    .line 55
    invoke-virtual/range {v2 .. v7}, Lsk/mimac/slideshow/gui/ShowHelper;->showHtml(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 56
    .line 57
    .line 58
    const-string v0, "Info"

    .line 59
    .line 60
    invoke-static {v0}, Lsk/mimac/slideshow/item/ItemCounter;->addItem(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const-wide/16 v0, 0x4e20

    .line 64
    .line 65
    invoke-virtual {p0, v0, v1}, Lsk/mimac/slideshow/gui/ItemThread;->sleep(J)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public static showFullscreen(Lsk/mimac/slideshow/utils/InterruptableConsumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsk/mimac/slideshow/utils/InterruptableConsumer<",
            "Lsk/mimac/slideshow/gui/DisplayItemThread;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getMainItemThread()Lsk/mimac/slideshow/gui/DisplayItemThread;

    move-result-object v0

    new-instance v1, Lt1/b;

    invoke-direct {v1, p0, v0}, Lt1/b;-><init>(Lsk/mimac/slideshow/utils/InterruptableConsumer;Lsk/mimac/slideshow/gui/DisplayItemThread;)V

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/gui/ItemThread;->addToRun(Lsk/mimac/slideshow/utils/InterruptableRunnable;)V

    return-void
.end method

.method public static showHelp()V
    .locals 2

    new-instance v0, Lk1/p;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lk1/p;-><init>(I)V

    invoke-static {v0}, Lsk/mimac/slideshow/userinput/ActionHelper;->showFullscreen(Lsk/mimac/slideshow/utils/InterruptableConsumer;)V

    return-void
.end method

.method public static showInfo()V
    .locals 2

    new-instance v0, Lk1/p;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lk1/p;-><init>(I)V

    invoke-static {v0}, Lsk/mimac/slideshow/userinput/ActionHelper;->showFullscreen(Lsk/mimac/slideshow/utils/InterruptableConsumer;)V

    return-void
.end method

.method public static showSettingsActivity()V
    .locals 4

    :try_start_0
    sget-object v0, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    const-class v3, Lsk/mimac/slideshow/settings/SettingsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lsk/mimac/slideshow/userinput/ActionHelper;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Can\'t show settings"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static showWebSettingsActivity()V
    .locals 4

    :try_start_0
    sget-object v0, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    const-class v3, Lsk/mimac/slideshow/settings/AdvancedSettingsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lsk/mimac/slideshow/userinput/ActionHelper;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Can\'t show settings"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static toggleFullscreen()V
    .locals 2

    invoke-static {}, Lsk/mimac/slideshow/gui/GuiCreator;->getInstance()Lsk/mimac/slideshow/gui/GuiCreator;

    move-result-object v0

    invoke-static {}, Lsk/mimac/slideshow/gui/GuiCreator;->getInstance()Lsk/mimac/slideshow/gui/GuiCreator;

    move-result-object v1

    invoke-virtual {v1}, Lsk/mimac/slideshow/gui/GuiCreator;->isFullscreen()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/gui/GuiCreator;->setFullscreen(Z)V

    return-void
.end method
