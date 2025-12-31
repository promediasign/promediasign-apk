.class public abstract Lorg/h2/index/PageIndex;
.super Lorg/h2/index/BaseIndex;
.source "SourceFile"


# instance fields
.field protected rootPageId:I

.field private sortedInsertMode:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/h2/index/BaseIndex;-><init>()V

    return-void
.end method


# virtual methods
.method public getRootPageId()I
    .locals 1

    iget v0, p0, Lorg/h2/index/PageIndex;->rootPageId:I

    return v0
.end method

.method public isSortedInsertMode()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/index/PageIndex;->sortedInsertMode:Z

    return v0
.end method

.method public setSortedInsertMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/index/PageIndex;->sortedInsertMode:Z

    return-void
.end method

.method public abstract writeRowCount()V
.end method
