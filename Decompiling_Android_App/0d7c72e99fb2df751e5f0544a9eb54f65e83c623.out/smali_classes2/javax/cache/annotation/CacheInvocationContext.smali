.class public interface abstract Ljavax/cache/annotation/CacheInvocationContext;
.super Ljava/lang/Object;
.source "CacheInvocationContext.java"

# interfaces
.implements Ljavax/cache/annotation/CacheMethodDetails;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A::",
        "Ljava/lang/annotation/Annotation;",
        ">",
        "Ljava/lang/Object;",
        "Ljavax/cache/annotation/CacheMethodDetails",
        "<TA;>;"
    }
.end annotation


# virtual methods
.method public abstract getAllParameters()[Ljavax/cache/annotation/CacheInvocationParameter;
.end method

.method public abstract getTarget()Ljava/lang/Object;
.end method

.method public abstract unwrap(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation
.end method
