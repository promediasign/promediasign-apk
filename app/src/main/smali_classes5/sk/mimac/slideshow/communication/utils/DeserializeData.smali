.class public Lsk/mimac/slideshow/communication/utils/DeserializeData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final offset:I

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/communication/utils/DeserializeData;->value:Ljava/lang/Object;

    iput p2, p0, Lsk/mimac/slideshow/communication/utils/DeserializeData;->offset:I

    return-void
.end method


# virtual methods
.method public getOffset()I
    .locals 1

    iget v0, p0, Lsk/mimac/slideshow/communication/utils/DeserializeData;->offset:I

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lsk/mimac/slideshow/communication/utils/DeserializeData;->value:Ljava/lang/Object;

    return-object v0
.end method
