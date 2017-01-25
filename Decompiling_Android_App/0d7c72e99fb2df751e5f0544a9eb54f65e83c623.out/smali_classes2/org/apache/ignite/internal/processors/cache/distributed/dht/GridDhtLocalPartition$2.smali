.class Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition$2;
.super Ljava/lang/Object;
.source "GridDhtLocalPartition.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/internal/GPC;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->tryEvictAsync(Z)Lorg/apache/ignite/internal/IgniteInternalFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/internal/GPC",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;)V
    .locals 0

    .prologue
    .line 447
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition$2;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 449
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition$2;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->access$100(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 447
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition$2;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
