.class Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$5;
.super Ljava/lang/Object;
.source "GridDiscoveryManager.java"

# interfaces
.implements Lorg/apache/ignite/spi/discovery/DiscoverySpiDataExchange;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 419
    const-class v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$5;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)V
    .locals 0

    .prologue
    .line 419
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$5;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public collect(Ljava/util/UUID;)Ljava/util/Map;
    .locals 5
    .param p1, "nodeId"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 421
    sget-boolean v4, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$5;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 423
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 425
    .local v2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Object;>;"
    iget-object v4, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$5;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v4}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$2000(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->components()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/GridComponent;

    .line 426
    .local v0, "comp":Lorg/apache/ignite/internal/GridComponent;
    invoke-interface {v0, p1}, Lorg/apache/ignite/internal/GridComponent;->collectDiscoveryData(Ljava/util/UUID;)Ljava/lang/Object;

    move-result-object v1

    .line 428
    .local v1, "compData":Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 429
    sget-boolean v4, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$5;->$assertionsDisabled:Z

    if-nez v4, :cond_2

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridComponent;->discoveryDataType()Lorg/apache/ignite/internal/GridComponent$DiscoveryDataExchangeType;

    move-result-object v4

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 431
    :cond_2
    invoke-interface {v0}, Lorg/apache/ignite/internal/GridComponent;->discoveryDataType()Lorg/apache/ignite/internal/GridComponent$DiscoveryDataExchangeType;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/GridComponent$DiscoveryDataExchangeType;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 435
    .end local v0    # "comp":Lorg/apache/ignite/internal/GridComponent;
    .end local v1    # "compData":Ljava/lang/Object;
    :cond_3
    return-object v2
.end method

.method public onExchange(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/Map;)V
    .locals 8
    .param p1, "joiningNodeId"    # Ljava/util/UUID;
    .param p2, "nodeId"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/util/UUID;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 439
    .local p3, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 440
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .line 442
    .local v1, "comp":Lorg/apache/ignite/internal/GridComponent;
    iget-object v5, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$5;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v5}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$2100(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->components()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/GridComponent;

    .line 443
    .local v0, "c":Lorg/apache/ignite/internal/GridComponent;
    invoke-interface {v0}, Lorg/apache/ignite/internal/GridComponent;->discoveryDataType()Lorg/apache/ignite/internal/GridComponent$DiscoveryDataExchangeType;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridComponent;->discoveryDataType()Lorg/apache/ignite/internal/GridComponent$DiscoveryDataExchangeType;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/GridComponent$DiscoveryDataExchangeType;->ordinal()I

    move-result v6

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v6, v5, :cond_0

    .line 444
    move-object v1, v0

    .line 450
    .end local v0    # "c":Lorg/apache/ignite/internal/GridComponent;
    :cond_1
    if-eqz v1, :cond_2

    .line 451
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, p1, p2, v5}, Lorg/apache/ignite/internal/GridComponent;->onDiscoveryDataReceived(Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/Object;)V

    goto :goto_0

    .line 453
    :cond_2
    iget-object v5, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$5;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    # getter for: Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v5}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$2200(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received discovery data for unknown component: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    goto :goto_0

    .line 455
    .end local v1    # "comp":Lorg/apache/ignite/internal/GridComponent;
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_3
    return-void
.end method
