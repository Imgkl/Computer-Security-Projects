.class public abstract Lorg/apache/ignite/internal/processors/cache/jta/CacheJtaManagerAdapter;
.super Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter;
.source "CacheJtaManagerAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract checkJta()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public abstract createTmLookup(Lorg/apache/ignite/configuration/CacheConfiguration;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public abstract tmLookup()Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method
