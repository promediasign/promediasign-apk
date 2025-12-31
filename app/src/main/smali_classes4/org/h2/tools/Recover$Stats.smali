.class Lorg/h2/tools/Recover$Stats;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/tools/Recover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Stats"
.end annotation


# instance fields
.field free:I

.field pageDataEmpty:J

.field pageDataHead:J

.field pageDataRows:J

.field final pageTypeCount:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/h2/tools/Recover$Stats;->pageTypeCount:[I

    return-void
.end method
