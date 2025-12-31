.class Lcom/realtek/hardware/RtkHDMIManager2$ColorEnumInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/realtek/hardware/RtkHDMIManager2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColorEnumInfo"
.end annotation


# instance fields
.field mColorSet:Lcom/realtek/hardware/ColorSet;

.field mSettingValue:I


# direct methods
.method public constructor <init>(ILcom/realtek/hardware/ColorSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/realtek/hardware/RtkHDMIManager2$ColorEnumInfo;->mSettingValue:I

    iput-object p2, p0, Lcom/realtek/hardware/RtkHDMIManager2$ColorEnumInfo;->mColorSet:Lcom/realtek/hardware/ColorSet;

    return-void
.end method
