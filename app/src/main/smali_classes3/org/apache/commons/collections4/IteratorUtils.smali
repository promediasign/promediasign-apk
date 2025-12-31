.class public abstract Lorg/apache/commons/collections4/IteratorUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EMPTY_ITERATOR:Lorg/apache/commons/collections4/ResettableIterator;

.field public static final EMPTY_LIST_ITERATOR:Lorg/apache/commons/collections4/ResettableListIterator;

.field public static final EMPTY_MAP_ITERATOR:Lorg/apache/commons/collections4/MapIterator;

.field public static final EMPTY_ORDERED_ITERATOR:Lorg/apache/commons/collections4/OrderedIterator;

.field public static final EMPTY_ORDERED_MAP_ITERATOR:Lorg/apache/commons/collections4/OrderedMapIterator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/commons/collections4/iterators/EmptyIterator;->RESETTABLE_INSTANCE:Lorg/apache/commons/collections4/ResettableIterator;

    sput-object v0, Lorg/apache/commons/collections4/IteratorUtils;->EMPTY_ITERATOR:Lorg/apache/commons/collections4/ResettableIterator;

    sget-object v0, Lorg/apache/commons/collections4/iterators/EmptyListIterator;->RESETTABLE_INSTANCE:Lorg/apache/commons/collections4/ResettableListIterator;

    sput-object v0, Lorg/apache/commons/collections4/IteratorUtils;->EMPTY_LIST_ITERATOR:Lorg/apache/commons/collections4/ResettableListIterator;

    sget-object v0, Lorg/apache/commons/collections4/iterators/EmptyOrderedIterator;->INSTANCE:Lorg/apache/commons/collections4/OrderedIterator;

    sput-object v0, Lorg/apache/commons/collections4/IteratorUtils;->EMPTY_ORDERED_ITERATOR:Lorg/apache/commons/collections4/OrderedIterator;

    sget-object v0, Lorg/apache/commons/collections4/iterators/EmptyMapIterator;->INSTANCE:Lorg/apache/commons/collections4/MapIterator;

    sput-object v0, Lorg/apache/commons/collections4/IteratorUtils;->EMPTY_MAP_ITERATOR:Lorg/apache/commons/collections4/MapIterator;

    sget-object v0, Lorg/apache/commons/collections4/iterators/EmptyOrderedMapIterator;->INSTANCE:Lorg/apache/commons/collections4/OrderedMapIterator;

    sput-object v0, Lorg/apache/commons/collections4/IteratorUtils;->EMPTY_ORDERED_MAP_ITERATOR:Lorg/apache/commons/collections4/OrderedMapIterator;

    return-void
.end method
