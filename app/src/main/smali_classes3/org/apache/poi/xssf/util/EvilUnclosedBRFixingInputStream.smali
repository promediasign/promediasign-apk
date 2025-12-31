.class public Lorg/apache/poi/xssf/util/EvilUnclosedBRFixingInputStream;
.super Lorg/apache/poi/util/ReplacingInputStream;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation

.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation

.annotation runtime Lorg/apache/poi/util/Removal;
    version = "3.18"
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    const-string v0, "<br>"

    const-string v1, "<br/>"

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/poi/util/ReplacingInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
