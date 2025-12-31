.class public Lorg/apache/poi/util/SystemOutLogger;
.super Lorg/apache/poi/util/POILogger;
.source "SourceFile"


# instance fields
.field private _cat:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/util/POILogger;-><init>()V

    return-void
.end method


# virtual methods
.method public _log(ILjava/lang/Object;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/util/SystemOutLogger;->_log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public _log(ILjava/lang/Object;Ljava/lang/Throwable;)V
    .locals 4
    .annotation build Lorg/apache/poi/util/SuppressForbidden;
        value = "uses printStackTrace"
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/util/SystemOutLogger;->check(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/poi/util/SystemOutLogger;->_cat:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/apache/poi/util/POILogger;->LEVEL_STRINGS_SHORT:[Ljava/lang/String;

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    aget-object p1, v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    invoke-virtual {p3, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_0
    return-void
.end method

.method public check(I)Z
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "poi.log.level"

    const-string v2, "5"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    const/4 v1, 0x1

    :goto_0
    if-lt p1, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public initialize(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/util/SystemOutLogger;->_cat:Ljava/lang/String;

    return-void
.end method
