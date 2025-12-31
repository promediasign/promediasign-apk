.class Lsk/mimac/slideshow/MountListener$CopyAction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsk/mimac/slideshow/utils/InterruptableRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk/mimac/slideshow/MountListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CopyAction"
.end annotation


# instance fields
.field private final action:Lsk/mimac/slideshow/enums/UsbMountAction;

.field private copied:I

.field private failed:I

.field private final fileDataParser:Lsk/mimac/slideshow/csv/FileDataParser;

.field private final folder:Ljava/io/File;

.field private final itemThread:Lsk/mimac/slideshow/gui/DisplayItemThread;

.field private lastMessageRefresh:J

.field private skipped:I


# direct methods
.method private constructor <init>(Ljava/io/File;Lsk/mimac/slideshow/enums/UsbMountAction;Lsk/mimac/slideshow/gui/DisplayItemThread;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lsk/mimac/slideshow/csv/FileDataParser;

    new-instance v1, Ljava/io/File;

    sget-object v2, Lsk/mimac/slideshow/FileConstants;->CONTENT_PATH:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lsk/mimac/slideshow/csv/FileDataParser;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lsk/mimac/slideshow/MountListener$CopyAction;->fileDataParser:Lsk/mimac/slideshow/csv/FileDataParser;

    const/4 v0, 0x0

    iput v0, p0, Lsk/mimac/slideshow/MountListener$CopyAction;->copied:I

    iput v0, p0, Lsk/mimac/slideshow/MountListener$CopyAction;->skipped:I

    iput v0, p0, Lsk/mimac/slideshow/MountListener$CopyAction;->failed:I

    iput-object p1, p0, Lsk/mimac/slideshow/MountListener$CopyAction;->folder:Ljava/io/File;

    iput-object p2, p0, Lsk/mimac/slideshow/MountListener$CopyAction;->action:Lsk/mimac/slideshow/enums/UsbMountAction;

    iput-object p3, p0, Lsk/mimac/slideshow/MountListener$CopyAction;->itemThread:Lsk/mimac/slideshow/gui/DisplayItemThread;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/File;Lsk/mimac/slideshow/enums/UsbMountAction;Lsk/mimac/slideshow/gui/DisplayItemThread;Lsk/mimac/slideshow/MountListener$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lsk/mimac/slideshow/MountListener$CopyAction;-><init>(Ljava/io/File;Lsk/mimac/slideshow/enums/UsbMountAction;Lsk/mimac/slideshow/gui/DisplayItemThread;)V

    return-void
.end method

.method public static synthetic a(Lsk/mimac/slideshow/MountListener$CopyAction;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsk/mimac/slideshow/MountListener$CopyAction;->lambda$showFinishedToast$0()V

    return-void
.end method

.method private buildHtml(ZLjava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Lorg/apache/velocity/VelocityContext;

    invoke-direct {v0}, Lorg/apache/velocity/VelocityContext;-><init>()V

    iget v1, p0, Lsk/mimac/slideshow/MountListener$CopyAction;->copied:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "copied"

    invoke-virtual {v0, v2, v1}, Lorg/apache/velocity/context/AbstractContext;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lsk/mimac/slideshow/MountListener$CopyAction;->skipped:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "skipped"

    invoke-virtual {v0, v2, v1}, Lorg/apache/velocity/context/AbstractContext;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lsk/mimac/slideshow/MountListener$CopyAction;->failed:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "failed"

    invoke-virtual {v0, v2, v1}, Lorg/apache/velocity/context/AbstractContext;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "currentMedia"

    invoke-virtual {v0, v1, p2}, Lorg/apache/velocity/context/AbstractContext;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "usbMountAction"

    iget-object v1, p0, Lsk/mimac/slideshow/MountListener$CopyAction;->action:Lsk/mimac/slideshow/enums/UsbMountAction;

    invoke-virtual {v0, p2, v1}, Lorg/apache/velocity/context/AbstractContext;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "done"

    invoke-virtual {v0, p2, p1}, Lorg/apache/velocity/context/AbstractContext;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->getVelocity()Lorg/apache/velocity/app/VelocityEngine;

    move-result-object p1

    const-string p2, "/templates/internal/usb-copy.vm"

    invoke-virtual {p1, p2}, Lorg/apache/velocity/app/VelocityEngine;->getTemplate(Ljava/lang/String;)Lorg/apache/velocity/Template;

    move-result-object p1

    new-instance p2, Ljava/io/StringWriter;

    const/16 v1, 0x100

    invoke-direct {p2, v1}, Ljava/io/StringWriter;-><init>(I)V

    invoke-virtual {p1, v0, p2}, Lorg/apache/velocity/Template;->merge(Lorg/apache/velocity/context/Context;Ljava/io/Writer;)V

    invoke-virtual {p2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private copyFile(Ljava/io/File;Ljava/io/File;Lsk/mimac/slideshow/database/entity/FileData;)V
    .locals 2

    :try_start_0
    invoke-static {p1, p2}, Lorg/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    if-eqz p3, :cond_0

    invoke-static {}, Lsk/mimac/slideshow/database/dao/FileDataDao;->getInstance()Lsk/mimac/slideshow/database/dao/FileDataDao;

    move-result-object p2

    invoke-virtual {p2, p3}, Lsk/mimac/slideshow/database/dao/FileDataDao;->createOrUpdate(Lsk/mimac/slideshow/database/entity/FileData;)V

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_1

    :catch_1
    move-exception p2

    goto :goto_1

    :cond_0
    :goto_0
    iget p2, p0, Lsk/mimac/slideshow/MountListener$CopyAction;->copied:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lsk/mimac/slideshow/MountListener$CopyAction;->copied:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {}, Lsk/mimac/slideshow/MountListener;->access$100()Lorg/slf4j/Logger;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Can\'t copy file \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget p1, p0, Lsk/mimac/slideshow/MountListener$CopyAction;->failed:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lsk/mimac/slideshow/MountListener$CopyAction;->failed:I

    :goto_2
    return-void
.end method

.method private copyFilesNested([Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_a

    aget-object v4, p1, v3

    new-instance v5, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, p3, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lsk/mimac/slideshow/MountListener$CopyAction;->fileDataParser:Lsk/mimac/slideshow/csv/FileDataParser;

    invoke-virtual {v8, v6}, Lsk/mimac/slideshow/csv/FileDataParser;->getFileDates(Ljava/lang/String;)Lsk/mimac/slideshow/csv/FileConfig;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Lsk/mimac/slideshow/csv/FileConfig;->isExpired()Z

    move-result v9

    if-eqz v9, :cond_1

    iget v5, p0, Lsk/mimac/slideshow/MountListener$CopyAction;->skipped:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lsk/mimac/slideshow/MountListener$CopyAction;->skipped:I

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lsk/mimac/slideshow/MountListener$CopyAction;->showMessage(ZLjava/lang/String;)V

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lsk/mimac/slideshow/FileConstants;->CONTENT_PATH:Ljava/lang/String;

    invoke-virtual {v9, v10, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Lsk/mimac/slideshow/csv/FileConfig;->toFileData(Ljava/lang/String;)Lsk/mimac/slideshow/database/entity/FileData;

    move-result-object v7

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 1
    invoke-static {p2}, Lorg/apache/ftpserver/main/a;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v5, v4, p3}, Lsk/mimac/slideshow/MountListener$CopyAction;->copyFilesNested([Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v9

    invoke-direct {p0, v9, v10}, Lsk/mimac/slideshow/MountListener$CopyAction;->formatFileSize(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v2, v8}, Lsk/mimac/slideshow/MountListener$CopyAction;->showMessage(ZLjava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lsk/mimac/slideshow/utils/FileUtils2;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lsk/mimac/slideshow/MountListener$CopyAction;->fileDataParser:Lsk/mimac/slideshow/csv/FileDataParser;

    invoke-virtual {v9, v6, v4}, Lsk/mimac/slideshow/csv/FileDataParser;->checkConfig(Ljava/lang/String;Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_3

    :cond_4
    sget-object v6, Lsk/mimac/slideshow/FileConstants;->ARCHIVE_EXTENSIONS:Ljava/util/Set;

    invoke-interface {v6, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5, v2}, Lsk/mimac/slideshow/utils/ZipUtils;->unpack(Ljava/io/File;Ljava/io/File;Z)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_5

    iget v4, p0, Lsk/mimac/slideshow/MountListener$CopyAction;->copied:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lsk/mimac/slideshow/MountListener$CopyAction;->copied:I

    goto :goto_3

    :cond_5
    iget v4, p0, Lsk/mimac/slideshow/MountListener$CopyAction;->failed:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lsk/mimac/slideshow/MountListener$CopyAction;->failed:I

    goto :goto_3

    :cond_6
    const-string v6, "setup.csv"

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_3

    :cond_7
    sget-object v6, Lsk/mimac/slideshow/settings/UserSettings;->ALLOW_UNSUPPORTED_FILE_TYPES:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v6}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    move-result v6

    if-nez v6, :cond_9

    sget-object v6, Lsk/mimac/slideshow/FileConstants;->ALL_EXTENSIONS:Ljava/util/Set;

    invoke-interface {v6, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_2

    :cond_8
    iget v4, p0, Lsk/mimac/slideshow/MountListener$CopyAction;->skipped:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lsk/mimac/slideshow/MountListener$CopyAction;->skipped:I

    goto :goto_3

    :cond_9
    :goto_2
    invoke-direct {p0, v4, v5, v7}, Lsk/mimac/slideshow/MountListener$CopyAction;->copyFile(Ljava/io/File;Ljava/io/File;Lsk/mimac/slideshow/database/entity/FileData;)V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method private formatFileSize(J)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide/16 v2, 0x400

    cmp-long v4, p1, v2

    if-gez v4, :cond_0

    invoke-static {}, Lsk/mimac/slideshow/localization/Localization;->getLanguage()Lsk/mimac/slideshow/localization/Language;

    move-result-object v2

    invoke-virtual {v2}, Lsk/mimac/slideshow/localization/Language;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, " (%d B)"

    invoke-static {v2, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-wide/32 v2, 0x100000

    cmp-long v4, p1, v2

    if-gez v4, :cond_1

    invoke-static {}, Lsk/mimac/slideshow/localization/Localization;->getLanguage()Lsk/mimac/slideshow/localization/Language;

    move-result-object v2

    invoke-virtual {v2}, Lsk/mimac/slideshow/localization/Language;->getLocale()Ljava/util/Locale;

    move-result-object v2

    long-to-float p1, p1

    const/high16 p2, 0x44800000    # 1024.0f

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, " (%.1f KB)"

    invoke-static {v2, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-wide/32 v2, 0x40000000

    cmp-long v4, p1, v2

    invoke-static {}, Lsk/mimac/slideshow/localization/Localization;->getLanguage()Lsk/mimac/slideshow/localization/Language;

    move-result-object v2

    invoke-virtual {v2}, Lsk/mimac/slideshow/localization/Language;->getLocale()Ljava/util/Locale;

    move-result-object v2

    long-to-float p1, p1

    if-gez v4, :cond_2

    const/high16 p2, 0x49800000    # 1048576.0f

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, " (%.1f MB)"

    invoke-static {v2, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const/high16 p2, 0x4e800000

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, " (%.1f GB)"

    invoke-static {v2, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static getTargetFolderPath(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private initFileDataParser()Z
    .locals 4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lsk/mimac/slideshow/MountListener$CopyAction;->folder:Ljava/io/File;

    const-string v2, "setup.csv"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lsk/mimac/slideshow/csv/DontProcessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lsk/mimac/slideshow/MountListener$CopyAction;->fileDataParser:Lsk/mimac/slideshow/csv/FileDataParser;

    invoke-virtual {v0, v2}, Lsk/mimac/slideshow/csv/FileDataParser;->parseCsv(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Lsk/mimac/slideshow/csv/DontProcessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_3

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0
    :try_end_4
    .catch Lsk/mimac/slideshow/csv/DontProcessException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_1
    invoke-static {}, Lsk/mimac/slideshow/MountListener;->access$100()Lorg/slf4j/Logger;

    move-result-object v2

    const-string v3, "Can\'t copy files from USB media"

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    invoke-direct {p0}, Lsk/mimac/slideshow/MountListener$CopyAction;->showFinishedToast()V

    return v1

    :goto_3
    invoke-static {}, Lsk/mimac/slideshow/MountListener;->access$100()Lorg/slf4j/Logger;

    move-result-object v2

    const-string v3, "Won\'t copy files from USB media: {}"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    :goto_4
    const/4 v0, 0x1

    return v0
.end method

.method private synthetic lambda$showFinishedToast$0()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "usb_storage_finished"

    invoke-static {v1}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsk/mimac/slideshow/MountListener$CopyAction;->copied:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "file"

    iget v2, p0, Lsk/mimac/slideshow/MountListener$CopyAction;->copied:I

    invoke-static {v1, v2}, Lsk/mimac/slideshow/localization/Localization;->getStringForNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private showFinishedToast()V
    .locals 1

    new-instance v0, Lsk/mimac/slideshow/c;

    invoke-direct {v0, p0}, Lsk/mimac/slideshow/c;-><init>(Lsk/mimac/slideshow/MountListener$CopyAction;)V

    invoke-static {v0}, Lsk/mimac/slideshow/ContextHolder;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showMessage(ZLjava/lang/String;)V
    .locals 13

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    if-nez p1, :cond_0

    iget-wide v2, p0, Lsk/mimac/slideshow/MountListener$CopyAction;->lastMessageRefresh:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x2faf0800

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    iput-wide v0, p0, Lsk/mimac/slideshow/MountListener$CopyAction;->lastMessageRefresh:J

    :cond_1
    invoke-direct {p0, p1, p2}, Lsk/mimac/slideshow/MountListener$CopyAction;->buildHtml(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object p1, p0, Lsk/mimac/slideshow/MountListener$CopyAction;->itemThread:Lsk/mimac/slideshow/gui/DisplayItemThread;

    invoke-virtual {p1}, Lsk/mimac/slideshow/gui/DisplayItemThread;->getShowHelper()Lsk/mimac/slideshow/gui/ShowHelper;

    move-result-object v7

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v7 .. v12}, Lsk/mimac/slideshow/gui/ShowHelper;->showHtml(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    invoke-static {}, Lsk/mimac/slideshow/MountListener;->access$100()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Starting copying files from USB media"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lsk/mimac/slideshow/MountListener$CopyAction;->showMessage(ZLjava/lang/String;)V

    iget-object v2, p0, Lsk/mimac/slideshow/MountListener$CopyAction;->itemThread:Lsk/mimac/slideshow/gui/DisplayItemThread;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v3, v4}, Lsk/mimac/slideshow/gui/ItemThread;->sleep(J)V

    iget-object v2, p0, Lsk/mimac/slideshow/MountListener$CopyAction;->folder:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    const-wide/16 v3, 0x9c4

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    array-length v6, v2

    if-nez v6, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-direct {p0}, Lsk/mimac/slideshow/MountListener$CopyAction;->initFileDataParser()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-direct {p0, v5, v1}, Lsk/mimac/slideshow/MountListener$CopyAction;->showMessage(ZLjava/lang/String;)V

    iget-object v0, p0, Lsk/mimac/slideshow/MountListener$CopyAction;->itemThread:Lsk/mimac/slideshow/gui/DisplayItemThread;

    invoke-virtual {v0, v3, v4}, Lsk/mimac/slideshow/gui/ItemThread;->sleep(J)V

    return-void

    :cond_1
    new-instance v6, Ljava/io/File;

    sget-object v7, Lsk/mimac/slideshow/FileConstants;->CONTENT_PATH:Ljava/lang/String;

    sget-object v8, Lsk/mimac/slideshow/settings/UserSettings;->USB_TARGET_FOLDER:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v8}, Lsk/mimac/slideshow/settings/UserSettings;->getString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Lsk/mimac/slideshow/MountListener$CopyAction;->getTargetFolderPath(Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lsk/mimac/slideshow/FileConstants;->CONTENT_PATH:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-static {}, Lsk/mimac/slideshow/MountListener;->access$100()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Can\'t break out of content directory: {}"

    invoke-interface {v0, v1, v7}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_2
    iget-object v8, p0, Lsk/mimac/slideshow/MountListener$CopyAction;->action:Lsk/mimac/slideshow/enums/UsbMountAction;

    sget-object v9, Lsk/mimac/slideshow/enums/UsbMountAction;->DELETE_COPY:Lsk/mimac/slideshow/enums/UsbMountAction;

    if-ne v8, v9, :cond_3

    iget-object v8, p0, Lsk/mimac/slideshow/MountListener$CopyAction;->fileDataParser:Lsk/mimac/slideshow/csv/FileDataParser;

    invoke-virtual {v8}, Lsk/mimac/slideshow/csv/FileDataParser;->isKeepFiles()Z

    move-result v8

    if-nez v8, :cond_3

    :try_start_0
    invoke-static {}, Lsk/mimac/slideshow/MountListener;->access$100()Lorg/slf4j/Logger;

    move-result-object v8

    const-string v9, "Deleting all files in the internal storage \'{}\'"

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Lorg/apache/commons/io/FileUtils;->cleanDirectory(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    invoke-static {}, Lsk/mimac/slideshow/MountListener;->access$100()Lorg/slf4j/Logger;

    move-result-object v8

    const-string v9, "Can\'t delete files"

    invoke-interface {v8, v9, v6}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    invoke-direct {p0, v2, v7, v7}, Lsk/mimac/slideshow/MountListener$CopyAction;->copyFilesNested([Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lsk/mimac/slideshow/MountListener;->access$100()Lorg/slf4j/Logger;

    move-result-object v2

    iget v6, p0, Lsk/mimac/slideshow/MountListener$CopyAction;->copied:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, p0, Lsk/mimac/slideshow/MountListener$CopyAction;->skipped:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v8, p0, Lsk/mimac/slideshow/MountListener$CopyAction;->failed:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v6, v9, v0

    aput-object v7, v9, v5

    const/4 v0, 0x2

    aput-object v8, v9, v0

    const-string v0, "Finished copying files from USB media (copied={}, skipped={}, failed={})"

    invoke-interface {v2, v0, v9}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v5, v1}, Lsk/mimac/slideshow/MountListener$CopyAction;->showMessage(ZLjava/lang/String;)V

    invoke-direct {p0}, Lsk/mimac/slideshow/MountListener$CopyAction;->showFinishedToast()V

    iget-object v0, p0, Lsk/mimac/slideshow/MountListener$CopyAction;->itemThread:Lsk/mimac/slideshow/gui/DisplayItemThread;

    invoke-virtual {v0, v3, v4}, Lsk/mimac/slideshow/gui/ItemThread;->sleep(J)V

    iget-object v0, p0, Lsk/mimac/slideshow/MountListener$CopyAction;->fileDataParser:Lsk/mimac/slideshow/csv/FileDataParser;

    invoke-virtual {v0}, Lsk/mimac/slideshow/csv/FileDataParser;->finalizeProcessing()V

    iget-object v0, p0, Lsk/mimac/slideshow/MountListener$CopyAction;->itemThread:Lsk/mimac/slideshow/gui/DisplayItemThread;

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/DisplayItemThread;->getShowHelper()Lsk/mimac/slideshow/gui/ShowHelper;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/ShowHelper;->clearScreen()V

    iget-object v0, p0, Lsk/mimac/slideshow/MountListener$CopyAction;->folder:Ljava/io/File;

    invoke-static {v0}, Lsk/mimac/slideshow/MountListener;->access$300(Ljava/io/File;)V

    return-void

    :cond_4
    :goto_1
    invoke-static {}, Lsk/mimac/slideshow/MountListener;->access$200()V

    invoke-direct {p0, v5, v1}, Lsk/mimac/slideshow/MountListener$CopyAction;->showMessage(ZLjava/lang/String;)V

    iget-object v0, p0, Lsk/mimac/slideshow/MountListener$CopyAction;->itemThread:Lsk/mimac/slideshow/gui/DisplayItemThread;

    invoke-virtual {v0, v3, v4}, Lsk/mimac/slideshow/gui/ItemThread;->sleep(J)V

    return-void
.end method
