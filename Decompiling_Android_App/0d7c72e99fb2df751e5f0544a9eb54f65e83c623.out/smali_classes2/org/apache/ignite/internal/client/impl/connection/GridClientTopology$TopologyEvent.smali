.class Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology$TopologyEvent;
.super Ljava/lang/Object;
.source "GridClientTopology.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TopologyEvent"
.end annotation


# instance fields
.field private added:Z

.field private node:Lorg/apache/ignite/internal/client/GridClientNode;


# direct methods
.method private constructor <init>(ZLorg/apache/ignite/internal/client/GridClientNode;)V
    .locals 0
    .param p1, "added"    # Z
    .param p2, "node"    # Lorg/apache/ignite/internal/client/GridClientNode;

    .prologue
    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 432
    iput-boolean p1, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology$TopologyEvent;->added:Z

    .line 433
    iput-object p2, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology$TopologyEvent;->node:Lorg/apache/ignite/internal/client/GridClientNode;

    .line 434
    return-void
.end method

.method synthetic constructor <init>(ZLorg/apache/ignite/internal/client/GridClientNode;Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology$1;)V
    .locals 0
    .param p1, "x0"    # Z
    .param p2, "x1"    # Lorg/apache/ignite/internal/client/GridClientNode;
    .param p3, "x2"    # Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology$1;

    .prologue
    .line 417
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology$TopologyEvent;-><init>(ZLorg/apache/ignite/internal/client/GridClientNode;)V

    return-void
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology$TopologyEvent;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology$TopologyEvent;

    .prologue
    .line 417
    invoke-direct {p0}, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology$TopologyEvent;->added()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology$TopologyEvent;)Lorg/apache/ignite/internal/client/GridClientNode;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology$TopologyEvent;

    .prologue
    .line 417
    invoke-direct {p0}, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology$TopologyEvent;->node()Lorg/apache/ignite/internal/client/GridClientNode;

    move-result-object v0

    return-object v0
.end method

.method private added()Z
    .locals 1

    .prologue
    .line 440
    iget-boolean v0, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology$TopologyEvent;->added:Z

    return v0
.end method

.method private node()Lorg/apache/ignite/internal/client/GridClientNode;
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology$TopologyEvent;->node:Lorg/apache/ignite/internal/client/GridClientNode;

    return-object v0
.end method
