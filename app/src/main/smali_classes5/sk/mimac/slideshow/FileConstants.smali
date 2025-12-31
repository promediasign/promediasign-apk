.class public abstract Lsk/mimac/slideshow/FileConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALL_EXTENSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final APK_EXTENSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final ARCHIVE_EXTENSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final AUDIO_EXTENSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static CERTIFICATE_FILE:Ljava/lang/String;

.field public static CONTENT_PATH:Ljava/lang/String;

.field public static CRASH_LOGCAT:Ljava/lang/String;

.field public static CRASH_LOGCAT_2:Ljava/lang/String;

.field public static DATABASE_FILE:Ljava/lang/String;

.field public static DATABASE_FILE_BACKUP:Ljava/lang/String;

.field public static final EXCEL_EXTENSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static FONT_PATH:Ljava/lang/String;

.field public static HARDWARE_DRIVER_FILE:Ljava/lang/String;

.field public static final HTML_EXTENSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static IMAGES_PATH:Ljava/lang/String;

.field public static final IMAGE_EXTENSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static INTERNAL_PATH:Ljava/lang/String;

.field public static ITEM_COUNTER_FILE:Ljava/lang/String;

.field public static LAST_START_FILE:Ljava/lang/String;

.field public static final LINK_EXTENSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static LOG_FILE:Ljava/lang/String;

.field public static MAIN_PATH:Ljava/lang/String;

.field public static final PDF_EXENTENSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final RSS_EXTENSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static SETTINGS_PATH:Ljava/lang/String;

.field public static TEMP_PATH:Ljava/lang/String;

.field public static final TXT_EXTENSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final URL_EXTENSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final VIDEO_EXTENSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static WEB_PATH:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Ljava/util/HashSet;

    const-string v8, "heic"

    const-string v9, "heif"

    const-string v1, "jpg"

    const-string v2, "jpeg"

    const-string v3, "png"

    const-string v4, "bmp"

    const-string v5, "gif"

    const-string v6, "webp"

    const-string v7, "svg"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lsk/mimac/slideshow/FileConstants;->IMAGE_EXTENSIONS:Ljava/util/Set;

    new-instance v1, Ljava/util/HashSet;

    const-string v2, "pdf"

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v1, Lsk/mimac/slideshow/FileConstants;->PDF_EXENTENSIONS:Ljava/util/Set;

    new-instance v2, Ljava/util/HashSet;

    const-string v15, "m4v"

    const-string v16, "mov"

    const-string v3, "mpg"

    const-string v4, "mpeg"

    const-string v5, "avi"

    const-string v6, "mp4"

    const-string v7, "3gp"

    const-string v8, "mkv"

    const-string v9, "ts"

    const-string v10, "flv"

    const-string v11, "f4v"

    const-string v12, "webm"

    const-string v13, "wmv"

    const-string v14, "m2v"

    filled-new-array/range {v3 .. v16}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v2, Lsk/mimac/slideshow/FileConstants;->VIDEO_EXTENSIONS:Ljava/util/Set;

    new-instance v3, Ljava/util/HashSet;

    const-string v4, "xls"

    const-string v5, "xlsx"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v3, Lsk/mimac/slideshow/FileConstants;->EXCEL_EXTENSIONS:Ljava/util/Set;

    new-instance v4, Ljava/util/HashSet;

    const-string v5, "htm"

    const-string v6, "xhtml"

    const-string v7, "html"

    filled-new-array {v7, v5, v6}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v4, Lsk/mimac/slideshow/FileConstants;->HTML_EXTENSIONS:Ljava/util/Set;

    new-instance v5, Ljava/util/HashSet;

    const-string v6, "tar"

    const-string v7, "ar"

    const-string v8, "zip"

    filled-new-array {v8, v6, v7}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v5, Lsk/mimac/slideshow/FileConstants;->ARCHIVE_EXTENSIONS:Ljava/util/Set;

    new-instance v6, Ljava/util/HashSet;

    const-string v7, "url"

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v6, Lsk/mimac/slideshow/FileConstants;->URL_EXTENSIONS:Ljava/util/Set;

    new-instance v7, Ljava/util/HashSet;

    const-string v8, "xml"

    const-string v9, "rss"

    filled-new-array {v8, v9}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v7, Lsk/mimac/slideshow/FileConstants;->RSS_EXTENSIONS:Ljava/util/Set;

    new-instance v8, Ljava/util/HashSet;

    const-string v9, "txt"

    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v8, Lsk/mimac/slideshow/FileConstants;->TXT_EXTENSIONS:Ljava/util/Set;

    new-instance v9, Ljava/util/HashSet;

    const-string v14, "ogg"

    const-string v15, "mid"

    const-string v10, "aac"

    const-string v11, "flac"

    const-string v12, "mp3"

    const-string v13, "wav"

    filled-new-array/range {v10 .. v15}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v9, Lsk/mimac/slideshow/FileConstants;->AUDIO_EXTENSIONS:Ljava/util/Set;

    new-instance v10, Ljava/util/HashSet;

    const-string v11, "lnk"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v10, Lsk/mimac/slideshow/FileConstants;->LINK_EXTENSIONS:Ljava/util/Set;

    new-instance v11, Ljava/util/HashSet;

    const-string v12, "apk"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v11, Lsk/mimac/slideshow/FileConstants;->APK_EXTENSIONS:Ljava/util/Set;

    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    sput-object v11, Lsk/mimac/slideshow/FileConstants;->ALL_EXTENSIONS:Ljava/util/Set;

    invoke-interface {v11, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v11, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v11, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v11, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v11, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v11, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v11, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v11, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v11, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v11, v9}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v11, v10}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static setFileConstants()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lsk/mimac/slideshow/FileConstants;->MAIN_PATH:Ljava/lang/String;

    .line 7
    .line 8
    const-string v2, "web/"

    .line 9
    .line 10
    invoke-static {v1, v2, v0}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lsk/mimac/slideshow/FileConstants;->WEB_PATH:Ljava/lang/String;

    .line 15
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    sget-object v1, Lsk/mimac/slideshow/FileConstants;->MAIN_PATH:Ljava/lang/String;

    .line 22
    .line 23
    const-string v2, "font/"

    .line 24
    .line 25
    invoke-static {v1, v2, v0}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lsk/mimac/slideshow/FileConstants;->FONT_PATH:Ljava/lang/String;

    .line 30
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    sget-object v1, Lsk/mimac/slideshow/FileConstants;->MAIN_PATH:Ljava/lang/String;

    .line 37
    .line 38
    const-string v2, "images/"

    .line 39
    .line 40
    invoke-static {v1, v2, v0}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    sput-object v0, Lsk/mimac/slideshow/FileConstants;->IMAGES_PATH:Ljava/lang/String;

    .line 45
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    sget-object v1, Lsk/mimac/slideshow/FileConstants;->MAIN_PATH:Ljava/lang/String;

    .line 52
    .line 53
    const-string v2, "settings.xml"

    .line 54
    .line 55
    invoke-static {v1, v2, v0}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    sput-object v0, Lsk/mimac/slideshow/FileConstants;->SETTINGS_PATH:Ljava/lang/String;

    .line 60
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    sget-object v1, Lsk/mimac/slideshow/FileConstants;->MAIN_PATH:Ljava/lang/String;

    .line 67
    .line 68
    const-string v2, "database.mv.db"

    .line 69
    .line 70
    invoke-static {v1, v2, v0}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    sput-object v0, Lsk/mimac/slideshow/FileConstants;->DATABASE_FILE:Ljava/lang/String;

    .line 75
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    sget-object v1, Lsk/mimac/slideshow/FileConstants;->MAIN_PATH:Ljava/lang/String;

    .line 82
    .line 83
    const-string v2, "database.backup.sql"

    .line 84
    .line 85
    invoke-static {v1, v2, v0}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    sput-object v0, Lsk/mimac/slideshow/FileConstants;->DATABASE_FILE_BACKUP:Ljava/lang/String;

    .line 90
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    sget-object v1, Lsk/mimac/slideshow/FileConstants;->MAIN_PATH:Ljava/lang/String;

    .line 97
    .line 98
    const-string v2, "log.txt"

    .line 99
    .line 100
    invoke-static {v1, v2, v0}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    sput-object v0, Lsk/mimac/slideshow/FileConstants;->LOG_FILE:Ljava/lang/String;

    .line 105
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    sget-object v1, Lsk/mimac/slideshow/FileConstants;->MAIN_PATH:Ljava/lang/String;

    .line 112
    .line 113
    const-string v2, "temp/"

    .line 114
    .line 115
    invoke-static {v1, v2, v0}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    sput-object v0, Lsk/mimac/slideshow/FileConstants;->TEMP_PATH:Ljava/lang/String;

    .line 120
    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    .line 126
    sget-object v1, Lsk/mimac/slideshow/FileConstants;->INTERNAL_PATH:Ljava/lang/String;

    .line 127
    .line 128
    const-string v2, "cert.p12"

    .line 129
    .line 130
    invoke-static {v1, v2, v0}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    sput-object v0, Lsk/mimac/slideshow/FileConstants;->CERTIFICATE_FILE:Ljava/lang/String;

    .line 135
    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    .line 141
    sget-object v1, Lsk/mimac/slideshow/FileConstants;->MAIN_PATH:Ljava/lang/String;

    .line 142
    .line 143
    const-string v2, "counter.txt"

    .line 144
    .line 145
    invoke-static {v1, v2, v0}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    sput-object v0, Lsk/mimac/slideshow/FileConstants;->ITEM_COUNTER_FILE:Ljava/lang/String;

    .line 150
    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .line 155
    .line 156
    sget-object v1, Lsk/mimac/slideshow/FileConstants;->MAIN_PATH:Ljava/lang/String;

    .line 157
    .line 158
    const-string v2, "hardware_driver.json"

    .line 159
    .line 160
    invoke-static {v1, v2, v0}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    sput-object v0, Lsk/mimac/slideshow/FileConstants;->HARDWARE_DRIVER_FILE:Ljava/lang/String;

    .line 165
    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .line 170
    .line 171
    sget-object v1, Lsk/mimac/slideshow/FileConstants;->MAIN_PATH:Ljava/lang/String;

    .line 172
    .line 173
    const-string v2, "last_start.txt"

    .line 174
    .line 175
    invoke-static {v1, v2, v0}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    sput-object v0, Lsk/mimac/slideshow/FileConstants;->LAST_START_FILE:Ljava/lang/String;

    .line 180
    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    .line 185
    .line 186
    sget-object v1, Lsk/mimac/slideshow/FileConstants;->MAIN_PATH:Ljava/lang/String;

    .line 187
    .line 188
    const-string v2, "crash_logcat.txt"

    .line 189
    .line 190
    invoke-static {v1, v2, v0}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    sput-object v0, Lsk/mimac/slideshow/FileConstants;->CRASH_LOGCAT:Ljava/lang/String;

    .line 195
    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    .line 200
    .line 201
    sget-object v1, Lsk/mimac/slideshow/FileConstants;->MAIN_PATH:Ljava/lang/String;

    .line 202
    .line 203
    const-string v2, "crash_logcat_2.txt"

    .line 204
    .line 205
    invoke-static {v1, v2, v0}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    sput-object v0, Lsk/mimac/slideshow/FileConstants;->CRASH_LOGCAT_2:Ljava/lang/String;

    .line 210
    .line 211
    return-void
.end method
