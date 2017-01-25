.class Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler$5;
.super Ljava/lang/Object;
.source "IgniteTxHandler.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/CI2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/CI2",
        "<",
        "Ljava/util/UUID;",
        "Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler$5;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 93
    check-cast p1, Ljava/util/UUID;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler$5;->apply(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;)V

    return-void
.end method

.method public apply(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;)V
    .locals 1
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "msg"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;

    .prologue
    .line 95
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler$5;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;

    check-cast p2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;

    .end local p2    # "msg":Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;
    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->processDhtTxPrepareRequest(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;)V

    .line 96
    return-void
.end method
