.class public Lorg/apache/ftpserver/message/impl/DefaultMessageResource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/ftpserver/message/MessageResource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ftpserver/message/impl/DefaultMessageResource$PropertiesPair;
    }
.end annotation


# static fields
.field private static final RESOURCE_PATH:Ljava/lang/String; = "org/apache/ftpserver/message/"


# instance fields
.field private final LOG:Lorg/slf4j/Logger;

.field private languages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private messages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/ftpserver/message/impl/DefaultMessageResource$PropertiesPair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lorg/apache/ftpserver/message/impl/DefaultMessageResource;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/message/impl/DefaultMessageResource;->LOG:Lorg/slf4j/Logger;

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/message/impl/DefaultMessageResource;->languages:Ljava/util/List;

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ftpserver/message/impl/DefaultMessageResource;->messages:Ljava/util/Map;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Lorg/apache/ftpserver/message/impl/DefaultMessageResource;->createPropertiesPair(Ljava/lang/String;Ljava/io/File;)Lorg/apache/ftpserver/message/impl/DefaultMessageResource$PropertiesPair;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ftpserver/message/impl/DefaultMessageResource;->messages:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-direct {p0, p1, p2}, Lorg/apache/ftpserver/message/impl/DefaultMessageResource;->createPropertiesPair(Ljava/lang/String;Ljava/io/File;)Lorg/apache/ftpserver/message/impl/DefaultMessageResource$PropertiesPair;

    move-result-object p2

    iget-object v0, p0, Lorg/apache/ftpserver/message/impl/DefaultMessageResource;->messages:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private createPropertiesPair(Ljava/lang/String;Ljava/io/File;)Lorg/apache/ftpserver/message/impl/DefaultMessageResource$PropertiesPair;
    .locals 8

    .line 1
    const-string v0, "MessageResourceImpl.createPropertiesPair()"

    .line 2
    .line 3
    new-instance v1, Lorg/apache/ftpserver/message/impl/DefaultMessageResource$PropertiesPair;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, v2}, Lorg/apache/ftpserver/message/impl/DefaultMessageResource$PropertiesPair;-><init>(Lorg/apache/ftpserver/message/impl/DefaultMessageResource$1;)V

    .line 7
    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const-string v3, "org/apache/ftpserver/message/FtpStatus.properties"

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string v3, "org/apache/ftpserver/message/FtpStatus_"

    .line 15
    .line 16
    const-string v4, ".properties"

    .line 17
    .line 18
    invoke-static {v3, p1, v4}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-virtual {v4, v3}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    .line 31
    .line 32
    .line 33
    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 34
    const-string v5, "\", file not found in classpath"

    .line 35
    .line 36
    const-string v6, "Failed to load messages from \""

    .line 37
    .line 38
    if-eqz v4, :cond_3

    .line 39
    .line 40
    :try_start_1
    iget-object v7, v1, Lorg/apache/ftpserver/message/impl/DefaultMessageResource$PropertiesPair;->defaultProperties:Ljava/util/Properties;

    .line 41
    .line 42
    invoke-virtual {v7, v4}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 43
    .line 44
    .line 45
    invoke-static {v4}, Lorg/apache/ftpserver/util/IoUtils;->close(Ljava/io/InputStream;)V

    .line 46
    .line 47
    .line 48
    if-nez p1, :cond_1

    .line 49
    .line 50
    new-instance p1, Ljava/io/File;

    .line 51
    .line 52
    const-string v3, "FtpStatus.gen"

    .line 53
    .line 54
    invoke-direct {p1, p2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    new-instance v3, Ljava/io/File;

    .line 59
    .line 60
    const-string v4, "FtpStatus_"

    .line 61
    .line 62
    const-string v5, ".gen"

    .line 63
    .line 64
    invoke-static {v4, p1, v5}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-direct {v3, p2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    move-object p1, v3

    .line 72
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    if-eqz p2, :cond_2

    .line 77
    .line 78
    new-instance p2, Ljava/io/FileInputStream;

    .line 79
    .line 80
    invoke-direct {p2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 81
    .line 82
    .line 83
    :try_start_3
    iget-object p1, v1, Lorg/apache/ftpserver/message/impl/DefaultMessageResource$PropertiesPair;->customProperties:Ljava/util/Properties;

    .line 84
    .line 85
    invoke-virtual {p1, p2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 86
    .line 87
    .line 88
    move-object v2, p2

    .line 89
    goto :goto_2

    .line 90
    :catchall_0
    move-exception p1

    .line 91
    move-object v2, p2

    .line 92
    goto :goto_4

    .line 93
    :catch_0
    move-exception p1

    .line 94
    move-object v2, p2

    .line 95
    goto :goto_3

    .line 96
    :catchall_1
    move-exception p1

    .line 97
    goto :goto_4

    .line 98
    :catch_1
    move-exception p1

    .line 99
    goto :goto_3

    .line 100
    :cond_2
    :goto_2
    invoke-static {v2}, Lorg/apache/ftpserver/util/IoUtils;->close(Ljava/io/InputStream;)V

    .line 101
    .line 102
    .line 103
    return-object v1

    .line 104
    :goto_3
    :try_start_4
    iget-object p2, p0, Lorg/apache/ftpserver/message/impl/DefaultMessageResource;->LOG:Lorg/slf4j/Logger;

    .line 105
    .line 106
    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    .line 108
    .line 109
    new-instance p2, Lorg/apache/ftpserver/FtpServerConfigurationException;

    .line 110
    .line 111
    invoke-direct {p2, v0, p1}, Lorg/apache/ftpserver/FtpServerConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    .line 113
    .line 114
    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 115
    :goto_4
    invoke-static {v2}, Lorg/apache/ftpserver/util/IoUtils;->close(Ljava/io/InputStream;)V

    .line 116
    .line 117
    .line 118
    throw p1

    .line 119
    :catchall_2
    move-exception p1

    .line 120
    move-object v2, v4

    .line 121
    goto :goto_5

    .line 122
    :catch_2
    :try_start_5
    new-instance p1, Lorg/apache/ftpserver/FtpServerConfigurationException;

    .line 123
    .line 124
    new-instance p2, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {p2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p2

    .line 139
    invoke-direct {p1, p2}, Lorg/apache/ftpserver/FtpServerConfigurationException;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw p1

    .line 143
    :cond_3
    new-instance p1, Lorg/apache/ftpserver/FtpServerConfigurationException;

    .line 144
    .line 145
    new-instance p2, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {p2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p2

    .line 160
    invoke-direct {p1, p2}, Lorg/apache/ftpserver/FtpServerConfigurationException;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 164
    :catchall_3
    move-exception p1

    .line 165
    :goto_5
    invoke-static {v2}, Lorg/apache/ftpserver/util/IoUtils;->close(Ljava/io/InputStream;)V

    .line 166
    .line 167
    .line 168
    throw p1
.end method


# virtual methods
.method public dispose()V
    .locals 3

    iget-object v0, p0, Lorg/apache/ftpserver/message/impl/DefaultMessageResource;->messages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ftpserver/message/impl/DefaultMessageResource;->messages:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ftpserver/message/impl/DefaultMessageResource$PropertiesPair;

    iget-object v2, v1, Lorg/apache/ftpserver/message/impl/DefaultMessageResource$PropertiesPair;->customProperties:Ljava/util/Properties;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    iget-object v1, v1, Lorg/apache/ftpserver/message/impl/DefaultMessageResource$PropertiesPair;->defaultProperties:Ljava/util/Properties;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/ftpserver/message/impl/DefaultMessageResource;->messages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public getAvailableLanguages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/ftpserver/message/impl/DefaultMessageResource;->languages:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMessage(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/4 p2, 0x0

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lorg/apache/ftpserver/message/impl/DefaultMessageResource;->messages:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/apache/ftpserver/message/impl/DefaultMessageResource$PropertiesPair;

    if-eqz p3, :cond_1

    iget-object v0, p3, Lorg/apache/ftpserver/message/impl/DefaultMessageResource$PropertiesPair;->customProperties:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object p3, p3, Lorg/apache/ftpserver/message/impl/DefaultMessageResource$PropertiesPair;->defaultProperties:Ljava/util/Properties;

    invoke-virtual {p3, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p2

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    iget-object p3, p0, Lorg/apache/ftpserver/message/impl/DefaultMessageResource;->messages:Ljava/util/Map;

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/ftpserver/message/impl/DefaultMessageResource$PropertiesPair;

    if-eqz p2, :cond_3

    iget-object p3, p2, Lorg/apache/ftpserver/message/impl/DefaultMessageResource$PropertiesPair;->customProperties:Ljava/util/Properties;

    invoke-virtual {p3, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object p2, p2, Lorg/apache/ftpserver/message/impl/DefaultMessageResource$PropertiesPair;->defaultProperties:Ljava/util/Properties;

    invoke-virtual {p2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method public getMessages(Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iget-object v1, p0, Lorg/apache/ftpserver/message/impl/DefaultMessageResource;->messages:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ftpserver/message/impl/DefaultMessageResource$PropertiesPair;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lorg/apache/ftpserver/message/impl/DefaultMessageResource$PropertiesPair;->defaultProperties:Ljava/util/Properties;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V

    iget-object v1, v1, Lorg/apache/ftpserver/message/impl/DefaultMessageResource$PropertiesPair;->customProperties:Ljava/util/Properties;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lorg/apache/ftpserver/message/impl/DefaultMessageResource;->messages:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/ftpserver/message/impl/DefaultMessageResource$PropertiesPair;

    if-eqz p1, :cond_1

    iget-object v1, p1, Lorg/apache/ftpserver/message/impl/DefaultMessageResource$PropertiesPair;->defaultProperties:Ljava/util/Properties;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V

    iget-object p1, p1, Lorg/apache/ftpserver/message/impl/DefaultMessageResource$PropertiesPair;->customProperties:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V

    :cond_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
