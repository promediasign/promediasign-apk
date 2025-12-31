.class Lcom/illposed/osc/OSCPacketDispatcher$NullOSCSerializer;
.super Lcom/illposed/osc/OSCSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/illposed/osc/OSCPacketDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NullOSCSerializer"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/illposed/osc/OSCSerializer;-><init>(Ljava/util/List;Ljava/util/Map;Lcom/illposed/osc/BytesReceiver;)V

    return-void
.end method


# virtual methods
.method public writeOnlyTypeTags(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You need to either dispatch only packets containing meta-info, or supply a serialization factory to the dispatcher"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
