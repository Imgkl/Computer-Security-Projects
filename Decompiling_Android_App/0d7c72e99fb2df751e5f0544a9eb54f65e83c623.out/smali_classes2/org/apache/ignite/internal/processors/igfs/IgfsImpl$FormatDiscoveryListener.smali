.class Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FormatDiscoveryListener;
.super Ljava/lang/Object;
.source "IgfsImpl.java"

# interfaces
.implements Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FormatDiscoveryListener"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2008
    const-class v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FormatDiscoveryListener;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)V
    .locals 0

    .prologue
    .line 2008
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FormatDiscoveryListener;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;
    .param p2, "x1"    # Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$1;

    .prologue
    .line 2008
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FormatDiscoveryListener;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)V

    return-void
.end method


# virtual methods
.method public onEvent(Lorg/apache/ignite/events/Event;)V
    .locals 9
    .param p1, "evt"    # Lorg/apache/ignite/events/Event;

    .prologue
    .line 2011
    sget-boolean v6, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FormatDiscoveryListener;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->type()I

    move-result v6

    const/16 v7, 0xb

    if-eq v6, v7, :cond_0

    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->type()I

    move-result v6

    const/16 v7, 0xc

    if-eq v6, v7, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    :cond_0
    move-object v1, p1

    .line 2013
    check-cast v1, Lorg/apache/ignite/events/DiscoveryEvent;

    .line 2015
    .local v1, "evt0":Lorg/apache/ignite/events/DiscoveryEvent;
    invoke-virtual {v1}, Lorg/apache/ignite/events/DiscoveryEvent;->eventNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 2016
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FormatDiscoveryListener;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    invoke-virtual {v1}, Lorg/apache/ignite/events/DiscoveryEvent;->eventNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v6

    const-string v8, "org.apache.ignite.igfs"

    invoke-interface {v6, v8}, Lorg/apache/ignite/cluster/ClusterNode;->attribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;

    check-cast v6, [Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->sameIgfs([Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;)Z
    invoke-static {v7, v6}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$2900(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;[Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2017
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 2019
    .local v5, "rmv":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/lang/IgniteUuid;>;"
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FormatDiscoveryListener;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->delFuts:Lorg/jsr166/ConcurrentHashMap8;
    invoke-static {v6}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$3000(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/jsr166/ConcurrentHashMap8;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jsr166/ConcurrentHashMap8;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2020
    .local v2, "fut":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Ljava/lang/Object;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/lang/IgniteUuid;

    .line 2023
    .local v4, "id":Lorg/apache/ignite/lang/IgniteUuid;
    :try_start_0
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FormatDiscoveryListener;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->meta:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;
    invoke-static {v6}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$500(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    move-result-object v6

    invoke-virtual {v6, v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->exists(Lorg/apache/ignite/lang/IgniteUuid;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2024
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone()Z

    .line 2026
    invoke-interface {v5, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2029
    :catch_0
    move-exception v0

    .line 2030
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FormatDiscoveryListener;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v6}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$600(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to check file existence: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2034
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v2    # "fut":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Ljava/lang/Object;>;>;"
    .end local v4    # "id":Lorg/apache/ignite/lang/IgniteUuid;
    :cond_2
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/lang/IgniteUuid;

    .line 2035
    .restart local v4    # "id":Lorg/apache/ignite/lang/IgniteUuid;
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$FormatDiscoveryListener;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->delFuts:Lorg/jsr166/ConcurrentHashMap8;
    invoke-static {v6}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$3000(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/jsr166/ConcurrentHashMap8;

    move-result-object v6

    invoke-virtual {v6, v4}, Lorg/jsr166/ConcurrentHashMap8;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2038
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "id":Lorg/apache/ignite/lang/IgniteUuid;
    .end local v5    # "rmv":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/lang/IgniteUuid;>;"
    :cond_3
    return-void
.end method
