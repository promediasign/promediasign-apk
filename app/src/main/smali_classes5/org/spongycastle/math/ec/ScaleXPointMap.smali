.class public Lorg/spongycastle/math/ec/ScaleXPointMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/math/ec/ECPointMap;


# instance fields
.field protected final scale:Lorg/spongycastle/math/ec/ECFieldElement;


# direct methods
.method public constructor <init>(Lorg/spongycastle/math/ec/ECFieldElement;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/math/ec/ScaleXPointMap;->scale:Lorg/spongycastle/math/ec/ECFieldElement;

    return-void
.end method
