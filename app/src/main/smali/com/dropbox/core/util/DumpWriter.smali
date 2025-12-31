.class public abstract Lcom/dropbox/core/util/DumpWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/util/DumpWriter$Plain;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract f(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;
.end method

.method public abstract recordEnd()Lcom/dropbox/core/util/DumpWriter;
.end method

.method public abstract recordStart(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;
.end method

.method public v(Lcom/dropbox/core/util/Dumpable;)Lcom/dropbox/core/util/DumpWriter;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    const-string p1, "null"

    invoke-virtual {p0, p1}, Lcom/dropbox/core/util/DumpWriter;->verbatim(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/dropbox/core/util/Dumpable;->getTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dropbox/core/util/DumpWriter;->recordStart(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    invoke-virtual {p1, p0}, Lcom/dropbox/core/util/Dumpable;->dumpFields(Lcom/dropbox/core/util/DumpWriter;)V

    invoke-virtual {p0}, Lcom/dropbox/core/util/DumpWriter;->recordEnd()Lcom/dropbox/core/util/DumpWriter;

    :goto_0
    return-object p0
.end method

.method public v(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;
    .locals 0

    .line 2
    if-nez p1, :cond_0

    const-string p1, "null"

    :goto_0
    invoke-virtual {p0, p1}, Lcom/dropbox/core/util/DumpWriter;->verbatim(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lcom/dropbox/core/util/StringUtil;->jq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :goto_1
    return-object p0
.end method

.method public abstract verbatim(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;
.end method
