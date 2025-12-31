.class public abstract Lcom/scand/svg/css/Selector;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addSpecificity(II)I
    .locals 0

    add-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public abstract getElementMatcher()Lcom/scand/svg/css/ElementMatcher;
.end method

.method public abstract getSpecificity()I
.end method

.method public abstract serialize(Ljava/io/PrintWriter;)V
.end method
