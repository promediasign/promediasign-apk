.class public Lorg/apache/commons/collections4/iterators/EmptyIterator;
.super Lorg/apache/commons/collections4/iterators/AbstractEmptyIterator;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/collections4/ResettableIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/iterators/AbstractEmptyIterator<",
        "TE;>;",
        "Lorg/apache/commons/collections4/ResettableIterator<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Ljava/util/Iterator;

.field public static final RESETTABLE_INSTANCE:Lorg/apache/commons/collections4/ResettableIterator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/commons/collections4/iterators/EmptyIterator;

    invoke-direct {v0}, Lorg/apache/commons/collections4/iterators/EmptyIterator;-><init>()V

    sput-object v0, Lorg/apache/commons/collections4/iterators/EmptyIterator;->RESETTABLE_INSTANCE:Lorg/apache/commons/collections4/ResettableIterator;

    sput-object v0, Lorg/apache/commons/collections4/iterators/EmptyIterator;->INSTANCE:Ljava/util/Iterator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/AbstractEmptyIterator;-><init>()V

    return-void
.end method

.method public static emptyIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    sget-object v0, Lorg/apache/commons/collections4/iterators/EmptyIterator;->INSTANCE:Ljava/util/Iterator;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic hasNext()Z
    .locals 1

    invoke-super {p0}, Lorg/apache/commons/collections4/iterators/AbstractEmptyIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lorg/apache/commons/collections4/iterators/AbstractEmptyIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove()V
    .locals 0

    invoke-super {p0}, Lorg/apache/commons/collections4/iterators/AbstractEmptyIterator;->remove()V

    return-void
.end method
