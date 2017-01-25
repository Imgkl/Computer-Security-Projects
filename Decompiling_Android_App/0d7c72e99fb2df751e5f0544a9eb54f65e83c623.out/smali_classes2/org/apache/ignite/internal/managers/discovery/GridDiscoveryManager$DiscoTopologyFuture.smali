.class Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoTopologyFuture;
.super Lorg/apache/ignite/internal/util/future/GridFutureAdapter;
.source "GridDiscoveryManager.java"

# interfaces
.implements Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DiscoTopologyFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/future/GridFutureAdapter",
        "<",
        "Ljava/lang/Long;",
        ">;",
        "Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private awaitVer:J

.field private ctx:Lorg/apache/ignite/internal/GridKernalContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1835
    const-class v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoTopologyFuture;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1846
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;-><init>()V

    .line 1848
    return-void
.end method

.method private constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;J)V
    .locals 0
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;
    .param p2, "awaitVer"    # J

    .prologue
    .line 1854
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;-><init>()V

    .line 1855
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoTopologyFuture;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    .line 1856
    iput-wide p2, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoTopologyFuture;->awaitVer:J

    .line 1857
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;JLorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/GridKernalContext;
    .param p2, "x1"    # J
    .param p4, "x2"    # Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$1;

    .prologue
    .line 1835
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoTopologyFuture;-><init>(Lorg/apache/ignite/internal/GridKernalContext;J)V

    return-void
.end method

.method static synthetic access$3800(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoTopologyFuture;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoTopologyFuture;

    .prologue
    .line 1835
    invoke-direct {p0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoTopologyFuture;->init()V

    return-void
.end method

.method private init()V
    .locals 5

    .prologue
    .line 1861
    iget-object v2, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoTopologyFuture;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v2

    const/16 v3, 0xa

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    invoke-virtual {v2, p0, v3, v4}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->addLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;I[I)V

    .line 1864
    iget-object v2, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoTopologyFuture;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->topologyVersion()J

    move-result-wide v0

    .line 1866
    .local v0, "topVer":J
    iget-wide v2, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoTopologyFuture;->awaitVer:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 1867
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoTopologyFuture;->onDone(Ljava/lang/Object;)Z

    .line 1868
    :cond_0
    return-void

    .line 1861
    nop

    :array_0
    .array-data 4
        0xb
        0xc
    .end array-data
.end method


# virtual methods
.method public onDone(Ljava/lang/Long;Ljava/lang/Throwable;)Z
    .locals 2
    .param p1, "res"    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "err"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1872
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1873
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoTopologyFuture;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, p0, v1}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->removeLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;[I)Z

    .line 1875
    const/4 v0, 0x1

    .line 1878
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1873
    nop

    :array_0
    .array-data 4
        0xa
        0xb
        0xc
    .end array-data
.end method

.method public bridge synthetic onDone(Ljava/lang/Object;Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Throwable;

    .prologue
    .line 1835
    check-cast p1, Ljava/lang/Long;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoTopologyFuture;->onDone(Ljava/lang/Long;Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public onEvent(Lorg/apache/ignite/events/Event;)V
    .locals 6
    .param p1, "evt"    # Lorg/apache/ignite/events/Event;

    .prologue
    .line 1883
    sget-boolean v1, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoTopologyFuture;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->type()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->type()I

    move-result v1

    const/16 v2, 0xb

    if-eq v1, v2, :cond_0

    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->type()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    move-object v0, p1

    .line 1885
    check-cast v0, Lorg/apache/ignite/events/DiscoveryEvent;

    .line 1887
    .local v0, "discoEvt":Lorg/apache/ignite/events/DiscoveryEvent;
    invoke-virtual {v0}, Lorg/apache/ignite/events/DiscoveryEvent;->topologyVersion()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoTopologyFuture;->awaitVer:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    .line 1888
    invoke-virtual {v0}, Lorg/apache/ignite/events/DiscoveryEvent;->topologyVersion()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoTopologyFuture;->onDone(Ljava/lang/Object;)Z

    .line 1889
    :cond_1
    return-void
.end method
