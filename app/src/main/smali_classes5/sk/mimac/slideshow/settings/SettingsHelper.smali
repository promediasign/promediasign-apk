.class Lsk/mimac/slideshow/settings/SettingsHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG:Lorg/slf4j/Logger;

.field private static instance:Lsk/mimac/slideshow/settings/SettingsHelper;


# instance fields
.field private volatile properties:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/settings/SettingsHelper;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/settings/SettingsHelper;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lsk/mimac/slideshow/settings/SettingsHelper;->properties:Ljava/util/Properties;

    new-instance v0, Ljava/io/File;

    sget-object v1, Lsk/mimac/slideshow/FileConstants;->SETTINGS_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/util/InvalidPropertiesFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lsk/mimac/slideshow/settings/SettingsHelper;->properties:Ljava/util/Properties;

    invoke-virtual {v0, v1}, Ljava/util/Properties;->loadFromXML(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/util/InvalidPropertiesFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0
    :try_end_4
    .catch Ljava/util/InvalidPropertiesFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_1
    sget-object v1, Lsk/mimac/slideshow/settings/SettingsHelper;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Can\'t load settings"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :goto_2
    sget-object v1, Lsk/mimac/slideshow/settings/SettingsHelper;->LOG:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t load settings: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_3

    :cond_0
    sget-object v0, Lsk/mimac/slideshow/settings/SettingsHelper;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Can\'t load settings: file \'{}\' doesn\'t exist"

    sget-object v2, Lsk/mimac/slideshow/FileConstants;->SETTINGS_PATH:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_3
    return-void
.end method

.method public static declared-synchronized getInstance()Lsk/mimac/slideshow/settings/SettingsHelper;
    .locals 2

    const-class v0, Lsk/mimac/slideshow/settings/SettingsHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lsk/mimac/slideshow/settings/SettingsHelper;->instance:Lsk/mimac/slideshow/settings/SettingsHelper;

    if-nez v1, :cond_0

    new-instance v1, Lsk/mimac/slideshow/settings/SettingsHelper;

    invoke-direct {v1}, Lsk/mimac/slideshow/settings/SettingsHelper;-><init>()V

    sput-object v1, Lsk/mimac/slideshow/settings/SettingsHelper;->instance:Lsk/mimac/slideshow/settings/SettingsHelper;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lsk/mimac/slideshow/settings/SettingsHelper;->instance:Lsk/mimac/slideshow/settings/SettingsHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/settings/SettingsHelper;->properties:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    :cond_1
    :goto_0
    return p2
.end method

.method public getFloat(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/settings/SettingsHelper;->properties:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p2

    :cond_1
    :goto_0
    return-object p2
.end method

.method public getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/settings/SettingsHelper;->properties:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    :cond_1
    :goto_0
    return-object p2
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/settings/SettingsHelper;->properties:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    return-object p2
.end method

.method public removeProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/settings/SettingsHelper;->properties:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Dictionary;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public save()V
    .locals 3

    new-instance v0, Ljava/io/FileOutputStream;

    sget-object v1, Lsk/mimac/slideshow/FileConstants;->SETTINGS_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lsk/mimac/slideshow/settings/SettingsHelper;->properties:Ljava/util/Properties;

    const-string v2, "Settings for Slideshow"

    invoke-virtual {v1, v0, v2}, Ljava/util/Properties;->storeToXML(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/settings/SettingsHelper;->properties:Ljava/util/Properties;

    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method
