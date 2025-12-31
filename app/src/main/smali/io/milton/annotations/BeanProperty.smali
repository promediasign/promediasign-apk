.class public interface abstract annotation Lio/milton/annotations/BeanProperty;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lio/milton/annotations/BeanProperty;
        readRole = .enum Lio/milton/resource/AccessControlledResource$Priviledge;->READ:Lio/milton/resource/AccessControlledResource$Priviledge;
        value = true
        writeRole = .enum Lio/milton/resource/AccessControlledResource$Priviledge;->WRITE:Lio/milton/resource/AccessControlledResource$Priviledge;
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract value()Z
.end method
