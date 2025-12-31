.class public Lsk/mimac/slideshow/gui/play/PlayId;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsk/mimac/slideshow/gui/play/PlayId$SyncKey;
    }
.end annotation


# instance fields
.field private final playId:I

.field private final position:I

.field private final syncCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lsk/mimac/slideshow/gui/play/PlayId;->playId:I

    iput p2, p0, Lsk/mimac/slideshow/gui/play/PlayId;->position:I

    iput-object p3, p0, Lsk/mimac/slideshow/gui/play/PlayId;->syncCode:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(Lsk/mimac/slideshow/gui/play/PlayId;)I
    .locals 0

    iget p0, p0, Lsk/mimac/slideshow/gui/play/PlayId;->position:I

    return p0
.end method

.method public static synthetic access$100(Lsk/mimac/slideshow/gui/play/PlayId;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lsk/mimac/slideshow/gui/play/PlayId;->syncCode:Ljava/lang/String;

    return-object p0
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
    check-cast p1, Lsk/mimac/slideshow/gui/play/PlayId;

    iget v2, p0, Lsk/mimac/slideshow/gui/play/PlayId;->playId:I

    iget p1, p1, Lsk/mimac/slideshow/gui/play/PlayId;->playId:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getPlayId()I
    .locals 1

    iget v0, p0, Lsk/mimac/slideshow/gui/play/PlayId;->playId:I

    return v0
.end method

.method public getSyncKey()Lsk/mimac/slideshow/gui/play/PlayId$SyncKey;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/play/PlayId;->syncCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Lsk/mimac/slideshow/gui/play/PlayId$SyncKey;

    invoke-direct {v0, p0}, Lsk/mimac/slideshow/gui/play/PlayId$SyncKey;-><init>(Lsk/mimac/slideshow/gui/play/PlayId;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lsk/mimac/slideshow/gui/play/PlayId;->playId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lsk/mimac/slideshow/gui/play/PlayId;->playId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lsk/mimac/slideshow/gui/play/PlayId;->position:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsk/mimac/slideshow/gui/play/PlayId;->syncCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
