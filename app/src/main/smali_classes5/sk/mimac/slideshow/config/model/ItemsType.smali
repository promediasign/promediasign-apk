.class public Lsk/mimac/slideshow/config/model/ItemsType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/simpleframework/xml/Namespace;
    reference = "http://slideshow.digital/configuration/v4_9"
.end annotation

.annotation runtime Lorg/simpleframework/xml/Root;
    name = "ItemsType"
.end annotation


# instance fields
.field private item:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/config/model/ItemType;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/ElementList;
        entry = "item"
        inline = true
        name = "item"
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getItem()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/config/model/ItemType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lsk/mimac/slideshow/config/model/ItemsType;->item:Ljava/util/List;

    return-object v0
.end method

.method public setItem(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/config/model/ItemType;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lsk/mimac/slideshow/config/model/ItemsType;->item:Ljava/util/List;

    return-void
.end method
