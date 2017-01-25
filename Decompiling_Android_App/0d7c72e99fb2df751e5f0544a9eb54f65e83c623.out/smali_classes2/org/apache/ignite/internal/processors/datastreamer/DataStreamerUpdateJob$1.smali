.class Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerUpdateJob$1;
.super Ljava/lang/Object;
.source "DataStreamerUpdateJob.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/C1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerUpdateJob;->call()Ljava/lang/Object;
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
        "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;",
        "Ljava/util/Map$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerUpdateJob;

.field final synthetic val$cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerUpdateJob;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerUpdateJob$1;->this$0:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerUpdateJob;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerUpdateJob$1;->val$cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 124
    check-cast p1, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerUpdateJob$1;->apply(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public apply(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;)Ljava/util/Map$Entry;
    .locals 1
    .param p1, "e"    # Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;

    .prologue
    .line 126
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerUpdateJob$1;->val$cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {p1, v0}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;->toEntry(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
