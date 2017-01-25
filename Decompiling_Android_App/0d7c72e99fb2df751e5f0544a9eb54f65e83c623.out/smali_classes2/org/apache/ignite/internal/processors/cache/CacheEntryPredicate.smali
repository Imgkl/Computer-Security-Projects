.class public interface abstract Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
.super Ljava/lang/Object;
.source "CacheEntryPredicate.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgnitePredicate;
.implements Lorg/apache/ignite/plugin/extensions/communication/Message;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/lang/IgnitePredicate",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
        ">;",
        "Lorg/apache/ignite/plugin/extensions/communication/Message;"
    }
.end annotation


# virtual methods
.method public abstract entryLocked(Z)V
.end method

.method public abstract finishUnmarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/lang/ClassLoader;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public abstract prepareMarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method
