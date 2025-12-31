.class public Lorg/apache/commons/collections4/iterators/EmptyOrderedMapIterator;
.super Lorg/apache/commons/collections4/iterators/AbstractEmptyMapIterator;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/collections4/OrderedMapIterator;
.implements Lorg/apache/commons/collections4/ResettableIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/iterators/AbstractEmptyMapIterator<",
        "TK;TV;>;",
        "Lorg/apache/commons/collections4/OrderedMapIterator<",
        "TK;TV;>;",
        "Lorg/apache/commons/collections4/ResettableIterator<",
        "TK;>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/commons/collections4/OrderedMapIterator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/commons/collections4/iterators/EmptyOrderedMapIterator;

    invoke-direct {v0}, Lorg/apache/commons/collections4/iterators/EmptyOrderedMapIterator;-><init>()V

    sput-object v0, Lorg/apache/commons/collections4/iterators/EmptyOrderedMapIterator;->INSTANCE:Lorg/apache/commons/collections4/OrderedMapIterator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/AbstractEmptyMapIterator;-><init>()V

    return-void
.end method
