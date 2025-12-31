.class public Lsk/mimac/slideshow/http/page/ReporterFormPage;
.super Lsk/mimac/slideshow/http/page/AbstractFormPage;
.source "SourceFile"


# static fields
.field private static final REPORT_URL:Ljava/lang/String; = "https://slideshow.digital/report-problem.php"


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

.method public static prepareZipFile(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const-string v0, "\n"

    const-string v1, "log-1.txt"

    const-string v2, "Can\'t write log file"

    const-string v3, "true"

    const-string v4, "ls -Rla "

    new-instance v5, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v5, p0}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    new-instance p0, Ljava/util/zip/ZipEntry;

    const-string v6, "software.html"

    invoke-direct {p0, v6}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_e

    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Lsk/mimac/slideshow/http/page/AboutSoftwarePage;

    invoke-direct {v6}, Lsk/mimac/slideshow/http/page/AboutSoftwarePage;-><init>()V

    invoke-virtual {v6, p0}, Lsk/mimac/slideshow/http/page/AboutSoftwarePage;->writePage(Ljava/lang/StringBuilder;)V

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_2
    sget-object v6, Lsk/mimac/slideshow/http/page/AbstractFormPage;->LOG:Lorg/slf4j/Logger;

    const-string v7, "Can\'t write software page"

    invoke-interface {v6, v7, p0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    new-instance p0, Ljava/util/zip/ZipEntry;

    const-string v6, "hardware.html"

    invoke-direct {p0, v6}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_e

    const/4 p0, 0x1

    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v7, Lsk/mimac/slideshow/http/page/AboutHardwarePage;

    invoke-direct {v7, p0}, Lsk/mimac/slideshow/http/page/AboutHardwarePage;-><init>(Z)V

    invoke-virtual {v7, v6}, Lsk/mimac/slideshow/http/page/AboutHardwarePage;->writePage(Ljava/lang/StringBuilder;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v6

    :try_start_4
    sget-object v7, Lsk/mimac/slideshow/http/page/AbstractFormPage;->LOG:Lorg/slf4j/Logger;

    const-string v8, "Can\'t write hardware page"

    invoke-interface {v7, v8, v6}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    new-instance v6, Ljava/util/zip/ZipEntry;

    const-string v7, "threads.html"

    invoke-direct {v6, v7}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_e

    :try_start_5
    invoke-static {}, Lsk/mimac/slideshow/http/Responder;->getThreads()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write([B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v6

    :try_start_6
    sget-object v7, Lsk/mimac/slideshow/http/page/AbstractFormPage;->LOG:Lorg/slf4j/Logger;

    const-string v8, "Can\'t write threads page"

    invoke-interface {v7, v8, v6}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    new-instance v6, Ljava/util/zip/ZipEntry;

    const-string v7, "files.txt"

    invoke-direct {v6, v7}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_e

    :try_start_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lsk/mimac/slideshow/FileConstants;->MAIN_PATH:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lsk/mimac/slideshow/http/page/ReporterFormPage;->writeOutputOfProcess(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v4

    :try_start_8
    sget-object v6, Lsk/mimac/slideshow/http/page/AbstractFormPage;->LOG:Lorg/slf4j/Logger;

    const-string v7, "Can\'t write list of files"

    invoke-interface {v6, v7, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    new-instance v4, Ljava/util/zip/ZipEntry;

    const-string v6, "screenshot.jpg"

    invoke-direct {v4, v6}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_e

    const/4 v4, 0x0

    :try_start_9
    invoke-static {v4, p0}, Lsk/mimac/slideshow/utils/ScreenshotUtils;->getScreenshot(Ljava/lang/Integer;Z)Ljava/io/InputStream;

    move-result-object p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    invoke-static {p0, v5}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    if-eqz p0, :cond_1

    :try_start_b
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    goto :goto_6

    :catchall_4
    move-exception p0

    goto :goto_5

    :catchall_5
    move-exception v6

    if-eqz p0, :cond_0

    :try_start_c
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    goto :goto_4

    :catchall_6
    move-exception p0

    :try_start_d
    invoke-virtual {v6, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_4
    throw v6
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :goto_5
    :try_start_e
    sget-object v6, Lsk/mimac/slideshow/http/page/AbstractFormPage;->LOG:Lorg/slf4j/Logger;

    const-string v7, "Can\'t write screenshot file"

    invoke-interface {v6, v7, p0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_6
    new-instance p0, Ljava/util/zip/ZipEntry;

    const-string v6, "configuration.xml"

    invoke-direct {p0, v6}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    :try_start_f
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v6, "settings"

    invoke-virtual {p0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "screenLayouts"

    invoke-virtual {p0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "downloads"

    invoke-virtual {p0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "fileDatas"

    invoke-virtual {p0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "triggers"

    invoke-virtual {p0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "keyMapping"

    invoke-virtual {p0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "additionalData"

    invoke-virtual {p0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, v4}, Lsk/mimac/slideshow/config/BackupService;->exportToXml(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    goto :goto_7

    :catchall_7
    move-exception p0

    :try_start_10
    sget-object v3, Lsk/mimac/slideshow/http/page/AbstractFormPage;->LOG:Lorg/slf4j/Logger;

    const-string v4, "Can\'t write configuration file"

    invoke-interface {v3, v4, p0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_7
    new-instance p0, Ljava/util/zip/ZipEntry;

    const-string v3, "log.txt"

    invoke-direct {p0, v3}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_e

    :try_start_11
    new-instance p0, Ljava/io/FileInputStream;

    sget-object v3, Lsk/mimac/slideshow/FileConstants;->LOG_FILE:Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    :try_start_12
    invoke-static {p0, v5}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    :try_start_13
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    goto :goto_a

    :catchall_8
    move-exception p0

    goto :goto_9

    :catchall_9
    move-exception v3

    :try_start_14
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_a

    goto :goto_8

    :catchall_a
    move-exception p0

    :try_start_15
    invoke-virtual {v3, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8
    throw v3
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    :goto_9
    :try_start_16
    sget-object v3, Lsk/mimac/slideshow/http/page/AbstractFormPage;->LOG:Lorg/slf4j/Logger;

    invoke-interface {v3, v2, p0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_a
    new-instance p0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lsk/mimac/slideshow/FileConstants;->MAIN_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_e

    const-string v4, "Can\'t write log-1 file"

    if-eqz v3, :cond_2

    :try_start_17
    new-instance v3, Ljava/util/zip/ZipEntry;

    invoke-direct {v3, v1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_e

    :try_start_18
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_b

    :try_start_19
    invoke-static {v1, v5}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_c

    :try_start_1a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_b

    goto :goto_d

    :catchall_b
    move-exception p0

    goto :goto_c

    :catchall_c
    move-exception p0

    :try_start_1b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_d

    goto :goto_b

    :catchall_d
    move-exception v1

    :try_start_1c
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_b
    throw p0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_b

    :goto_c
    :try_start_1d
    sget-object v1, Lsk/mimac/slideshow/http/page/AbstractFormPage;->LOG:Lorg/slf4j/Logger;

    invoke-interface {v1, v4, p0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d

    :catchall_e
    move-exception p0

    goto/16 :goto_1b

    :cond_2
    :goto_d
    new-instance p0, Ljava/io/File;

    sget-object v1, Lsk/mimac/slideshow/FileConstants;->DATABASE_FILE_BACKUP:Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/util/zip/ZipEntry;

    const-string v3, "database.backup.sql"

    invoke-direct {v1, v3}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_e

    :try_start_1e
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_f

    :try_start_1f
    invoke-static {v1, v5}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_10

    :try_start_20
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_f

    goto :goto_10

    :catchall_f
    move-exception p0

    goto :goto_f

    :catchall_10
    move-exception p0

    :try_start_21
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_11

    goto :goto_e

    :catchall_11
    move-exception v1

    :try_start_22
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_e
    throw p0
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_f

    :goto_f
    :try_start_23
    sget-object v1, Lsk/mimac/slideshow/http/page/AbstractFormPage;->LOG:Lorg/slf4j/Logger;

    invoke-interface {v1, v4, p0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_10
    new-instance p0, Ljava/util/zip/ZipEntry;

    const-string v1, "logcat.txt"

    invoke-direct {p0, v1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_e

    :try_start_24
    const-string p0, "logcat -d -v threadtime -t 800"

    invoke-static {v5, p0}, Lsk/mimac/slideshow/http/page/ReporterFormPage;->writeOutputOfProcess(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_12

    goto :goto_11

    :catchall_12
    move-exception p0

    :try_start_25
    sget-object v1, Lsk/mimac/slideshow/http/page/AbstractFormPage;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Can\'t write logcat file"

    invoke-interface {v1, v3, p0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_11
    new-instance p0, Ljava/util/zip/ZipEntry;

    const-string v1, "communication.json"

    invoke-direct {p0, v1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_e

    :try_start_26
    invoke-static {}, Lsk/mimac/slideshow/ApiService;->communicationDebug()Lorg/json/JSONObject;

    move-result-object p0

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_13

    goto :goto_12

    :catchall_13
    move-exception p0

    :try_start_27
    sget-object v1, Lsk/mimac/slideshow/http/page/AbstractFormPage;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Can\'t write communication file"

    invoke-interface {v1, v3, p0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_12
    new-instance p0, Ljava/util/zip/ZipEntry;

    const-string v1, "signature.txt"

    invoke-direct {p0, v1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_e

    :try_start_28
    new-instance p0, Ljava/lang/StringBuilder;

    sget-object v1, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v3, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x40

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_14

    goto :goto_13

    :catchall_14
    move-exception p0

    :try_start_29
    sget-object v1, Lsk/mimac/slideshow/http/page/AbstractFormPage;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Can\'t write signature file"

    invoke-interface {v1, v3, p0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_13
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt p0, v1, :cond_4

    new-instance p0, Ljava/util/zip/ZipEntry;

    const-string v1, "usageStats.txt"

    invoke-direct {p0, v1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_e

    :try_start_2a
    invoke-static {}, Lsk/mimac/slideshow/utils/UsageStatsUtils;->getUsageEvents()Ljava/util/List;

    move-result-object p0

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lorg/apache/commons/lang3/StringUtils;->join(Ljava/lang/Iterable;C)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_15

    goto :goto_14

    :catchall_15
    move-exception p0

    :try_start_2b
    sget-object v1, Lsk/mimac/slideshow/http/page/AbstractFormPage;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Can\'t write usage stats file"

    invoke-interface {v1, v3, p0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_14
    new-instance p0, Ljava/io/File;

    sget-object v1, Lsk/mimac/slideshow/FileConstants;->CRASH_LOGCAT:Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/util/zip/ZipEntry;

    const-string v3, "crash_logcat.txt"

    invoke-direct {v1, v3}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_e

    :try_start_2c
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_16

    :try_start_2d
    invoke-static {v1, v5}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_17

    :try_start_2e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_16

    goto :goto_17

    :catchall_16
    move-exception p0

    goto :goto_16

    :catchall_17
    move-exception p0

    :try_start_2f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_18

    goto :goto_15

    :catchall_18
    move-exception v1

    :try_start_30
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_15
    throw p0
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_16

    :goto_16
    :try_start_31
    sget-object v1, Lsk/mimac/slideshow/http/page/AbstractFormPage;->LOG:Lorg/slf4j/Logger;

    invoke-interface {v1, v2, p0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_17
    new-instance p0, Ljava/io/File;

    sget-object v1, Lsk/mimac/slideshow/FileConstants;->CRASH_LOGCAT_2:Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_6

    new-instance p0, Ljava/util/zip/ZipEntry;

    const-string v1, "crash_logcat_2.txt"

    invoke-direct {p0, v1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_e

    :try_start_32
    new-instance p0, Ljava/io/FileInputStream;

    sget-object v1, Lsk/mimac/slideshow/FileConstants;->CRASH_LOGCAT_2:Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_19

    :try_start_33
    invoke-static {p0, v5}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_1a

    :try_start_34
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_19

    goto :goto_1a

    :catchall_19
    move-exception p0

    goto :goto_19

    :catchall_1a
    move-exception v1

    :try_start_35
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_1b

    goto :goto_18

    :catchall_1b
    move-exception p0

    :try_start_36
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_18
    throw v1
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_19

    :goto_19
    :try_start_37
    sget-object v1, Lsk/mimac/slideshow/http/page/AbstractFormPage;->LOG:Lorg/slf4j/Logger;

    invoke-interface {v1, v2, p0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_1a
    new-instance p0, Ljava/util/zip/ZipEntry;

    const-string v1, "message.txt"

    invoke-direct {p0, v1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Email: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n\nMessage: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_e

    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->close()V

    return-void

    :goto_1b
    :try_start_38
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_1c

    goto :goto_1c

    :catchall_1c
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1c
    throw p0
.end method

.method public static sendReport(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lsk/mimac/slideshow/http/page/AbstractFormPage;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Preparing report"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    const-string v3, "slideshow-report-"

    const-string v4, ".zip"

    invoke-static {v3, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v3, p0, p1}, Lsk/mimac/slideshow/http/page/ReporterFormPage;->prepareZipFile(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, p0, p1}, Lsk/mimac/slideshow/http/page/ReporterFormPage;->sendZipFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    const-string p1, "Report send with responseCode={}"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0xc8

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_1
    return v0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    sget-object p1, Lsk/mimac/slideshow/http/page/AbstractFormPage;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Can\'t send report"

    invoke-interface {p1, v2, p0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_2
    return v0

    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_3
    throw p0
.end method

.method private static sendZipFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    new-instance v0, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v0}, Lokhttp3/MultipartBody$Builder;-><init>()V

    sget-object v1, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v0, v1}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v0

    const-string v1, "email"

    invoke-virtual {v0, v1, p1}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object p1

    const-string v0, "message"

    invoke-virtual {p1, v0, p2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object p1

    const-string p2, "version"

    sget-object v0, Lsk/mimac/slideshow/BuildInfo;->VERSION:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object p1

    const-string p2, "branding"

    const-string v0, "Promedia Sign"

    invoke-virtual {p1, p2, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object p1

    const-string p2, "application/zip"

    invoke-static {p2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p2

    invoke-static {p2, p0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object p0

    const-string p2, "report"

    const-string v0, "report.zip"

    invoke-virtual {p1, p2, v0, p0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object p0

    new-instance p1, Lokhttp3/Request$Builder;

    invoke-direct {p1}, Lokhttp3/Request$Builder;-><init>()V

    const-string p2, "https://slideshow.digital/report-problem.php"

    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    invoke-static {}, Lsk/mimac/slideshow/utils/HttpUtils;->getDefaultSlowClient()Lokhttp3/OkHttpClient;

    move-result-object p1

    invoke-virtual {p1, p0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p0

    invoke-interface {p0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lokhttp3/Response;->close()V

    return p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_0

    :try_start_1
    invoke-virtual {p0}, Lokhttp3/Response;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p1
.end method

.method public static writeOutputOfProcess(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lsk/mimac/slideshow/http/page/AbstractFormPage;->LOG:Lorg/slf4j/Logger;

    const-string v0, "Can\'t get logcat"

    invoke-interface {p1, v0, p0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getPageHeader()Ljava/lang/String;
    .locals 1

    const-string v0, "reporter"

    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public process()V
    .locals 3

    invoke-virtual {p0}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->isPost()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractFormPage;->params:Ljava/util/Map;

    const-string v1, "email"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lsk/mimac/slideshow/http/page/AbstractFormPage;->params:Ljava/util/Map;

    const-string v2, "message"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lsk/mimac/slideshow/http/page/ReporterFormPage;->sendReport(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "report_sent"

    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractFormPage;->resultMessage:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "cant_send_report"

    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->addError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public writePage(Ljava/lang/StringBuilder;)V
    .locals 7

    .line 1
    const-string v0, "<p><i>"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    const-string v0, "reporter_help"

    .line 7
    .line 8
    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v0, "</i></p>"

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v0, "<form method=\'POST\'><table>"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v0, "reporter_message"

    .line 26
    .line 27
    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    const-string v0, "reporter_message_help"

    .line 32
    .line 33
    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    const-string v3, "message"

    .line 38
    .line 39
    const-string v4, "text\' required style=\'width:500px"

    .line 40
    .line 41
    move-object v1, p0

    .line 42
    move-object v2, p1

    .line 43
    invoke-virtual/range {v1 .. v6}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->writeFormTableLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v0, "reporter_email"

    .line 47
    .line 48
    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    const-string v0, "reporter_email_help"

    .line 53
    .line 54
    invoke-static {v0}, Lsk/mimac/slideshow/localization/Localization;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    const-string v3, "email"

    .line 59
    .line 60
    const-string v4, "email\' style=\'width:500px"

    .line 61
    .line 62
    invoke-virtual/range {v1 .. v6}, Lsk/mimac/slideshow/http/page/AbstractFormPage;->writeFormTableLine(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const-string v0, "</table><input type=\'submit\' class=\'button\' value=\'"

    .line 66
    .line 67
    const-string v1, "send"

    .line 68
    .line 69
    const-string v2, "\'/></form>"

    .line 70
    .line 71
    invoke-static {p1, v0, v1, v2}, Ls/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method
