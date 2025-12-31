.class Lcom/realtek/hardware/RtkHDMIManager2$HDRColorSet;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/realtek/hardware/RtkHDMIManager2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HDRColorSet"
.end annotation


# instance fields
.field mColor:I

.field mDepth:I

.field mHDR:I

.field final synthetic this$0:Lcom/realtek/hardware/RtkHDMIManager2;


# direct methods
.method public constructor <init>(Lcom/realtek/hardware/RtkHDMIManager2;III)V
    .locals 0

    iput-object p1, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDRColorSet;->this$0:Lcom/realtek/hardware/RtkHDMIManager2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDRColorSet;->mHDR:I

    iput p3, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDRColorSet;->mColor:I

    iput p4, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDRColorSet;->mDepth:I

    return-void
.end method


# virtual methods
.method public isSupport(II)Z
    .locals 1

    iget v0, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDRColorSet;->mColor:I

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/realtek/hardware/RtkHDMIManager2$HDRColorSet;->mDepth:I

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
