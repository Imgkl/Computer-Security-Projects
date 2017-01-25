.class Lorg/apache/ignite/internal/visor/cache/VisorCacheResetMetricsTask$VisorCacheResetMetricsJob;
.super Lorg/apache/ignite/internal/visor/VisorJob;
.source "VisorCacheResetMetricsTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/visor/cache/VisorCacheResetMetricsTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VisorCacheResetMetricsJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/visor/VisorJob",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method private constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "arg"    # Ljava/lang/String;
    .param p2, "debug"    # Z

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/visor/VisorJob;-><init>(Ljava/lang/Object;Z)V

    .line 51
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ZLorg/apache/ignite/internal/visor/cache/VisorCacheResetMetricsTask$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Lorg/apache/ignite/internal/visor/cache/VisorCacheResetMetricsTask$1;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/visor/cache/VisorCacheResetMetricsTask$VisorCacheResetMetricsJob;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 41
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/visor/cache/VisorCacheResetMetricsTask$VisorCacheResetMetricsJob;->run(Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected run(Ljava/lang/String;)Ljava/lang/Void;
    .locals 2
    .param p1, "cacheName"    # Ljava/lang/String;

    .prologue
    .line 55
    iget-object v1, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheResetMetricsTask$VisorCacheResetMetricsJob;->ignite:Lorg/apache/ignite/internal/IgniteEx;

    invoke-interface {v1, p1}, Lorg/apache/ignite/internal/IgniteEx;->cachex(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCache;

    move-result-object v0

    .line 57
    .local v0, "cache":Lorg/apache/ignite/internal/processors/cache/GridCache;
    if-eqz v0, :cond_0

    .line 58
    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/GridCache;->mxBean()Lorg/apache/ignite/mxbean/CacheMetricsMXBean;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/mxbean/CacheMetricsMXBean;->clear()V

    .line 60
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const-class v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheResetMetricsTask$VisorCacheResetMetricsJob;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
