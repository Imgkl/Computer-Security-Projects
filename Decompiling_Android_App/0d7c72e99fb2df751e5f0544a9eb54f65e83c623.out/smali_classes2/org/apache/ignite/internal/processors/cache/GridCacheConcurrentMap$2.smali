.class Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$2;
.super Ljava/lang/Object;
.source "GridCacheConcurrentMap.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/P1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;
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
        "Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$2;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 104
    check-cast p1, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$2;->apply(Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;)Z

    move-result v0

    return v0
.end method

.method public apply(Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;)Z
    .locals 1
    .param p1, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    .prologue
    .line 106
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->obsolete()Z

    move-result v0

    return v0
.end method
