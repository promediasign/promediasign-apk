.class public Lsk/mimac/slideshow/utils/BooleanHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private value:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/utils/BooleanHolder;->value:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setValue(Z)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lsk/mimac/slideshow/utils/BooleanHolder;->value:Ljava/lang/Boolean;

    return-void
.end method
