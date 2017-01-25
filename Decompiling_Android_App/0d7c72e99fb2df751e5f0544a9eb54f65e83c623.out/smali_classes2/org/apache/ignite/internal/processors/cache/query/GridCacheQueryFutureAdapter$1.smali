.class Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter$1;
.super Ljava/lang/Object;
.source "GridCacheQueryFutureAdapter.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/C1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->maskNulls(Ljava/util/Collection;)Ljava/util/Collection;
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
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;)V
    .locals 0

    .prologue
    .line 434
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter$1;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter.1;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter$1;->this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 436
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter$1;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter.1;"
    if-eqz p1, :cond_0

    .end local p1    # "e":Ljava/lang/Object;
    :goto_0
    return-object p1

    .restart local p1    # "e":Ljava/lang/Object;
    :cond_0
    # getter for: Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->NULL:Ljava/lang/Object;
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->access$000()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0
.end method
