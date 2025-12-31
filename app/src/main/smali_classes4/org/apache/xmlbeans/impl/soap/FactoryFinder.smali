.class Lorg/apache/xmlbeans/impl/soap/FactoryFinder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static synthetic class$org$apache$xmlbeans$impl$soap$FactoryFinder:Ljava/lang/Class;


# direct methods
.method public static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    move-exception p0

    .line 7
    invoke-static {p0}, Lorg/apache/ftpserver/main/a;->q(Ljava/lang/ClassNotFoundException;)Ljava/lang/Throwable;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    throw p0
.end method

.method public static find(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .line 1
    :try_start_0
    invoke-static {p0}, Lorg/apache/xmlbeans/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {v0}, Lorg/apache/xmlbeans/impl/soap/FactoryFinder;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return-object p0

    .line 12
    :catch_0
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v1, "java.home"

    .line 18
    .line 19
    invoke-static {v1}, Lorg/apache/xmlbeans/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 24
    .line 25
    .line 26
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 29
    .line 30
    .line 31
    const-string v2, "lib"

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 37
    .line 38
    .line 39
    const-string v1, "jaxm.properties"

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    new-instance v1, Ljava/io/File;

    .line 49
    .line 50
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_1

    .line 58
    .line 59
    new-instance v0, Ljava/io/FileInputStream;

    .line 60
    .line 61
    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 62
    .line 63
    .line 64
    new-instance v1, Ljava/util/Properties;

    .line 65
    .line 66
    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-static {v0}, Lorg/apache/xmlbeans/impl/soap/FactoryFinder;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 83
    return-object p0

    .line 84
    :catch_1
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 85
    .line 86
    const-string v1, "META-INF/services/"

    .line 87
    .line 88
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    :try_start_2
    invoke-static {v0}, Lorg/apache/xmlbeans/impl/soap/FactoryFinder;->getResource(Ljava/lang/String;)Ljava/io/InputStream;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    if-eqz v0, :cond_2

    .line 103
    .line 104
    new-instance v1, Ljava/io/BufferedReader;

    .line 105
    .line 106
    new-instance v2, Ljava/io/InputStreamReader;

    .line 107
    .line 108
    const-string v3, "UTF-8"

    .line 109
    .line 110
    invoke-direct {v2, v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 121
    .line 122
    .line 123
    if-eqz v0, :cond_2

    .line 124
    .line 125
    const-string v1, ""

    .line 126
    .line 127
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-nez v1, :cond_2

    .line 132
    .line 133
    invoke-static {v0}, Lorg/apache/xmlbeans/impl/soap/FactoryFinder;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 137
    return-object p0

    .line 138
    :catch_2
    nop

    .line 139
    :cond_2
    if-eqz p1, :cond_3

    .line 140
    .line 141
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/soap/FactoryFinder;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    return-object p0

    .line 146
    :cond_3
    new-instance p1, Lorg/apache/xmlbeans/impl/soap/SOAPException;

    .line 147
    .line 148
    const-string v0, "Provider for "

    .line 149
    .line 150
    const-string v1, " cannot be found"

    .line 151
    .line 152
    invoke-static {v0, p0, v1}, Lch/qos/logback/core/joran/util/a;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    const/4 v0, 0x0

    .line 157
    invoke-direct {p1, p0, v0}, Lorg/apache/xmlbeans/impl/soap/SOAPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 158
    .line 159
    .line 160
    throw p1
.end method

.method private static getResource(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_2

    sget-object v0, Lorg/apache/xmlbeans/impl/soap/FactoryFinder;->class$org$apache$xmlbeans$impl$soap$FactoryFinder:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string v0, "org.apache.xmlbeans.impl.soap.FactoryFinder"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/soap/FactoryFinder;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/soap/FactoryFinder;->class$org$apache$xmlbeans$impl$soap$FactoryFinder:Ljava/lang/Class;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method private static newInstance(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    .line 6
    .line 7
    .line 8
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 9
    const-string v1, "Provider "

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    :try_start_1
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception v0

    .line 19
    goto :goto_1

    .line 20
    :catch_1
    move-exception v0

    .line 21
    goto :goto_2

    .line 22
    :cond_0
    :try_start_2
    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 26
    goto :goto_0

    .line 27
    :catch_2
    const/4 v0, 0x0

    .line 28
    :goto_0
    if-nez v0, :cond_2

    .line 29
    .line 30
    :try_start_3
    sget-object v0, Lorg/apache/xmlbeans/impl/soap/FactoryFinder;->class$org$apache$xmlbeans$impl$soap$FactoryFinder:Ljava/lang/Class;

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    const-string v0, "org.apache.xmlbeans.impl.soap.FactoryFinder"

    .line 35
    .line 36
    invoke-static {v0}, Lorg/apache/xmlbeans/impl/soap/FactoryFinder;->class$(Ljava/lang/String;)Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    sput-object v0, Lorg/apache/xmlbeans/impl/soap/FactoryFinder;->class$org$apache$xmlbeans$impl$soap$FactoryFinder:Ljava/lang/Class;

    .line 41
    .line 42
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p0
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 54
    return-object p0

    .line 55
    :goto_1
    new-instance v2, Lorg/apache/xmlbeans/impl/soap/SOAPException;

    .line 56
    .line 57
    new-instance v3, Ljava/lang/StringBuffer;

    .line 58
    .line 59
    invoke-direct {v3, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    .line 64
    .line 65
    const-string p0, " could not be instantiated: "

    .line 66
    .line 67
    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-direct {v2, p0, v0}, Lorg/apache/xmlbeans/impl/soap/SOAPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    .line 79
    .line 80
    throw v2

    .line 81
    :goto_2
    new-instance v2, Lorg/apache/xmlbeans/impl/soap/SOAPException;

    .line 82
    .line 83
    const-string v3, " not found"

    .line 84
    .line 85
    invoke-static {v1, p0, v3}, Lch/qos/logback/core/joran/util/a;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-direct {v2, p0, v0}, Lorg/apache/xmlbeans/impl/soap/SOAPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    .line 91
    .line 92
    throw v2

    .line 93
    :catch_3
    move-exception p0

    .line 94
    new-instance v0, Lorg/apache/xmlbeans/impl/soap/SOAPException;

    .line 95
    .line 96
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-direct {v0, v1, p0}, Lorg/apache/xmlbeans/impl/soap/SOAPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    .line 102
    .line 103
    throw v0
.end method
