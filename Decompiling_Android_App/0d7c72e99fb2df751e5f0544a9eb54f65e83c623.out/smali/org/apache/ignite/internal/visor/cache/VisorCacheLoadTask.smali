.class public Lorg/apache/ignite/internal/visor/cache/VisorCacheLoadTask;
.super Lorg/apache/ignite/internal/visor/VisorOneNodeTask;
.source "VisorCacheLoadTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/visor/cache/VisorCacheLoadTask$1;,
        Lorg/apache/ignite/internal/visor/cache/VisorCacheLoadTask$VisorCachesLoadJob;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/visor/VisorOneNodeTask",
        "<",
        "Lorg/apache/ignite/internal/util/lang/GridTuple3",
        "<",
        "Ljava/util/Set",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Long;",
        "[",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation

.annotation runtime Lorg/apache/ignite/internal/processors/task/GridInternal;
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/apache/ignite/internal/visor/VisorOneNodeTask;-><init>()V

    .line 46
    return-void
.end method


# virtual methods
.method protected bridge synthetic job(Ljava/lang/Object;)Lorg/apache/ignite/internal/visor/VisorJob;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 34
    check-cast p1, Lorg/apache/ignite/internal/util/lang/GridTuple3;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/visor/cache/VisorCacheLoadTask;->job(Lorg/apache/ignite/internal/util/lang/GridTuple3;)Lorg/apache/ignite/internal/visor/cache/VisorCacheLoadTask$VisorCachesLoadJob;

    move-result-object v0

    return-object v0
.end method

.method protected job(Lorg/apache/ignite/internal/util/lang/GridTuple3;)Lorg/apache/ignite/internal/visor/cache/VisorCacheLoadTask$VisorCachesLoadJob;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/lang/GridTuple3",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Long;",
            "[",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/apache/ignite/internal/visor/cache/VisorCacheLoadTask$VisorCachesLoadJob;"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "arg":Lorg/apache/ignite/internal/util/lang/GridTuple3;, "Lorg/apache/ignite/internal/util/lang/GridTuple3<Ljava/util/Set<Ljava/lang/String;>;Ljava/lang/Long;[Ljava/lang/Object;>;"
    new-instance v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheLoadTask$VisorCachesLoadJob;

    iget-boolean v1, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheLoadTask;->debug:Z

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/ignite/internal/visor/cache/VisorCacheLoadTask$VisorCachesLoadJob;-><init>(Lorg/apache/ignite/internal/util/lang/GridTuple3;ZLorg/apache/ignite/internal/visor/cache/VisorCacheLoadTask$1;)V

    return-object v0
.end method
