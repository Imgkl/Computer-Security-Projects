.class public interface abstract annotation Ljavax/cache/annotation/CacheDefaults;
.super Ljava/lang/Object;
.source "CacheDefaults.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Ljavax/cache/annotation/CacheDefaults;
        cacheKeyGenerator = Ljavax/cache/annotation/CacheKeyGenerator;
        cacheName = ""
        cacheResolverFactory = Ljavax/cache/annotation/CacheResolverFactory;
    .end subannotation
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
.method public abstract cacheKeyGenerator()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Ljavax/cache/annotation/CacheKeyGenerator;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/enterprise/util/Nonbinding;
    .end annotation
.end method

.method public abstract cacheName()Ljava/lang/String;
    .annotation runtime Ljavax/enterprise/util/Nonbinding;
    .end annotation
.end method

.method public abstract cacheResolverFactory()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Ljavax/cache/annotation/CacheResolverFactory;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/enterprise/util/Nonbinding;
    .end annotation
.end method
