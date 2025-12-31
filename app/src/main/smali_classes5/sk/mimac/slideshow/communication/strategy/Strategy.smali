.class public abstract Lsk/mimac/slideshow/communication/strategy/Strategy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lsk/mimac/slideshow/communication/Community;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final community:Lsk/mimac/slideshow/communication/Community;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lsk/mimac/slideshow/communication/Community;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/communication/strategy/Strategy;->community:Lsk/mimac/slideshow/communication/Community;

    return-void
.end method


# virtual methods
.method public abstract takeStep()V
.end method
