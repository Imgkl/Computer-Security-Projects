.class Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryData;
.super Ljava/lang/Object;
.source "GridContinuousProcessor.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DiscoveryData"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private items:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryDataItem;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private nodeId:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1562
    const-class v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryData;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1576
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1578
    return-void
.end method

.method constructor <init>(Ljava/util/UUID;)V
    .locals 1
    .param p1, "nodeId"    # Ljava/util/UUID;

    .prologue
    .line 1583
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1584
    sget-boolean v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryData;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1586
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryData;->nodeId:Ljava/util/UUID;

    .line 1588
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryData;->items:Ljava/util/Collection;

    .line 1589
    return-void
.end method

.method static synthetic access$2700(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryData;)Ljava/util/Collection;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryData;

    .prologue
    .line 1562
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryData;->items:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic access$2900(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryData;)Ljava/util/UUID;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryData;

    .prologue
    .line 1562
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryData;->nodeId:Ljava/util/UUID;

    return-object v0
.end method


# virtual methods
.method public addItem(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryDataItem;)V
    .locals 1
    .param p1, "item"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryDataItem;

    .prologue
    .line 1595
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryData;->items:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1596
    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1606
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readUuid(Ljava/io/DataInput;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryData;->nodeId:Ljava/util/UUID;

    .line 1607
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readCollection(Ljava/io/ObjectInput;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryData;->items:Ljava/util/Collection;

    .line 1608
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1612
    const-class v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryData;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1600
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryData;->nodeId:Ljava/util/UUID;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeUuid(Ljava/io/DataOutput;Ljava/util/UUID;)V

    .line 1601
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryData;->items:Ljava/util/Collection;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeCollection(Ljava/io/ObjectOutput;Ljava/util/Collection;)V

    .line 1602
    return-void
.end method
