.class public interface abstract Ljavax/cache/annotation/CacheMethodDetails;
.super Ljava/lang/Object;
.source "CacheMethodDetails.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A::",
        "Ljava/lang/annotation/Annotation;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


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

.method public abstract getCacheAnnotation()Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation
.end method

.method public abstract getCacheName()Ljava/lang/String;
.end method

.method public abstract getMethod()Ljava/lang/reflect/Method;
.end method
