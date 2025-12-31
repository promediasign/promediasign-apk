.class public Lsk/mimac/slideshow/gui/play/PlayId$SyncKey;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk/mimac/slideshow/gui/play/PlayId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SyncKey"
.end annotation


# instance fields
.field final synthetic this$0:Lsk/mimac/slideshow/gui/play/PlayId;


# direct methods
.method public constructor <init>(Lsk/mimac/slideshow/gui/play/PlayId;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/gui/play/PlayId$SyncKey;->this$0:Lsk/mimac/slideshow/gui/play/PlayId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getPlayId()Lsk/mimac/slideshow/gui/play/PlayId;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/play/PlayId$SyncKey;->this$0:Lsk/mimac/slideshow/gui/play/PlayId;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lsk/mimac/slideshow/gui/play/PlayId$SyncKey;

    iget-object v2, p0, Lsk/mimac/slideshow/gui/play/PlayId$SyncKey;->this$0:Lsk/mimac/slideshow/gui/play/PlayId;

    invoke-static {v2}, Lsk/mimac/slideshow/gui/play/PlayId;->access$000(Lsk/mimac/slideshow/gui/play/PlayId;)I

    move-result v2

    invoke-direct {p1}, Lsk/mimac/slideshow/gui/play/PlayId$SyncKey;->getPlayId()Lsk/mimac/slideshow/gui/play/PlayId;

    move-result-object v3

    invoke-static {v3}, Lsk/mimac/slideshow/gui/play/PlayId;->access$000(Lsk/mimac/slideshow/gui/play/PlayId;)I

    move-result v3

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lsk/mimac/slideshow/gui/play/PlayId$SyncKey;->this$0:Lsk/mimac/slideshow/gui/play/PlayId;

    invoke-static {v2}, Lsk/mimac/slideshow/gui/play/PlayId;->access$100(Lsk/mimac/slideshow/gui/play/PlayId;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1}, Lsk/mimac/slideshow/gui/play/PlayId$SyncKey;->getPlayId()Lsk/mimac/slideshow/gui/play/PlayId;

    move-result-object p1

    invoke-static {p1}, Lsk/mimac/slideshow/gui/play/PlayId;->access$100(Lsk/mimac/slideshow/gui/play/PlayId;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lsk/mimac/slideshow/gui/play/PlayId$SyncKey;->this$0:Lsk/mimac/slideshow/gui/play/PlayId;

    invoke-static {v0}, Lsk/mimac/slideshow/gui/play/PlayId;->access$000(Lsk/mimac/slideshow/gui/play/PlayId;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lsk/mimac/slideshow/gui/play/PlayId$SyncKey;->this$0:Lsk/mimac/slideshow/gui/play/PlayId;

    invoke-static {v1}, Lsk/mimac/slideshow/gui/play/PlayId;->access$100(Lsk/mimac/slideshow/gui/play/PlayId;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
