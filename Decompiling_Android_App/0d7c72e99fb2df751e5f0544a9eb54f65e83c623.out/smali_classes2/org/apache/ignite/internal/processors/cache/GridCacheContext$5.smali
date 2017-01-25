.class Lorg/apache/ignite/internal/processors/cache/GridCacheContext$5;
.super Ljava/lang/Object;
.source "GridCacheContext.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/C1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheKeysView(Ljava/util/Collection;)Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/C1",
        "<",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    .locals 0

    .prologue
    .line 1967
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext$5;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext.5;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext$5;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1967
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext$5;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext.5;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext$5;->apply(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v0

    return-object v0
.end method

.method public apply(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 1969
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheContext$5;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext.5;"
    if-nez p1, :cond_0

    .line 1970
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null key."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1972
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext$5;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheKeyObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v0

    return-object v0
.end method
