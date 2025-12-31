.class public abstract Lcom/dropbox/core/stone/StoneDeserializerLogger;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static LOGGER_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/dropbox/core/stone/StoneDeserializerLogger;->LOGGER_MAP:Ljava/util/Map;

    return-void
.end method

.method public static log(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    sget-object p1, Lcom/dropbox/core/stone/StoneDeserializerLogger;->LOGGER_MAP:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object p1, Lcom/dropbox/core/stone/StoneDeserializerLogger;->LOGGER_MAP:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, LA/g;->x(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method
