.class Lorg/apache/ignite/spi/IgniteSpiAdapter$GridDummySpiContext;
.super Ljava/lang/Object;
.source "IgniteSpiAdapter.java"

# interfaces
.implements Lorg/apache/ignite/spi/IgniteSpiContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/spi/IgniteSpiAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GridDummySpiContext"
.end annotation


# instance fields
.field private final locNode:Lorg/apache/ignite/cluster/ClusterNode;


# direct methods
.method constructor <init>(Lorg/apache/ignite/cluster/ClusterNode;)V
    .locals 0
    .param p1, "locNode"    # Lorg/apache/ignite/cluster/ClusterNode;

    .prologue
    .line 531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 532
    iput-object p1, p0, Lorg/apache/ignite/spi/IgniteSpiAdapter$GridDummySpiContext;->locNode:Lorg/apache/ignite/cluster/ClusterNode;

    .line 533
    return-void
.end method


# virtual methods
.method public varargs addLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;[I)V
    .locals 0
    .param p1, "lsnr"    # Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;
    .param p2, "types"    # [I

    .prologue
    .line 538
    return-void
.end method

.method public addMessageListener(Lorg/apache/ignite/internal/managers/communication/GridMessageListener;Ljava/lang/String;)V
    .locals 0
    .param p1, "lsnr"    # Lorg/apache/ignite/internal/managers/communication/GridMessageListener;
    .param p2, "topic"    # Ljava/lang/String;

    .prologue
    .line 543
    return-void
.end method

.method public authenticatedSubject(Ljava/util/UUID;)Lorg/apache/ignite/plugin/security/GridSecuritySubject;
    .locals 1
    .param p1, "subjId"    # Ljava/util/UUID;

    .prologue
    .line 673
    const/4 v0, 0x0

    return-object v0
.end method

.method public authenticatedSubjects()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/plugin/security/GridSecuritySubject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 668
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public containsKey(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "cacheName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TK;)Z"
        }
    .end annotation

    .prologue
    .line 587
    .local p2, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    return v0
.end method

.method public deregisterPort(ILorg/apache/ignite/spi/IgnitePortProtocol;)V
    .locals 0
    .param p1, "port"    # I
    .param p2, "proto"    # Lorg/apache/ignite/spi/IgnitePortProtocol;

    .prologue
    .line 558
    return-void
.end method

.method public deregisterPorts()V
    .locals 0

    .prologue
    .line 563
    return-void
.end method

.method public get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "cacheName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TK;)TV;"
        }
    .end annotation

    .prologue
    .line 567
    .local p2, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public varargs isEventRecordable([I)Z
    .locals 1
    .param p1, "types"    # [I

    .prologue
    .line 648
    const/4 v0, 0x1

    return v0
.end method

.method public localNode()Lorg/apache/ignite/cluster/ClusterNode;
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Lorg/apache/ignite/spi/IgniteSpiAdapter$GridDummySpiContext;->locNode:Lorg/apache/ignite/cluster/ClusterNode;

    return-object v0
.end method

.method public messageFactory()Lorg/apache/ignite/plugin/extensions/communication/MessageFactory;
    .locals 1

    .prologue
    .line 689
    const/4 v0, 0x0

    return-object v0
.end method

.method public messageFormatter()Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;
    .locals 1

    .prologue
    .line 684
    const/4 v0, 0x0

    return-object v0
.end method

.method public node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;
    .locals 1
    .param p1, "nodeId"    # Ljava/util/UUID;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 628
    const/4 v0, 0x0

    return-object v0
.end method

.method public nodes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 613
    iget-object v0, p0, Lorg/apache/ignite/spi/IgniteSpiAdapter$GridDummySpiContext;->locNode:Lorg/apache/ignite/cluster/ClusterNode;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/spi/IgniteSpiAdapter$GridDummySpiContext;->locNode:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public partition(Ljava/lang/String;Ljava/lang/Object;)I
    .locals 1
    .param p1, "cacheName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/Object;

    .prologue
    .line 603
    const/4 v0, -0x1

    return v0
.end method

.method public pingNode(Ljava/util/UUID;)Z
    .locals 1
    .param p1, "nodeId"    # Ljava/util/UUID;

    .prologue
    .line 638
    iget-object v0, p0, Lorg/apache/ignite/spi/IgniteSpiAdapter$GridDummySpiContext;->locNode:Lorg/apache/ignite/cluster/ClusterNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/spi/IgniteSpiAdapter$GridDummySpiContext;->locNode:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1
    .param p1, "cacheName"    # Ljava/lang/String;
    .param p4, "ttl"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TK;TV;J)TV;"
        }
    .end annotation

    .prologue
    .line 572
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "val":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public putIfAbsent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1
    .param p1, "cacheName"    # Ljava/lang/String;
    .param p4, "ttl"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TK;TV;J)TV;"
        }
    .end annotation

    .prologue
    .line 577
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "val":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public readFromSwap(Ljava/lang/String;Lorg/apache/ignite/spi/swapspace/SwapKey;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1
    .param p1, "spaceName"    # Ljava/lang/String;
    .param p2, "key"    # Lorg/apache/ignite/spi/swapspace/SwapKey;
    .param p3, "ldr"    # Ljava/lang/ClassLoader;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/spi/swapspace/SwapKey;",
            "Ljava/lang/ClassLoader;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 598
    const/4 v0, 0x0

    return-object v0
.end method

.method public readValueFromOffheapAndSwap(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1
    .param p1, "spaceName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "key"    # Ljava/lang/Object;
    .param p3, "ldr"    # Ljava/lang/ClassLoader;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/ClassLoader;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 679
    const/4 v0, 0x0

    return-object v0
.end method

.method public recordEvent(Lorg/apache/ignite/events/Event;)V
    .locals 0
    .param p1, "evt"    # Lorg/apache/ignite/events/Event;

    .prologue
    .line 548
    return-void
.end method

.method public registerPort(ILorg/apache/ignite/spi/IgnitePortProtocol;)V
    .locals 0
    .param p1, "port"    # I
    .param p2, "proto"    # Lorg/apache/ignite/spi/IgnitePortProtocol;

    .prologue
    .line 553
    return-void
.end method

.method public remoteDaemonNodes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 623
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public remoteNodes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 633
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "cacheName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TK;)TV;"
        }
    .end annotation

    .prologue
    .line 582
    .local p2, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public removeFromSwap(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "spaceName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/Object;
    .param p3, "ldr"    # Ljava/lang/ClassLoader;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 609
    return-void
.end method

.method public removeLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;)Z
    .locals 1
    .param p1, "lsnr"    # Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    .prologue
    .line 643
    const/4 v0, 0x0

    return v0
.end method

.method public removeMessageListener(Lorg/apache/ignite/internal/managers/communication/GridMessageListener;Ljava/lang/String;)Z
    .locals 1
    .param p1, "lsnr"    # Lorg/apache/ignite/internal/managers/communication/GridMessageListener;
    .param p2, "topic"    # Ljava/lang/String;

    .prologue
    .line 653
    const/4 v0, 0x0

    return v0
.end method

.method public send(Lorg/apache/ignite/cluster/ClusterNode;Ljava/io/Serializable;Ljava/lang/String;)V
    .locals 0
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "msg"    # Ljava/io/Serializable;
    .param p3, "topic"    # Ljava/lang/String;

    .prologue
    .line 659
    return-void
.end method

.method public validateNode(Lorg/apache/ignite/cluster/ClusterNode;)Lorg/apache/ignite/spi/IgniteSpiNodeValidationResult;
    .locals 1
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 663
    const/4 v0, 0x0

    return-object v0
.end method

.method public writeToSwap(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "spaceName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/Object;
    .param p3, "val"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "ldr"    # Ljava/lang/ClassLoader;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 594
    return-void
.end method
