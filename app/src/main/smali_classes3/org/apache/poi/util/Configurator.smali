.class public Lorg/apache/poi/util/Configurator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static logger:Lorg/apache/poi/util/POILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/util/Configurator;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/util/Configurator;->logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIntValue(Ljava/lang/String;I)I
    .locals 4

    .line 1
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    sget-object v1, Lorg/apache/poi/util/Configurator;->logger:Lorg/apache/poi/util/POILogger;

    .line 11
    .line 12
    const-string v2, "System property -D"

    .line 13
    .line 14
    const-string v3, " do not contains a valid integer "

    .line 15
    .line 16
    invoke-static {v2, p0, v3, v0}, LA/g;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const/4 v0, 0x1

    .line 21
    new-array v0, v0, [Ljava/lang/Object;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    aput-object p0, v0, v2

    .line 25
    .line 26
    const/4 p0, 0x7

    .line 27
    invoke-virtual {v1, p0, v0}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    return p1
.end method
