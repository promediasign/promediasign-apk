.class Lorg/apache/poi/ddf/EscherDggRecord$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/ddf/EscherDggRecord;->sortCluster()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/ddf/EscherDggRecord;


# direct methods
.method public constructor <init>(Lorg/apache/poi/ddf/EscherDggRecord;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/ddf/EscherDggRecord$1;->this$0:Lorg/apache/poi/ddf/EscherDggRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    check-cast p2, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ddf/EscherDggRecord$1;->compare(Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;)I
    .locals 2

    .line 2
    invoke-virtual {p1}, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->getDrawingGroupId()I

    move-result v0

    invoke-virtual {p2}, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->getDrawingGroupId()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p2}, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->getNumShapeIdsUsed()I

    move-result p2

    invoke-virtual {p1}, Lorg/apache/poi/ddf/EscherDggRecord$FileIdCluster;->getNumShapeIdsUsed()I

    move-result p1

    sub-int/2addr p2, p1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    return v0
.end method
