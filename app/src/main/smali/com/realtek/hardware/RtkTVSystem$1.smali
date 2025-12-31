.class Lcom/realtek/hardware/RtkTVSystem$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/realtek/hardware/RtkTVSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/realtek/hardware/RtkTVSystem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/realtek/hardware/RtkTVSystem;
    .locals 2

    .line 1
    new-instance v0, Lcom/realtek/hardware/RtkTVSystem;

    invoke-direct {v0}, Lcom/realtek/hardware/RtkTVSystem;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/realtek/hardware/RtkTVSystem;->setVideoSystem(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/realtek/hardware/RtkTVSystem;->setVideoStandard(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/realtek/hardware/RtkTVSystem;->setIsWideScreen(I)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/realtek/hardware/RtkTVSystem$1;->createFromParcel(Landroid/os/Parcel;)Lcom/realtek/hardware/RtkTVSystem;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/realtek/hardware/RtkTVSystem;
    .locals 0

    .line 1
    new-array p1, p1, [Lcom/realtek/hardware/RtkTVSystem;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/realtek/hardware/RtkTVSystem$1;->newArray(I)[Lcom/realtek/hardware/RtkTVSystem;

    move-result-object p1

    return-object p1
.end method
