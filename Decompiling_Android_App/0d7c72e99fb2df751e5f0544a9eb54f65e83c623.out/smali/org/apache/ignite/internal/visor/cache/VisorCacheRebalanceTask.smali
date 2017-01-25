.class public Lorg/apache/ignite/internal/visor/cache/VisorCacheRebalanceTask;
.super Lorg/apache/ignite/internal/visor/VisorOneNodeTask;
.source "VisorCacheRebalanceTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/visor/cache/VisorCacheRebalanceTask$1;,
        Lorg/apache/ignite/internal/visor/cache/VisorCacheRebalanceTask$VisorCachesRebalanceJob;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/visor/VisorOneNodeTask",
        "<",
        "Ljava/util/Set",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Void;",
        ">;"
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
    .line 33
    invoke-direct {p0}, Lorg/apache/ignite/internal/visor/VisorOneNodeTask;-><init>()V

    .line 45
    return-void
.end method


# virtual methods
.method protected bridge synthetic job(Ljava/lang/Object;)Lorg/apache/ignite/internal/visor/VisorJob;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 32
    check-cast p1, Ljava/util/Set;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/visor/cache/VisorCacheRebalanceTask;->job(Ljava/util/Set;)Lorg/apache/ignite/internal/visor/cache/VisorCacheRebalanceTask$VisorCachesRebalanceJob;

    move-result-object v0

    return-object v0
.end method

.method protected job(Ljava/util/Set;)Lorg/apache/ignite/internal/visor/cache/VisorCacheRebalanceTask$VisorCachesRebalanceJob;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/ignite/internal/visor/cache/VisorCacheRebalanceTask$VisorCachesRebalanceJob;"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "arg":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheRebalanceTask$VisorCachesRebalanceJob;

    iget-boolean v1, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheRebalanceTask;->debug:Z

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/ignite/internal/visor/cache/VisorCacheRebalanceTask$VisorCachesRebalanceJob;-><init>(Ljava/util/Set;ZLorg/apache/ignite/internal/visor/cache/VisorCacheRebalanceTask$1;)V

    return-object v0
.end method
