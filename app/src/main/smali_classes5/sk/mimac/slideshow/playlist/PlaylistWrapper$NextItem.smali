.class public Lsk/mimac/slideshow/playlist/PlaylistWrapper$NextItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk/mimac/slideshow/playlist/PlaylistWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NextItem"
.end annotation


# instance fields
.field private final item:Lsk/mimac/slideshow/database/entity/Item;

.field private final length:I

.field private final position:I


# direct methods
.method public constructor <init>(Lsk/mimac/slideshow/database/entity/Item;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/playlist/PlaylistWrapper$NextItem;->item:Lsk/mimac/slideshow/database/entity/Item;

    iput p2, p0, Lsk/mimac/slideshow/playlist/PlaylistWrapper$NextItem;->length:I

    iput p3, p0, Lsk/mimac/slideshow/playlist/PlaylistWrapper$NextItem;->position:I

    return-void
.end method


# virtual methods
.method public getItem()Lsk/mimac/slideshow/database/entity/Item;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/playlist/PlaylistWrapper$NextItem;->item:Lsk/mimac/slideshow/database/entity/Item;

    return-object v0
.end method

.method public getLength()I
    .locals 1

    iget v0, p0, Lsk/mimac/slideshow/playlist/PlaylistWrapper$NextItem;->length:I

    return v0
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Lsk/mimac/slideshow/playlist/PlaylistWrapper$NextItem;->position:I

    return v0
.end method
