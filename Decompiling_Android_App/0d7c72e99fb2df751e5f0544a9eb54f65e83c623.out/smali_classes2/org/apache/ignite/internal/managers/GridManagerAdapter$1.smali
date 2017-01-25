.class Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;
.super Ljava/lang/Object;
.source "GridManagerAdapter.java"

# interfaces
.implements Lorg/apache/ignite/spi/IgniteSpiContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/managers/GridManagerAdapter;->onKernalStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/managers/GridManagerAdapter;

.field final synthetic val$spi:Lorg/apache/ignite/spi/IgniteSpi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 283
    const-class v0, Lorg/apache/ignite/internal/managers/GridManagerAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/managers/GridManagerAdapter;Lorg/apache/ignite/spi/IgniteSpi;)V
    .locals 0

    .prologue
    .line 283
    .local p0, "this":Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;, "Lorg/apache/ignite/internal/managers/GridManagerAdapter.1;"
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;->this$0:Lorg/apache/ignite/internal/managers/GridManagerAdapter;

    iput-object p2, p0, Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;->val$spi:Lorg/apache/ignite/spi/IgniteSpi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private unwrapException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/spi/IgniteSpiException;
    .locals 2
    .param p1, "e"    # Lorg/apache/ignite/IgniteCheckedException;

    .prologue
    .line 531
    .local p0, "this":Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;, "Lorg/apache/ignite/internal/managers/GridManagerAdapter.1;"
    invoke-virtual {p1}, Lorg/apache/ignite/IgniteCheckedException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/ignite/spi/IgniteSpiException;

    if-eqz v0, :cond_0

    .line 532
    invoke-virtual {p1}, Lorg/apache/ignite/IgniteCheckedException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/spi/IgniteSpiException;

    .line 534
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/ignite/spi/IgniteSpiException;

    const-string v1, "Failed to execute SPI context method."

    invoke-direct {v0, v1, p1}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public varargs addLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;[I)V
    .locals 1
    .param p1, "lsnr"    # Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;
    .param p2, "types"    # [I

    .prologue
    .line 354
    .local p0, "this":Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;, "Lorg/apache/ignite/internal/managers/GridManagerAdapter.1;"
    const-string v0, "lsnr"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;->this$0:Lorg/apache/ignite/internal/managers/GridManagerAdapter;

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->addLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;[I)V

    .line 357
    return-void
.end method

.method public addMessageListener(Lorg/apache/ignite/internal/managers/communication/GridMessageListener;Ljava/lang/String;)V
    .locals 1
    .param p1, "lsnr"    # Lorg/apache/ignite/internal/managers/communication/GridMessageListener;
    .param p2, "topic"    # Ljava/lang/String;

    .prologue
    .line 339
    .local p0, "this":Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;, "Lorg/apache/ignite/internal/managers/GridManagerAdapter.1;"
    const-string v0, "lsnr"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 340
    const-string v0, "topic"

    invoke-static {p2, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;->this$0:Lorg/apache/ignite/internal/managers/GridManagerAdapter;

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->addMessageListener(Ljava/lang/Object;Lorg/apache/ignite/internal/managers/communication/GridMessageListener;)V

    .line 343
    return-void
.end method

.method public authenticatedSubject(Ljava/util/UUID;)Lorg/apache/ignite/plugin/security/GridSecuritySubject;
    .locals 2
    .param p1, "subjId"    # Ljava/util/UUID;

    .prologue
    .line 490
    .local p0, "this":Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;, "Lorg/apache/ignite/internal/managers/GridManagerAdapter.1;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;->this$0:Lorg/apache/ignite/internal/managers/GridManagerAdapter;

    iget-object v1, v1, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->security()Lorg/apache/ignite/internal/processors/security/GridSecurityProcessor;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/apache/ignite/internal/processors/security/GridSecurityProcessor;->authenticatedSubject(Ljava/util/UUID;)Lorg/apache/ignite/plugin/security/GridSecuritySubject;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 492
    :catch_0
    move-exception v0

    .line 493
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
.end method

.method public authenticatedSubjects()Ljava/util/Collection;
    .locals 2
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
    .line 481
    .local p0, "this":Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;, "Lorg/apache/ignite/internal/managers/GridManagerAdapter.1;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;->this$0:Lorg/apache/ignite/internal/managers/GridManagerAdapter;

    iget-object v1, v1, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->security()Lorg/apache/ignite/internal/processors/security/GridSecurityProcessor;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/security/GridSecurityProcessor;->authenticatedSubjects()Ljava/util/Collection;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 483
    :catch_0
    move-exception v0

    .line 484
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
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
    .line 425
    .local p0, "this":Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;, "Lorg/apache/ignite/internal/managers/GridManagerAdapter.1;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;->this$0:Lorg/apache/ignite/internal/managers/GridManagerAdapter;

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->cache(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCache;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCache;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public deregisterPort(ILorg/apache/ignite/spi/IgnitePortProtocol;)V
    .locals 2
    .param p1, "port"    # I
    .param p2, "proto"    # Lorg/apache/ignite/spi/IgnitePortProtocol;

    .prologue
    .line 385
    .local p0, "this":Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;, "Lorg/apache/ignite/internal/managers/GridManagerAdapter.1;"
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;->this$0:Lorg/apache/ignite/internal/managers/GridManagerAdapter;

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->ports()Lorg/apache/ignite/internal/processors/port/GridPortProcessor;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;->val$spi:Lorg/apache/ignite/spi/IgniteSpi;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/ignite/internal/processors/port/GridPortProcessor;->deregisterPort(ILorg/apache/ignite/spi/IgnitePortProtocol;Ljava/lang/Class;)V

    .line 386
    return-void
.end method

.method public deregisterPorts()V
    .locals 2

    .prologue
    .line 389
    .local p0, "this":Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;, "Lorg/apache/ignite/internal/managers/GridManagerAdapter.1;"
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;->this$0:Lorg/apache/ignite/internal/managers/GridManagerAdapter;

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->ports()Lorg/apache/ignite/internal/processors/port/GridPortProcessor;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;->val$spi:Lorg/apache/ignite/spi/IgniteSpi;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/port/GridPortProcessor;->deregisterPorts(Ljava/lang/Class;)V

    .line 390
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

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 393
    .local p0, "this":Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;, "Lorg/apache/ignite/internal/managers/GridManagerAdapter.1;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;->this$0:Lorg/apache/ignite/internal/managers/GridManagerAdapter;

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->jcache(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public varargs isEventRecordable([I)Z
    .locals 5
    .param p1, "types"    # [I

    .prologue
    .line 366
    .local p0, "this":Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;, "Lorg/apache/ignite/internal/managers/GridManagerAdapter.1;"
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    .line 367
    .local v3, "t":I
    iget-object v4, p0, Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;->this$0:Lorg/apache/ignite/internal/managers/GridManagerAdapter;

    iget-object v4, v4, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 368
    const/4 v4, 0x0

    .line 370
    .end local v3    # "t":I
    :goto_1
    return v4

    .line 366
    .restart local v3    # "t":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 370
    .end local v3    # "t":I
    :cond_1
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public localNode()Lorg/apache/ignite/cluster/ClusterNode;
    .locals 1

    .prologue
    .line 293
    .local p0, "this":Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;, "Lorg/apache/ignite/internal/managers/GridManagerAdapter.1;"
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;->this$0:Lorg/apache/ignite/internal/managers/GridManagerAdapter;

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v0

    return-object v0
.end method

.method public messageFactory()Lorg/apache/ignite/plugin/extensions/communication/MessageFactory;
    .locals 1

    .prologue
    .line 522
    .local p0, "this":Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;, "Lorg/apache/ignite/internal/managers/GridManagerAdapter.1;"
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;->this$0:Lorg/apache/ignite/internal/managers/GridManagerAdapter;

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->messageFactory()Lorg/apache/ignite/plugin/extensions/communication/MessageFactory;

    move-result-object v0

    return-object v0
.end method

.method public messageFormatter()Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;
    .locals 1

    .prologue
    .line 518
    .local p0, "this":Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;, "Lorg/apache/ignite/internal/managers/GridManagerAdapter.1;"
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;->this$0:Lorg/apache/ignite/internal/managers/GridManagerAdapter;

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->formatter()Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;

    move-result-object v0

    return-object v0
.end method

.method public node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;
    .locals 1
    .param p1, "nodeId"    # Ljava/util/UUID;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 309
    .local p0, "this":Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;, "Lorg/apache/ignite/internal/managers/GridManagerAdapter.1;"
    const-string v0, "nodeId"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;->this$0:Lorg/apache/ignite/internal/managers/GridManagerAdapter;

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v0

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
    .line 289
    .local p0, "this":Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;, "Lorg/apache/ignite/internal/managers/GridManagerAdapter.1;"
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;->this$0:Lorg/apache/ignite/internal/managers/GridManagerAdapter;

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->allNodes()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public partition(Ljava/lang/String;Ljava/lang/Object;)I
    .locals 1
    .param p1, "cacheName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/Object;

    .prologue
    .line 454
    .local p0, "this":Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;, "Lorg/apache/ignite/internal/managers/GridManagerAdapter.1;"
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;->this$0:Lorg/apache/ignite/internal/managers/GridManagerAdapter;

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->cache(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCache;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/GridCache;->affinity()Lorg/apache/ignite/cache/affinity/Affinity;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/apache/ignite/cache/affinity/Affinity;->partition(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public pingNode(Ljava/util/UUID;)Z
    .locals 1
    .param p1, "nodeId"    # Ljava/util/UUID;

    .prologue
    .line 315
    .local p0, "this":Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;, "Lorg/apache/ignite/internal/managers/GridManagerAdapter.1;"
    const-string v0, "nodeId"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;->this$0:Lorg/apache/ignite/internal/managers/GridManagerAdapter;

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->pingNode(Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 4
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

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 397
    .local p0, "this":Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;, "Lorg/apache/ignite/internal/managers/GridManagerAdapter.1;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "val":Ljava/lang/Object;, "TV;"
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-lez v2, :cond_0

    .line 398
    new-instance v1, Ljavax/cache/expiry/TouchedExpiryPolicy;

    new-instance v2, Ljavax/cache/expiry/Duration;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v2, v3, p4, p5}, Ljavax/cache/expiry/Duration;-><init>(Ljava/util/concurrent/TimeUnit;J)V

    invoke-direct {v1, v2}, Ljavax/cache/expiry/TouchedExpiryPolicy;-><init>(Ljavax/cache/expiry/Duration;)V

    .line 400
    .local v1, "plc":Ljavax/cache/expiry/ExpiryPolicy;
    iget-object v2, p0, Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;->this$0:Lorg/apache/ignite/internal/managers/GridManagerAdapter;

    iget-object v2, v2, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->publicJCache(Ljava/lang/String;)Lorg/apache/ignite/IgniteCache;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/apache/ignite/IgniteCache;->withExpiryPolicy(Ljavax/cache/expiry/ExpiryPolicy;)Lorg/apache/ignite/IgniteCache;

    move-result-object v0

    .line 402
    .local v0, "cache":Lorg/apache/ignite/IgniteCache;, "Lorg/apache/ignite/IgniteCache<TK;TV;>;"
    invoke-interface {v0, p2, p3}, Lorg/apache/ignite/IgniteCache;->getAndPut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 405
    .end local v0    # "cache":Lorg/apache/ignite/IgniteCache;, "Lorg/apache/ignite/IgniteCache<TK;TV;>;"
    .end local v1    # "plc":Ljavax/cache/expiry/ExpiryPolicy;
    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;->this$0:Lorg/apache/ignite/internal/managers/GridManagerAdapter;

    iget-object v2, v2, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->jcache(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->getAndPut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method public putIfAbsent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 4
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

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 409
    .local p0, "this":Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;, "Lorg/apache/ignite/internal/managers/GridManagerAdapter.1;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "val":Ljava/lang/Object;, "TV;"
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-lez v2, :cond_0

    .line 410
    new-instance v1, Ljavax/cache/expiry/TouchedExpiryPolicy;

    new-instance v2, Ljavax/cache/expiry/Duration;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v2, v3, p4, p5}, Ljavax/cache/expiry/Duration;-><init>(Ljava/util/concurrent/TimeUnit;J)V

    invoke-direct {v1, v2}, Ljavax/cache/expiry/TouchedExpiryPolicy;-><init>(Ljavax/cache/expiry/Duration;)V

    .line 412
    .local v1, "plc":Ljavax/cache/expiry/ExpiryPolicy;
    iget-object v2, p0, Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;->this$0:Lorg/apache/ignite/internal/managers/GridManagerAdapter;

    iget-object v2, v2, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->publicJCache(Ljava/lang/String;)Lorg/apache/ignite/IgniteCache;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/apache/ignite/IgniteCache;->withExpiryPolicy(Ljavax/cache/expiry/ExpiryPolicy;)Lorg/apache/ignite/IgniteCache;

    move-result-object v0

    .line 414
    .local v0, "cache":Lorg/apache/ignite/IgniteCache;, "Lorg/apache/ignite/IgniteCache<TK;TV;>;"
    invoke-interface {v0, p2, p3}, Lorg/apache/ignite/IgniteCache;->getAndPutIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 417
    .end local v0    # "cache":Lorg/apache/ignite/IgniteCache;, "Lorg/apache/ignite/IgniteCache<TK;TV;>;"
    .end local v1    # "plc":Ljavax/cache/expiry/ExpiryPolicy;
    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;->this$0:Lorg/apache/ignite/internal/managers/GridManagerAdapter;

    iget-object v2, v2, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->jcache(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->getAndPutIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method public readFromSwap(Ljava/lang/String;Lorg/apache/ignite/spi/swapspace/SwapKey;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 2
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

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 444
    .local p0, "this":Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;, "Lorg/apache/ignite/internal/managers/GridManagerAdapter.1;"
    :try_start_0
    sget-boolean v1, Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;->this$0:Lorg/apache/ignite/internal/managers/GridManagerAdapter;

    iget-object v1, v1, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->swap()Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->enabled()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    :catch_0
    move-exception v0

    .line 449
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1

    .line 446
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;->this$0:Lorg/apache/ignite/internal/managers/GridManagerAdapter;

    iget-object v1, v1, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->swap()Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->readValue(Ljava/lang/String;Lorg/apache/ignite/spi/swapspace/SwapKey;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    return-object v1
.end method

.method public readValueFromOffheapAndSwap(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 7
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
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/ClassLoader;",
            ")TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 501
    .local p0, "this":Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;, "Lorg/apache/ignite/internal/managers/GridManagerAdapter.1;"
    :try_start_0
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;->this$0:Lorg/apache/ignite/internal/managers/GridManagerAdapter;

    iget-object v3, v3, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->cache(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCache;

    move-result-object v0

    .line 503
    .local v0, "cache":Lorg/apache/ignite/internal/processors/cache/GridCache;, "Lorg/apache/ignite/internal/processors/cache/GridCache<Ljava/lang/Object;TV;>;"
    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;

    .end local v0    # "cache":Lorg/apache/ignite/internal/processors/cache/GridCache;, "Lorg/apache/ignite/internal/processors/cache/GridCache<Ljava/lang/Object;TV;>;"
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v1

    .line 505
    .local v1, "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 506
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v1

    .line 508
    :cond_0
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->swap()Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-result-object v3

    invoke-virtual {v1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheKeyObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->read(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;ZZ)Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;

    move-result-object v2

    .line 510
    .local v2, "e":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    if-eqz v2, :cond_1

    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->value()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v1, v4}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->value(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Z)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 512
    .end local v1    # "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .end local v2    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    :catch_0
    move-exception v2

    .line 513
    .local v2, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v3

    throw v3
.end method

.method public recordEvent(Lorg/apache/ignite/events/Event;)V
    .locals 2
    .param p1, "evt"    # Lorg/apache/ignite/events/Event;

    .prologue
    .line 374
    .local p0, "this":Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;, "Lorg/apache/ignite/internal/managers/GridManagerAdapter.1;"
    const-string v0, "evt"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;->this$0:Lorg/apache/ignite/internal/managers/GridManagerAdapter;

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->type()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;->this$0:Lorg/apache/ignite/internal/managers/GridManagerAdapter;

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->record(Lorg/apache/ignite/events/Event;)V

    .line 378
    :cond_0
    return-void
.end method

.method public registerPort(ILorg/apache/ignite/spi/IgnitePortProtocol;)V
    .locals 2
    .param p1, "port"    # I
    .param p2, "proto"    # Lorg/apache/ignite/spi/IgnitePortProtocol;

    .prologue
    .line 381
    .local p0, "this":Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;, "Lorg/apache/ignite/internal/managers/GridManagerAdapter.1;"
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;->this$0:Lorg/apache/ignite/internal/managers/GridManagerAdapter;

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->ports()Lorg/apache/ignite/internal/processors/port/GridPortProcessor;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;->val$spi:Lorg/apache/ignite/spi/IgniteSpi;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/ignite/internal/processors/port/GridPortProcessor;->registerPort(ILorg/apache/ignite/spi/IgnitePortProtocol;Ljava/lang/Class;)V

    .line 382
    return-void
.end method

.method public remoteDaemonNodes()Ljava/util/Collection;
    .locals 4
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
    .line 297
    .local p0, "this":Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;, "Lorg/apache/ignite/internal/managers/GridManagerAdapter.1;"
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;->this$0:Lorg/apache/ignite/internal/managers/GridManagerAdapter;

    iget-object v1, v1, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->daemonNodes()Ljava/util/Collection;

    move-result-object v0

    .line 299
    .local v0, "all":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterNode;->isDaemon()Z

    move-result v1

    if-nez v1, :cond_0

    .end local v0    # "all":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :goto_0
    return-object v0

    .restart local v0    # "all":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v2, 0x0

    new-instance v3, Lorg/apache/ignite/internal/managers/GridManagerAdapter$1$1;

    invoke-direct {v3, p0}, Lorg/apache/ignite/internal/managers/GridManagerAdapter$1$1;-><init>(Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;)V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/F;->view(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
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
    .line 285
    .local p0, "this":Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;, "Lorg/apache/ignite/internal/managers/GridManagerAdapter.1;"
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;->this$0:Lorg/apache/ignite/internal/managers/GridManagerAdapter;

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->remoteNodes()Ljava/util/Collection;

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

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 421
    .local p0, "this":Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;, "Lorg/apache/ignite/internal/managers/GridManagerAdapter.1;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;->this$0:Lorg/apache/ignite/internal/managers/GridManagerAdapter;

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->jcache(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->getAndRemove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeFromSwap(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)V
    .locals 3
    .param p1, "spaceName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/Object;
    .param p3, "ldr"    # Ljava/lang/ClassLoader;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 459
    .local p0, "this":Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;, "Lorg/apache/ignite/internal/managers/GridManagerAdapter.1;"
    :try_start_0
    sget-boolean v1, Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;->this$0:Lorg/apache/ignite/internal/managers/GridManagerAdapter;

    iget-object v1, v1, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->swap()Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->enabled()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    :catch_0
    move-exception v0

    .line 464
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1

    .line 461
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;->this$0:Lorg/apache/ignite/internal/managers/GridManagerAdapter;

    iget-object v1, v1, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->swap()Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2, p3}, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->remove(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/ignite/lang/IgniteInClosure;Ljava/lang/ClassLoader;)V
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 466
    return-void
.end method

.method public removeLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;)Z
    .locals 2
    .param p1, "lsnr"    # Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    .prologue
    .line 360
    .local p0, "this":Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;, "Lorg/apache/ignite/internal/managers/GridManagerAdapter.1;"
    const-string v0, "lsnr"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;->this$0:Lorg/apache/ignite/internal/managers/GridManagerAdapter;

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-virtual {v0, p1, v1}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->removeLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;[I)Z

    move-result v0

    return v0
.end method

.method public removeMessageListener(Lorg/apache/ignite/internal/managers/communication/GridMessageListener;Ljava/lang/String;)Z
    .locals 1
    .param p1, "lsnr"    # Lorg/apache/ignite/internal/managers/communication/GridMessageListener;
    .param p2, "topic"    # Ljava/lang/String;

    .prologue
    .line 347
    .local p0, "this":Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;, "Lorg/apache/ignite/internal/managers/GridManagerAdapter.1;"
    const-string v0, "lsnr"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 348
    const-string v0, "topic"

    invoke-static {p2, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;->this$0:Lorg/apache/ignite/internal/managers/GridManagerAdapter;

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->removeMessageListener(Ljava/lang/Object;Lorg/apache/ignite/internal/managers/communication/GridMessageListener;)Z

    move-result v0

    return v0
.end method

.method public send(Lorg/apache/ignite/cluster/ClusterNode;Ljava/io/Serializable;Ljava/lang/String;)V
    .locals 8
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "msg"    # Ljava/io/Serializable;
    .param p3, "topic"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 322
    .local p0, "this":Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;, "Lorg/apache/ignite/internal/managers/GridManagerAdapter.1;"
    const-string v1, "node"

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    const-string v1, "msg"

    invoke-static {p2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 324
    const-string v1, "topic"

    invoke-static {p3, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 327
    :try_start_0
    instance-of v1, p2, Lorg/apache/ignite/plugin/extensions/communication/Message;

    if-eqz v1, :cond_0

    .line 328
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;->this$0:Lorg/apache/ignite/internal/managers/GridManagerAdapter;

    iget-object v1, v1, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v1

    check-cast p2, Lorg/apache/ignite/plugin/extensions/communication/Message;

    .end local p2    # "msg":Ljava/io/Serializable;
    sget-object v2, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->SYSTEM_POOL:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    invoke-virtual {v1, p1, p3, p2, v2}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->send(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;Lorg/apache/ignite/plugin/extensions/communication/Message;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V

    .line 335
    :goto_0
    return-void

    .line 330
    .restart local p2    # "msg":Ljava/io/Serializable;
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;->this$0:Lorg/apache/ignite/internal/managers/GridManagerAdapter;

    iget-object v1, v1, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/apache/ignite/cluster/ClusterNode;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v7}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->sendUserMessage(Ljava/util/Collection;Ljava/lang/Object;Ljava/lang/Object;ZJ)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 332
    .end local p2    # "msg":Ljava/io/Serializable;
    :catch_0
    move-exception v0

    .line 333
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;->unwrapException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/spi/IgniteSpiException;

    move-result-object v1

    throw v1
.end method

.method public validateNode(Lorg/apache/ignite/cluster/ClusterNode;)Lorg/apache/ignite/spi/IgniteSpiNodeValidationResult;
    .locals 4
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;

    .prologue
    .line 469
    .local p0, "this":Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;, "Lorg/apache/ignite/internal/managers/GridManagerAdapter.1;"
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;->this$0:Lorg/apache/ignite/internal/managers/GridManagerAdapter;

    iget-object v3, v3, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/GridComponent;

    .line 470
    .local v0, "comp":Lorg/apache/ignite/internal/GridComponent;
    invoke-interface {v0, p1}, Lorg/apache/ignite/internal/GridComponent;->validateNode(Lorg/apache/ignite/cluster/ClusterNode;)Lorg/apache/ignite/spi/IgniteSpiNodeValidationResult;

    move-result-object v1

    .line 472
    .local v1, "err":Lorg/apache/ignite/spi/IgniteSpiNodeValidationResult;
    if-eqz v1, :cond_0

    .line 476
    .end local v0    # "comp":Lorg/apache/ignite/internal/GridComponent;
    .end local v1    # "err":Lorg/apache/ignite/spi/IgniteSpiNodeValidationResult;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public writeToSwap(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ClassLoader;)V
    .locals 2
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
    .line 430
    .local p0, "this":Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;, "Lorg/apache/ignite/internal/managers/GridManagerAdapter.1;"
    sget-boolean v1, Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;->this$0:Lorg/apache/ignite/internal/managers/GridManagerAdapter;

    iget-object v1, v1, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->swap()Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->enabled()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 433
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/GridManagerAdapter$1;->this$0:Lorg/apache/ignite/internal/managers/GridManagerAdapter;

    iget-object v1, v1, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->swap()Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->write(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    return-void

    .line 435
    :catch_0
    move-exception v0

    .line 436
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
.end method
