.class public interface abstract Lorg/apache/ignite/internal/processors/igfs/IgfsHelper;
.super Ljava/lang/Object;
.source "IgfsHelper.java"


# virtual methods
.method public abstract isIgfsBlockKey(Ljava/lang/Object;)Z
.end method

.method public abstract preProcessCacheConfiguration(Lorg/apache/ignite/configuration/CacheConfiguration;)V
.end method

.method public abstract validateCacheConfiguration(Lorg/apache/ignite/configuration/CacheConfiguration;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method
