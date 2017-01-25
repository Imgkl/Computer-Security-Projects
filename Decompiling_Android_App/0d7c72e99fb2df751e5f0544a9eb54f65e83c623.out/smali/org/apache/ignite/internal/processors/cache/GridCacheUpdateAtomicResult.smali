.class public Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;
.super Ljava/lang/Object;
.source "GridCacheUpdateAtomicResult.java"


# instance fields
.field private final conflictExpireTime:J

.field private final conflictRes:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext",
            "<**>;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private final newTtl:J

.field private final newVal:Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private final oldVal:Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private res:Lorg/apache/ignite/lang/IgniteBiTuple;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation
.end field

.field private final rmvVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private final sndToDht:Z

.field private final success:Z


# direct methods
.method public constructor <init>(ZLorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/lang/IgniteBiTuple;JJLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;Z)V
    .locals 1
    .param p1, "success"    # Z
    .param p2, "oldVal"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "newVal"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lorg/apache/ignite/lang/IgniteBiTuple;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5, "newTtl"    # J
    .param p7, "conflictExpireTime"    # J
    .param p9, "rmvVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11, "sndToDht"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lorg/apache/ignite/internal/processors/cache/CacheObject;",
            "Lorg/apache/ignite/internal/processors/cache/CacheObject;",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Exception;",
            ">;JJ",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext",
            "<**>;Z)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p4, "res":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Object;Ljava/lang/Exception;>;"
    .local p10, "conflictRes":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;, "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext<**>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-boolean p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;->success:Z

    .line 86
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;->oldVal:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 87
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;->newVal:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 88
    iput-object p4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;->res:Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 89
    iput-wide p5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;->newTtl:J

    .line 90
    iput-wide p7, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;->conflictExpireTime:J

    .line 91
    iput-object p9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;->rmvVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 92
    iput-object p10, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;->conflictRes:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;

    .line 93
    iput-boolean p11, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;->sndToDht:Z

    .line 94
    return-void
.end method


# virtual methods
.method public computedResult()Lorg/apache/ignite/lang/IgniteBiTuple;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;->res:Lorg/apache/ignite/lang/IgniteBiTuple;

    return-object v0
.end method

.method public conflictExpireTime()J
    .locals 2

    .prologue
    .line 136
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;->conflictExpireTime:J

    return-wide v0
.end method

.method public conflictResolveResult()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext",
            "<**>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;->conflictRes:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;

    return-object v0
.end method

.method public newTtl()J
    .locals 2

    .prologue
    .line 128
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;->newTtl:J

    return-wide v0
.end method

.method public newValue()Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;->newVal:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    return-object v0
.end method

.method public oldValue()Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;->oldVal:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    return-object v0
.end method

.method public removeVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;->rmvVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    return-object v0
.end method

.method public sendToDht()Z
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;->sndToDht:Z

    return v0
.end method

.method public success()Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;->success:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
