.class public Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateTxResult;
.super Ljava/lang/Object;
.source "GridCacheUpdateTxResult.java"


# instance fields
.field private final oldVal:Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private final success:Z


# direct methods
.method constructor <init>(ZLorg/apache/ignite/internal/processors/cache/CacheObject;)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "oldVal"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateTxResult;->success:Z

    .line 43
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateTxResult;->oldVal:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 44
    return-void
.end method


# virtual methods
.method public oldValue()Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateTxResult;->oldVal:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    return-object v0
.end method

.method public success()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateTxResult;->success:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateTxResult;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
