.class public interface abstract Ljavax/cache/annotation/CacheInvocationParameter;
.super Ljava/lang/Object;
.source "CacheInvocationParameter.java"


# virtual methods
.method public abstract getAnnotations()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getParameterPosition()I
.end method

.method public abstract getRawType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract getValue()Ljava/lang/Object;
.end method
