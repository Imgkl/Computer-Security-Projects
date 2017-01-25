.class public interface abstract annotation Lorg/apache/ignite/compute/ComputeTaskSpis;
.super Ljava/lang/Object;
.source "ComputeTaskSpis.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lorg/apache/ignite/compute/ComputeTaskSpis;
        checkpointSpi = ""
        failoverSpi = ""
        loadBalancingSpi = ""
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract checkpointSpi()Ljava/lang/String;
.end method

.method public abstract failoverSpi()Ljava/lang/String;
.end method

.method public abstract loadBalancingSpi()Ljava/lang/String;
.end method
