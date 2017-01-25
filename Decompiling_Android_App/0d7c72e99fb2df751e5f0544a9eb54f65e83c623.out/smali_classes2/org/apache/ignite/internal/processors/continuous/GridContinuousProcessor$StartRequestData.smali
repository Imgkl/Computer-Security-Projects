.class Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;
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
    name = "StartRequestData"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private autoUnsubscribe:Z

.field private bufSize:I

.field private clsName:Ljava/lang/String;

.field private depInfo:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;

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

.field private prjPredBytes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1435
    const-class v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1468
    return-void
.end method

.method constructor <init>(Lorg/apache/ignite/lang/IgnitePredicate;Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;IJZ)V
    .locals 2
    .param p1    # Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "hnd"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;
    .param p3, "bufSize"    # I
    .param p4, "interval"    # J
    .param p6, "autoUnsubscribe"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;",
            "Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;",
            "IJZ)V"
        }
    .end annotation

    .prologue
    .line 1478
    .local p1, "prjPred":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1479
    sget-boolean v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1480
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-gtz p3, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1481
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-gez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1483
    :cond_2
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;->prjPred:Lorg/apache/ignite/lang/IgnitePredicate;

    .line 1484
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;->hnd:Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;

    .line 1485
    iput p3, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;->bufSize:I

    .line 1486
    iput-wide p4, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;->interval:J

    .line 1487
    iput-boolean p6, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;->autoUnsubscribe:Z

    .line 1488
    return-void
.end method

.method static synthetic access$3600(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;

    .prologue
    .line 1435
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;->clsName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3602(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1435
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;->clsName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3700(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;)Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;

    .prologue
    .line 1435
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;->depInfo:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;

    return-object v0
.end method

.method static synthetic access$3702(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;)Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;
    .param p1, "x1"    # Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;

    .prologue
    .line 1435
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;->depInfo:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;

    return-object p1
.end method

.method static synthetic access$3800(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;)Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;

    .prologue
    .line 1435
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;->hnd:Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;

    return-object v0
.end method

.method static synthetic access$4100(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;)Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;

    .prologue
    .line 1435
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;->prjPred:Lorg/apache/ignite/lang/IgnitePredicate;

    return-object v0
.end method

.method static synthetic access$4102(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;
    .param p1, "x1"    # Lorg/apache/ignite/lang/IgnitePredicate;

    .prologue
    .line 1435
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;->prjPred:Lorg/apache/ignite/lang/IgnitePredicate;

    return-object p1
.end method

.method static synthetic access$4202(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;[B)[B
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;
    .param p1, "x1"    # [B

    .prologue
    .line 1435
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;->prjPredBytes:[B

    return-object p1
.end method

.method static synthetic access$4400(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;

    .prologue
    .line 1435
    iget v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;->bufSize:I

    return v0
.end method

.method static synthetic access$4500(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;

    .prologue
    .line 1435
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;->interval:J

    return-wide v0
.end method

.method static synthetic access$4600(Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;

    .prologue
    .line 1435
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;->autoUnsubscribe:Z

    return v0
.end method


# virtual methods
.method p2pMarshal(Lorg/apache/ignite/marshaller/Marshaller;)V
    .locals 1
    .param p1, "marsh"    # Lorg/apache/ignite/marshaller/Marshaller;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1495
    sget-boolean v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1497
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;->prjPred:Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-interface {p1, v0}, Lorg/apache/ignite/marshaller/Marshaller;->marshal(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;->prjPredBytes:[B

    .line 1498
    return-void
.end method

.method p2pUnmarshal(Lorg/apache/ignite/marshaller/Marshaller;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "marsh"    # Lorg/apache/ignite/marshaller/Marshaller;
    .param p2, "ldr"    # Ljava/lang/ClassLoader;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1506
    sget-boolean v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1508
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;->prjPred:Lorg/apache/ignite/lang/IgnitePredicate;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1509
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;->prjPredBytes:[B

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1511
    :cond_2
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;->prjPredBytes:[B

    invoke-interface {p1, v0, p2}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/lang/IgnitePredicate;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;->prjPred:Lorg/apache/ignite/lang/IgnitePredicate;

    .line 1512
    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 4
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1537
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    .line 1539
    .local v0, "b":Z
    if-eqz v0, :cond_0

    .line 1540
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readByteArray(Ljava/io/DataInput;)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;->prjPredBytes:[B

    .line 1541
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;->clsName:Ljava/lang/String;

    .line 1542
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;->depInfo:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;

    .line 1547
    :goto_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;->hnd:Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;

    .line 1548
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v1

    iput v1, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;->bufSize:I

    .line 1549
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;->interval:J

    .line 1550
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;->autoUnsubscribe:Z

    .line 1551
    return-void

    .line 1545
    :cond_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/lang/IgnitePredicate;

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;->prjPred:Lorg/apache/ignite/lang/IgnitePredicate;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1555
    const-class v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 4
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1516
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;->prjPredBytes:[B

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 1518
    .local v0, "b":Z
    :goto_0
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 1520
    if-eqz v0, :cond_1

    .line 1521
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;->prjPredBytes:[B

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeByteArray(Ljava/io/DataOutput;[B)V

    .line 1522
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;->clsName:Ljava/lang/String;

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 1523
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;->depInfo:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 1528
    :goto_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;->hnd:Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 1529
    iget v1, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;->bufSize:I

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 1530
    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;->interval:J

    invoke-interface {p1, v2, v3}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 1531
    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;->autoUnsubscribe:Z

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 1532
    return-void

    .line 1516
    .end local v0    # "b":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1526
    .restart local v0    # "b":Z
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartRequestData;->prjPred:Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    goto :goto_1
.end method
