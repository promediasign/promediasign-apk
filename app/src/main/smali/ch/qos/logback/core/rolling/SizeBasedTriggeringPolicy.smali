.class public Lch/qos/logback/core/rolling/SizeBasedTriggeringPolicy;
.super Lch/qos/logback/core/rolling/TriggeringPolicyBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lch/qos/logback/core/rolling/TriggeringPolicyBase<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final DEFAULT_MAX_FILE_SIZE:J = 0xa00000L

.field public static final SEE_SIZE_FORMAT:Ljava/lang/String; = "http://logback.qos.ch/codes.html#sbtp_size_format"


# instance fields
.field maxFileSize:Lch/qos/logback/core/util/FileSize;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lch/qos/logback/core/rolling/TriggeringPolicyBase;-><init>()V

    new-instance v0, Lch/qos/logback/core/util/FileSize;

    const-wide/32 v1, 0xa00000

    invoke-direct {v0, v1, v2}, Lch/qos/logback/core/util/FileSize;-><init>(J)V

    iput-object v0, p0, Lch/qos/logback/core/rolling/SizeBasedTriggeringPolicy;->maxFileSize:Lch/qos/logback/core/util/FileSize;

    return-void
.end method


# virtual methods
.method public getMaxFileSize()Lch/qos/logback/core/util/FileSize;
    .locals 1

    iget-object v0, p0, Lch/qos/logback/core/rolling/SizeBasedTriggeringPolicy;->maxFileSize:Lch/qos/logback/core/util/FileSize;

    return-object v0
.end method

.method public isTriggeringEvent(Ljava/io/File;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "TE;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p1

    iget-object v0, p0, Lch/qos/logback/core/rolling/SizeBasedTriggeringPolicy;->maxFileSize:Lch/qos/logback/core/util/FileSize;

    invoke-virtual {v0}, Lch/qos/logback/core/util/FileSize;->getSize()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setMaxFileSize(Lch/qos/logback/core/util/FileSize;)V
    .locals 0

    iput-object p1, p0, Lch/qos/logback/core/rolling/SizeBasedTriggeringPolicy;->maxFileSize:Lch/qos/logback/core/util/FileSize;

    return-void
.end method
