.class public interface abstract Ljavax/cache/annotation/CacheKeyInvocationContext;
.super Ljava/lang/Object;
.source "CacheKeyInvocationContext.java"

# interfaces
.implements Ljavax/cache/annotation/CacheInvocationContext;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A::",
        "Ljava/lang/annotation/Annotation;",
        ">",
        "Ljava/lang/Object;",
        "Ljavax/cache/annotation/CacheInvocationContext",
        "<TA;>;"
    }
.end annotation


# virtual methods
.method public abstract getKeyParameters()[Ljavax/cache/annotation/CacheInvocationParameter;
.end method

.method public abstract getValueParameter()Ljavax/cache/annotation/CacheInvocationParameter;
.end method
