.class Lorg/apache/ignite/spi/IgniteSpiAdapter$1;
.super Ljava/lang/Object;
.source "IgniteSpiAdapter.java"

# interfaces
.implements Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/spi/IgniteSpiAdapter;->onContextInitialized(Lorg/apache/ignite/spi/IgniteSpiContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/spi/IgniteSpiAdapter;

.field final synthetic val$spiCtx:Lorg/apache/ignite/spi/IgniteSpiContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 138
    const-class v0, Lorg/apache/ignite/spi/IgniteSpiAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/spi/IgniteSpiAdapter$1;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/spi/IgniteSpiAdapter;Lorg/apache/ignite/spi/IgniteSpiContext;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lorg/apache/ignite/spi/IgniteSpiAdapter$1;->this$0:Lorg/apache/ignite/spi/IgniteSpiAdapter;

    iput-object p2, p0, Lorg/apache/ignite/spi/IgniteSpiAdapter$1;->val$spiCtx:Lorg/apache/ignite/spi/IgniteSpiContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lorg/apache/ignite/events/Event;)V
    .locals 6
    .param p1, "evt"    # Lorg/apache/ignite/events/Event;

    .prologue
    const/16 v5, 0x5d

    .line 140
    sget-boolean v2, Lorg/apache/ignite/spi/IgniteSpiAdapter$1;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    instance-of v2, p1, Lorg/apache/ignite/events/DiscoveryEvent;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid event [expected=10, actual="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->type()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", evt="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 143
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/spi/IgniteSpiAdapter$1;->val$spiCtx:Lorg/apache/ignite/spi/IgniteSpiContext;

    check-cast p1, Lorg/apache/ignite/events/DiscoveryEvent;

    .end local p1    # "evt":Lorg/apache/ignite/events/Event;
    invoke-virtual {p1}, Lorg/apache/ignite/events/DiscoveryEvent;->eventNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/spi/IgniteSpiContext;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v1

    .line 145
    .local v1, "node":Lorg/apache/ignite/cluster/ClusterNode;
    if-eqz v1, :cond_1

    .line 147
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/spi/IgniteSpiAdapter$1;->this$0:Lorg/apache/ignite/spi/IgniteSpiAdapter;

    iget-object v3, p0, Lorg/apache/ignite/spi/IgniteSpiAdapter$1;->val$spiCtx:Lorg/apache/ignite/spi/IgniteSpiContext;

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4}, Lorg/apache/ignite/spi/IgniteSpiAdapter;->access$000(Lorg/apache/ignite/spi/IgniteSpiAdapter;Lorg/apache/ignite/spi/IgniteSpiContext;Lorg/apache/ignite/cluster/ClusterNode;Z)V

    .line 148
    iget-object v2, p0, Lorg/apache/ignite/spi/IgniteSpiAdapter$1;->this$0:Lorg/apache/ignite/spi/IgniteSpiAdapter;

    iget-object v3, p0, Lorg/apache/ignite/spi/IgniteSpiAdapter$1;->val$spiCtx:Lorg/apache/ignite/spi/IgniteSpiContext;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Lorg/apache/ignite/spi/IgniteSpiAdapter;->checkConfigurationConsistency0(Lorg/apache/ignite/spi/IgniteSpiContext;Lorg/apache/ignite/cluster/ClusterNode;Z)V
    :try_end_0
    .catch Lorg/apache/ignite/spi/IgniteSpiException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :cond_1
    :goto_0
    return-void

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Lorg/apache/ignite/spi/IgniteSpiException;
    iget-object v2, p0, Lorg/apache/ignite/spi/IgniteSpiAdapter$1;->this$0:Lorg/apache/ignite/spi/IgniteSpiAdapter;

    invoke-static {v2}, Lorg/apache/ignite/spi/IgniteSpiAdapter;->access$100(Lorg/apache/ignite/spi/IgniteSpiAdapter;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Spi consistency check failed [node="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", spi="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/spi/IgniteSpiAdapter$1;->this$0:Lorg/apache/ignite/spi/IgniteSpiAdapter;

    invoke-virtual {v4}, Lorg/apache/ignite/spi/IgniteSpiAdapter;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
