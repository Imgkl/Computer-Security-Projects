.class Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan$1;
.super Ljava/lang/Object;
.source "GridCacheExplicitLockSpan.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/P1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;->candidate(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/P1",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;

.field final synthetic val$ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan$1;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan$1;->val$ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 218
    check-cast p1, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan$1;->apply(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)Z

    move-result v0

    return v0
.end method

.method public apply(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)Z
    .locals 2
    .param p1, "cand"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .prologue
    .line 220
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheExplicitLockSpan$1;->val$ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
