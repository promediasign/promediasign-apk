.class public Lorg/apache/poi/ss/util/PaneInformation;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PANE_LOWER_LEFT:B = 0x2t

.field public static final PANE_LOWER_RIGHT:B = 0x0t

.field public static final PANE_UPPER_LEFT:B = 0x3t

.field public static final PANE_UPPER_RIGHT:B = 0x1t


# instance fields
.field private final activePane:B

.field private final frozen:Z

.field private final leftColumn:S

.field private final topRow:S

.field private final x:S

.field private final y:S


# direct methods
.method public constructor <init>(SSSSBZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lorg/apache/poi/ss/util/PaneInformation;->x:S

    iput-short p2, p0, Lorg/apache/poi/ss/util/PaneInformation;->y:S

    iput-short p3, p0, Lorg/apache/poi/ss/util/PaneInformation;->topRow:S

    iput-short p4, p0, Lorg/apache/poi/ss/util/PaneInformation;->leftColumn:S

    iput-byte p5, p0, Lorg/apache/poi/ss/util/PaneInformation;->activePane:B

    iput-boolean p6, p0, Lorg/apache/poi/ss/util/PaneInformation;->frozen:Z

    return-void
.end method


# virtual methods
.method public getActivePane()B
    .locals 1

    iget-byte v0, p0, Lorg/apache/poi/ss/util/PaneInformation;->activePane:B

    return v0
.end method

.method public getHorizontalSplitPosition()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/ss/util/PaneInformation;->y:S

    return v0
.end method

.method public getHorizontalSplitTopRow()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/ss/util/PaneInformation;->topRow:S

    return v0
.end method

.method public getVerticalSplitLeftColumn()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/ss/util/PaneInformation;->leftColumn:S

    return v0
.end method

.method public getVerticalSplitPosition()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/ss/util/PaneInformation;->x:S

    return v0
.end method

.method public isFreezePane()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/ss/util/PaneInformation;->frozen:Z

    return v0
.end method
