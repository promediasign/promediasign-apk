.class public abstract Lsk/mimac/slideshow/BuildInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BUILD:Ljava/lang/String;

.field public static final BUILD_DATE:Ljava/lang/String;

.field public static final CLOUD_SEVER_URL:Ljava/lang/String;

.field public static final DEFAULT_LANGUAGE:Lsk/mimac/slideshow/localization/Language;

.field public static final GLOBAL_ZIP_PASSWORD:Ljava/lang/String;

.field public static final IS_BETA:Z

.field public static final PROVISIONING_SERVER_URL:Ljava/lang/String;

.field public static USER_AGENT:Ljava/lang/String;

.field public static final USER_AGENT_SUFFIX:Ljava/lang/String;

.field public static final VERSION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    sget-object v0, Lsk/mimac/slideshow/localization/Language;->ENGLISH:Lsk/mimac/slideshow/localization/Language;

    .line 2
    .line 3
    sput-object v0, Lsk/mimac/slideshow/BuildInfo;->DEFAULT_LANGUAGE:Lsk/mimac/slideshow/localization/Language;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    sput-object v0, Lsk/mimac/slideshow/BuildInfo;->PROVISIONING_SERVER_URL:Ljava/lang/String;

    .line 7
    .line 8
    sput-object v0, Lsk/mimac/slideshow/BuildInfo;->CLOUD_SEVER_URL:Ljava/lang/String;

    .line 9
    .line 10
    sput-object v0, Lsk/mimac/slideshow/BuildInfo;->GLOBAL_ZIP_PASSWORD:Ljava/lang/String;

    .line 11
    .line 12
    new-instance v0, Ljava/util/Properties;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 15
    .line 16
    .line 17
    :try_start_0
    const-class v1, Lsk/mimac/slideshow/BuildInfo;

    .line 18
    .line 19
    const-string v2, "/git.properties"

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    const-string v1, "git.build.time"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const-string v2, "git.build.version"

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    const-string v3, "git.commit.id"

    .line 41
    .line 42
    invoke-virtual {v0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-string v3, "P"

    .line 47
    .line 48
    const-string v4, ""

    .line 49
    .line 50
    invoke-static {v3, v4}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-static {v2}, Lorg/apache/ftpserver/main/a;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    const-string v7, "-"

    .line 63
    .line 64
    if-eqz v6, :cond_0

    .line 65
    .line 66
    move-object v3, v4

    .line 67
    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {v7, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    sput-object v3, Lsk/mimac/slideshow/BuildInfo;->VERSION:Ljava/lang/String;

    .line 80
    .line 81
    const-string v3, " / "

    .line 82
    .line 83
    invoke-static {v0, v3, v1}, Lorg/apache/ftpserver/main/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    sput-object v0, Lsk/mimac/slideshow/BuildInfo;->BUILD:Ljava/lang/String;

    .line 88
    .line 89
    const/16 v0, 0x2b

    .line 90
    .line 91
    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    const/4 v3, 0x0

    .line 96
    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    const-string v1, ":"

    .line 101
    .line 102
    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v0, v7, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    const-string v1, "T"

    .line 111
    .line 112
    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    const-string v1, "."

    .line 117
    .line 118
    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    sput-object v0, Lsk/mimac/slideshow/BuildInfo;->BUILD_DATE:Ljava/lang/String;

    .line 123
    .line 124
    const-string v0, "-BETA"

    .line 125
    .line 126
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    sput-boolean v0, Lsk/mimac/slideshow/BuildInfo;->IS_BETA:Z

    .line 131
    .line 132
    const-string v0, " Slideshow/"

    .line 133
    .line 134
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    sput-object v0, Lsk/mimac/slideshow/BuildInfo;->USER_AGENT_SUFFIX:Ljava/lang/String;

    .line 139
    .line 140
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 142
    new-instance v1, Ljava/lang/RuntimeException;

    .line 143
    .line 144
    const-string v2, "Can\'t load git.info"

    .line 145
    .line 146
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 147
    .line 148
    .line 149
    throw v1
.end method

.method public static setupUserAgent()V
    .locals 5

    .line 1
    const-string v0, "http.agent"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "Slideshow/"

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    sput-object v1, Lsk/mimac/slideshow/BuildInfo;->USER_AGENT:Ljava/lang/String;

    .line 18
    .line 19
    goto :goto_2

    .line 20
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sget-object v2, Lsk/mimac/slideshow/BuildInfo;->VERSION:Ljava/lang/String;

    .line 26
    .line 27
    const-string v4, " "

    .line 28
    .line 29
    invoke-static {v3, v2, v4, v1}, LA/g;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    sput-object v1, Lsk/mimac/slideshow/BuildInfo;->USER_AGENT:Ljava/lang/String;

    .line 34
    .line 35
    sget-object v1, Lsk/mimac/slideshow/settings/UserSettings;->REQUEST_USER_AGENT:Lsk/mimac/slideshow/settings/UserSettings;

    .line 36
    .line 37
    invoke-virtual {v1}, Lsk/mimac/slideshow/settings/UserSettings;->getString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    :goto_1
    sget-object v1, Lsk/mimac/slideshow/BuildInfo;->USER_AGENT:Ljava/lang/String;

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :goto_2
    return-void
.end method
