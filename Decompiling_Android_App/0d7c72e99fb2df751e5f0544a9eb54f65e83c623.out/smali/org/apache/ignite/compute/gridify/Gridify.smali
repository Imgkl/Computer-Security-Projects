.class public interface abstract annotation Lorg/apache/ignite/compute/gridify/Gridify;
.super Ljava/lang/Object;
.source "Gridify.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lorg/apache/ignite/compute/gridify/Gridify;
        gridName = ""
        interceptor = Lorg/apache/ignite/compute/gridify/GridifyInterceptor;
        taskClass = Lorg/apache/ignite/compute/gridify/aop/GridifyDefaultTask;
        taskName = ""
        timeout = 0x0L
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
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
.method public abstract gridName()Ljava/lang/String;
.end method

.method public abstract interceptor()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/ignite/compute/gridify/GridifyInterceptor;",
            ">;"
        }
    .end annotation
.end method

.method public abstract taskClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/ignite/compute/ComputeTask",
            "<",
            "Lorg/apache/ignite/compute/gridify/GridifyArgument;",
            "*>;>;"
        }
    .end annotation
.end method

.method public abstract taskName()Ljava/lang/String;
.end method

.method public abstract timeout()J
.end method
