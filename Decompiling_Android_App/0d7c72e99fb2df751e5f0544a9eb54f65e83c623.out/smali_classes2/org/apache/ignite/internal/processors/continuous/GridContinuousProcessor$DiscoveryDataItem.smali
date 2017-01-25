.class Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryDataItem;
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
    name = "DiscoveryDataItem"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private autoUnsubscribe:Z

.field private bufSize:I

.field private hnd:Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;

.field private interval:J

.field private prjPred:Lorg/apache/ignite/lang/IgnitePredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation
.end field

.field private routineId:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1619
    const-class v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryDataItem;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1644
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1646
    return-void
.end method

.method constructor <init>(Ljava/util/UUID;Lorg/apache/ignite/lang/IgnitePredicate;Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;IJ)V
    .locals 3
    .param p1, "routineId"    # Ljava/util/UUID;
    .param p2    # Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "hnd"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;
    .param p4, "bufSize"    # I
    .param p5, "interval"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;",
            "Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1656
    .local p2, "prjPred":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1657
    sget-boolean v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryDataItem;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1658
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryDataItem;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1659
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryDataItem;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-gtz p4, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1660
    :cond_2
    sget-boolean v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryDataItem;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-gez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1662
    :cond_3
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryDataItem;->routineId:Ljava/util/UUID;

    .line 1663
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryDataItem;->prjPred:Lorg/apache/ignite/lang/IgnitePredicate;

    .line 1664
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryDataItem;->hnd:Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;

    .line 1665
    iput p4, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryDataItem;->bufSize:I

    .line 1666
    iput-wide p5, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryDataItem;->interval:J

    .line 1667
    return-void
.end method

.method static synthetic access$2800(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryDataItem;)Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryDataItem;

    .prologue
    .line 1619
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryDataItem;->prjPred:Lorg/apache/ignite/lang/IgnitePredicate;

    return-object v0
.end method

.method static synthetic access$3000(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryDataItem;)Ljava/util/UUID;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryDataItem;

    .prologue
    .line 1619
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryDataItem;->routineId:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$3100(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryDataItem;)Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryDataItem;

    .prologue
    .line 1619
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryDataItem;->hnd:Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;

    return-object v0
.end method

.method static synthetic access$3200(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryDataItem;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryDataItem;

    .prologue
    .line 1619
    iget v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryDataItem;->bufSize:I

    return v0
.end method

.method static synthetic access$3300(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryDataItem;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryDataItem;

    .prologue
    .line 1619
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryDataItem;->interval:J

    return-wide v0
.end method

.method static synthetic access$3400(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryDataItem;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryDataItem;

    .prologue
    .line 1619
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryDataItem;->autoUnsubscribe:Z

    return v0
.end method


# virtual methods
.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1682
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readUuid(Ljava/io/DataInput;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryDataItem;->routineId:Ljava/util/UUID;

    .line 1683
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/lang/IgnitePredicate;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryDataItem;->prjPred:Lorg/apache/ignite/lang/IgnitePredicate;

    .line 1684
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryDataItem;->hnd:Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;

    .line 1685
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryDataItem;->bufSize:I

    .line 1686
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryDataItem;->interval:J

    .line 1687
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryDataItem;->autoUnsubscribe:Z

    .line 1688
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1692
    const-class v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryDataItem;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1671
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryDataItem;->routineId:Ljava/util/UUID;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeUuid(Ljava/io/DataOutput;Ljava/util/UUID;)V

    .line 1672
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryDataItem;->prjPred:Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 1673
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryDataItem;->hnd:Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 1674
    iget v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryDataItem;->bufSize:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 1675
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryDataItem;->interval:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 1676
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$DiscoveryDataItem;->autoUnsubscribe:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 1677
    return-void
.end method
