.class Lorg/apache/ignite/internal/processors/rest/handlers/datastructures/DataStructuresCommandHandler$2;
.super Ljava/lang/Object;
.source "DataStructuresCommandHandler.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/rest/handlers/datastructures/DataStructuresCommandHandler;->incrementOrDecrement(Lorg/apache/ignite/internal/processors/rest/request/DataStructuresRequest;)Lorg/apache/ignite/internal/IgniteInternalFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/rest/handlers/datastructures/DataStructuresCommandHandler;

.field final synthetic val$req:Lorg/apache/ignite/internal/processors/rest/request/DataStructuresRequest;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/rest/handlers/datastructures/DataStructuresCommandHandler;Lorg/apache/ignite/internal/processors/rest/request/DataStructuresRequest;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/handlers/datastructures/DataStructuresCommandHandler$2;->this$0:Lorg/apache/ignite/internal/processors/rest/handlers/datastructures/DataStructuresCommandHandler;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/rest/handlers/datastructures/DataStructuresCommandHandler$2;->val$req:Lorg/apache/ignite/internal/processors/rest/request/DataStructuresRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 97
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/rest/handlers/datastructures/DataStructuresCommandHandler$2;->val$req:Lorg/apache/ignite/internal/processors/rest/request/DataStructuresRequest;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/rest/request/DataStructuresRequest;->initial()Ljava/lang/Long;

    move-result-object v2

    .line 98
    .local v2, "init":Ljava/lang/Long;
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/rest/handlers/datastructures/DataStructuresCommandHandler$2;->val$req:Lorg/apache/ignite/internal/processors/rest/request/DataStructuresRequest;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/rest/request/DataStructuresRequest;->delta()Ljava/lang/Long;

    move-result-object v1

    .line 100
    .local v1, "delta":Ljava/lang/Long;
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/rest/handlers/datastructures/DataStructuresCommandHandler$2;->val$req:Lorg/apache/ignite/internal/processors/rest/request/DataStructuresRequest;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/rest/request/DataStructuresRequest;->command()Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    move-result-object v6

    sget-object v7, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->ATOMIC_DECREMENT:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    if-ne v6, v7, :cond_0

    move v0, v5

    .line 102
    .local v0, "decr":Z
    :goto_0
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/rest/handlers/datastructures/DataStructuresCommandHandler$2;->val$req:Lorg/apache/ignite/internal/processors/rest/request/DataStructuresRequest;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/rest/request/DataStructuresRequest;->key()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 104
    .local v3, "key":Ljava/lang/String;
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/rest/handlers/datastructures/DataStructuresCommandHandler$2;->this$0:Lorg/apache/ignite/internal/processors/rest/handlers/datastructures/DataStructuresCommandHandler;

    # getter for: Lorg/apache/ignite/internal/processors/rest/handlers/datastructures/DataStructuresCommandHandler;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v6}, Lorg/apache/ignite/internal/processors/rest/handlers/datastructures/DataStructuresCommandHandler;->access$000(Lorg/apache/ignite/internal/processors/rest/handlers/datastructures/DataStructuresCommandHandler;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/ignite/internal/GridKernalContext;->grid()Lorg/apache/ignite/internal/IgniteEx;

    move-result-object v8

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    :goto_1
    invoke-interface {v8, v3, v6, v7, v5}, Lorg/apache/ignite/internal/IgniteEx;->atomicLong(Ljava/lang/String;JZ)Lorg/apache/ignite/IgniteAtomicLong;

    move-result-object v4

    .line 106
    .local v4, "l":Lorg/apache/ignite/IgniteAtomicLong;
    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    neg-long v6, v6

    :goto_2
    invoke-interface {v4, v6, v7}, Lorg/apache/ignite/IgniteAtomicLong;->addAndGet(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    return-object v5

    .line 100
    .end local v0    # "decr":Z
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "l":Lorg/apache/ignite/IgniteAtomicLong;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 104
    .restart local v0    # "decr":Z
    .restart local v3    # "key":Ljava/lang/String;
    :cond_1
    const-wide/16 v6, 0x0

    goto :goto_1

    .line 106
    .restart local v4    # "l":Lorg/apache/ignite/IgniteAtomicLong;
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_2
.end method
