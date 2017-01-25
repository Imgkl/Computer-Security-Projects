.class Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$2;
.super Lorg/apache/ignite/internal/util/GridConcurrentHashSet;
.source "GridCacheSwapManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->addListener(ILjava/util/concurrent/ConcurrentMap;Lorg/apache/ignite/internal/processors/cache/GridCacheSwapListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/GridConcurrentHashSet",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/GridCacheSwapListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$2;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 325
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
