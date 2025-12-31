.class public Lcom/realtek/hardware/RtkHDMIRxManager$Size;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/realtek/hardware/RtkHDMIRxManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Size"
.end annotation


# instance fields
.field public height:I

.field public width:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/realtek/hardware/RtkHDMIRxManager$Size;->width:I

    iput p2, p0, Lcom/realtek/hardware/RtkHDMIRxManager$Size;->height:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/realtek/hardware/RtkHDMIRxManager$Size;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/realtek/hardware/RtkHDMIRxManager$Size;

    iget v0, p0, Lcom/realtek/hardware/RtkHDMIRxManager$Size;->width:I

    iget v2, p1, Lcom/realtek/hardware/RtkHDMIRxManager$Size;->width:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/realtek/hardware/RtkHDMIRxManager$Size;->height:I

    iget p1, p1, Lcom/realtek/hardware/RtkHDMIRxManager$Size;->height:I

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/realtek/hardware/RtkHDMIRxManager$Size;->width:I

    mul-int/lit16 v0, v0, 0x7fc9

    iget v1, p0, Lcom/realtek/hardware/RtkHDMIRxManager$Size;->height:I

    add-int/2addr v0, v1

    return v0
.end method
