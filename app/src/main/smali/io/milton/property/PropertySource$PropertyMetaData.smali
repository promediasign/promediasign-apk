.class public Lio/milton/property/PropertySource$PropertyMetaData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/milton/property/PropertySource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PropertyMetaData"
.end annotation


# static fields
.field public static final UNKNOWN:Lio/milton/property/PropertySource$PropertyMetaData;


# instance fields
.field private final accessibility:Lio/milton/property/PropertySource$PropertyAccessibility;

.field private final valueType:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lio/milton/property/PropertySource$PropertyMetaData;

    sget-object v1, Lio/milton/property/PropertySource$PropertyAccessibility;->UNKNOWN:Lio/milton/property/PropertySource$PropertyAccessibility;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/milton/property/PropertySource$PropertyMetaData;-><init>(Lio/milton/property/PropertySource$PropertyAccessibility;Ljava/lang/Class;)V

    sput-object v0, Lio/milton/property/PropertySource$PropertyMetaData;->UNKNOWN:Lio/milton/property/PropertySource$PropertyMetaData;

    return-void
.end method

.method public constructor <init>(Lio/milton/property/PropertySource$PropertyAccessibility;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/milton/property/PropertySource$PropertyMetaData;->accessibility:Lio/milton/property/PropertySource$PropertyAccessibility;

    iput-object p2, p0, Lio/milton/property/PropertySource$PropertyMetaData;->valueType:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public getValueType()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lio/milton/property/PropertySource$PropertyMetaData;->valueType:Ljava/lang/Class;

    return-object v0
.end method

.method public isUnknown()Z
    .locals 2

    iget-object v0, p0, Lio/milton/property/PropertySource$PropertyMetaData;->accessibility:Lio/milton/property/PropertySource$PropertyAccessibility;

    sget-object v1, Lio/milton/property/PropertySource$PropertyAccessibility;->UNKNOWN:Lio/milton/property/PropertySource$PropertyAccessibility;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isWritable()Z
    .locals 2

    iget-object v0, p0, Lio/milton/property/PropertySource$PropertyMetaData;->accessibility:Lio/milton/property/PropertySource$PropertyAccessibility;

    sget-object v1, Lio/milton/property/PropertySource$PropertyAccessibility;->WRITABLE:Lio/milton/property/PropertySource$PropertyAccessibility;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
