.class Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$5;
.super Ljava/lang/ThreadLocal;
.source "GridCacheAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$FutureHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;)V
    .locals 0

    .prologue
    .line 140
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$5;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.5;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$5;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 140
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$5;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.5;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$5;->initialValue()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$FutureHolder;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$FutureHolder;
    .locals 1

    .prologue
    .line 142
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$5;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.5;"
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$FutureHolder;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$FutureHolder;-><init>()V

    return-object v0
.end method
