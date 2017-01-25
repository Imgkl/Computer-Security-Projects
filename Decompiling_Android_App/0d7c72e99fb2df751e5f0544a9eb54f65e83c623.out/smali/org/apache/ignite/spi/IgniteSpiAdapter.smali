.class public abstract Lorg/apache/ignite/spi/IgniteSpiAdapter;
.super Ljava/lang/Object;
.source "IgniteSpiAdapter.java"

# interfaces
.implements Lorg/apache/ignite/spi/IgniteSpi;
.implements Lorg/apache/ignite/spi/IgniteSpiManagementMBean;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/spi/IgniteSpiAdapter$GridDummySpiContext;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected ignite:Lorg/apache/ignite/Ignite;
    .annotation runtime Lorg/apache/ignite/resources/IgniteInstanceResource;
    .end annotation
.end field

.field private log:Lorg/apache/ignite/IgniteLogger;
    .annotation runtime Lorg/apache/ignite/resources/LoggerResource;
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private paramsLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

.field private volatile spiCtx:Lorg/apache/ignite/spi/IgniteSpiContext;

.field private spiMBean:Ljavax/management/ObjectName;

.field private startTstamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lorg/apache/ignite/spi/IgniteSpiAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/spi/IgniteSpiAdapter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lorg/apache/ignite/spi/IgniteSpiAdapter$GridDummySpiContext;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/ignite/spi/IgniteSpiAdapter$GridDummySpiContext;-><init>(Lorg/apache/ignite/cluster/ClusterNode;)V

    iput-object v0, p0, Lorg/apache/ignite/spi/IgniteSpiAdapter;->spiCtx:Lorg/apache/ignite/spi/IgniteSpiContext;

    .line 76
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/spi/IgniteSpiAdapter;->name:Ljava/lang/String;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/spi/IgniteSpiAdapter;Lorg/apache/ignite/spi/IgniteSpiContext;Lorg/apache/ignite/cluster/ClusterNode;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/spi/IgniteSpiAdapter;
    .param p1, "x1"    # Lorg/apache/ignite/spi/IgniteSpiContext;
    .param p2, "x2"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p3, "x3"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/spi/IgniteSpiAdapter;->checkConfigurationConsistency(Lorg/apache/ignite/spi/IgniteSpiContext;Lorg/apache/ignite/cluster/ClusterNode;Z)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/ignite/spi/IgniteSpiAdapter;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/IgniteSpiAdapter;

    .prologue
    .line 46
    iget-object v0, p0, Lorg/apache/ignite/spi/IgniteSpiAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method private checkConfigurationConsistency(Lorg/apache/ignite/spi/IgniteSpiContext;Lorg/apache/ignite/cluster/ClusterNode;Z)V
    .locals 20
    .param p1, "spiCtx"    # Lorg/apache/ignite/spi/IgniteSpiContext;
    .param p2, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p3, "starting"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 399
    sget-boolean v17, Lorg/apache/ignite/spi/IgniteSpiAdapter;->$assertionsDisabled:Z

    if-nez v17, :cond_0

    if-nez p1, :cond_0

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    .line 400
    :cond_0
    sget-boolean v17, Lorg/apache/ignite/spi/IgniteSpiAdapter;->$assertionsDisabled:Z

    if-nez v17, :cond_1

    if-nez p2, :cond_1

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    .line 406
    :cond_1
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/spi/IgniteSpiAdapter;->checkOptional()Z

    move-result v12

    .line 407
    .local v12, "optional":Z
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/spi/IgniteSpiAdapter;->checkEnabled()Z

    move-result v5

    .line 409
    .local v5, "enabled":Z
    if-nez v5, :cond_3

    .line 495
    :cond_2
    :goto_0
    return-void

    .line 412
    :cond_3
    const-string v17, "org.apache.ignite.spi.class"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/ignite/spi/IgniteSpiAdapter;->createSpiAttributeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 414
    .local v4, "clsAttr":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/spi/IgniteSpiAdapter;->getName()Ljava/lang/String;

    move-result-object v11

    .line 416
    .local v11, "name":Ljava/lang/String;
    new-instance v15, Lorg/apache/ignite/internal/util/typedef/internal/SB;

    invoke-direct {v15}, Lorg/apache/ignite/internal/util/typedef/internal/SB;-><init>()V

    .line 424
    .local v15, "sb":Lorg/apache/ignite/internal/util/typedef/internal/SB;
    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/spi/IgniteSpiContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Lorg/apache/ignite/cluster/ClusterNode;->attribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 425
    .local v8, "locCls":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lorg/apache/ignite/cluster/ClusterNode;->attribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 427
    .local v13, "rmtCls":Ljava/lang/String;
    sget-boolean v17, Lorg/apache/ignite/spi/IgniteSpiAdapter;->$assertionsDisabled:Z

    if-nez v17, :cond_4

    if-nez v8, :cond_4

    new-instance v17, Ljava/lang/AssertionError;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Local SPI class name attribute not found: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v17

    .line 429
    :cond_4
    const/4 v7, 0x0

    .line 431
    .local v7, "isSpiConsistent":Z
    const-string v16, " (fix configuration or set -DIGNITE_SKIP_CONFIGURATION_CONSISTENCY_CHECK=true system property)"

    .line 433
    .local v16, "tipStr":Ljava/lang/String;
    if-nez v13, :cond_a

    .line 434
    if-nez v12, :cond_5

    if-eqz p3, :cond_5

    .line 435
    new-instance v17, Lorg/apache/ignite/spi/IgniteSpiException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Remote SPI with the same name is not configured"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " [name="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", loc="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x5d

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 438
    :cond_5
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, ">>> Remote SPI with the same name is not configured: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v8}, Lorg/apache/ignite/spi/IgniteSpiAdapter;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 450
    :goto_1
    if-eqz v12, :cond_6

    if-eqz v7, :cond_2

    .line 454
    :cond_6
    if-eqz v7, :cond_d

    .line 455
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/spi/IgniteSpiAdapter;->getConsistentAttributeNames()Ljava/util/List;

    move-result-object v3

    .line 458
    .local v3, "attrs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 460
    .local v2, "attr":Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_7

    .line 462
    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lorg/apache/ignite/cluster/ClusterNode;->attribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    .line 463
    .local v14, "rmtVal":Ljava/lang/Object;
    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/spi/IgniteSpiContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Lorg/apache/ignite/cluster/ClusterNode;->attribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 465
    .local v9, "locVal":Ljava/lang/Object;
    if-nez v9, :cond_8

    if-eqz v14, :cond_7

    .line 468
    :cond_8
    if-eqz v9, :cond_9

    if-eqz v14, :cond_9

    invoke-virtual {v9, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_7

    .line 469
    :cond_9
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, ">>> Remote node has different "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/spi/IgniteSpiAdapter;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " SPI attribute "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v9, v14}, Lorg/apache/ignite/spi/IgniteSpiAdapter;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    goto :goto_2

    .line 440
    .end local v2    # "attr":Ljava/lang/String;
    .end local v3    # "attrs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v9    # "locVal":Ljava/lang/Object;
    .end local v14    # "rmtVal":Ljava/lang/Object;
    :cond_a
    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_c

    .line 441
    if-nez v12, :cond_b

    if-eqz p3, :cond_b

    .line 442
    new-instance v17, Lorg/apache/ignite/spi/IgniteSpiException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Remote SPI with the same name is of different type"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " [name="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", loc="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", rmt="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x5d

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 445
    :cond_b
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, ">>> Remote SPI with the same name is of different type: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v8, v13}, Lorg/apache/ignite/spi/IgniteSpiAdapter;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    goto/16 :goto_1

    .line 448
    :cond_c
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 475
    :cond_d
    invoke-virtual {v15}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->length()I

    move-result v17

    if-lez v17, :cond_2

    .line 478
    if-eqz p3, :cond_e

    .line 479
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->nl()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->nl()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ">>> +--------------------------------------------------------------------+"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->nl()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ">>> + Courtesy notice that starting node has inconsistent configuration. +"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->nl()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ">>> + Ignore this message if you are sure that this is done on purpose.  +"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->nl()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ">>> +--------------------------------------------------------------------+"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->nl()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ">>> Remote Node ID: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-interface/range {p2 .. p2}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->nl()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 493
    .local v10, "msg":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/IgniteSpiAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v10}, Lorg/apache/ignite/internal/util/typedef/internal/U;->courtesy(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 486
    .end local v10    # "msg":Ljava/lang/String;
    :cond_e
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->nl()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->nl()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ">>> +-------------------------------------------------------------------+"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->nl()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ">>> + Courtesy notice that joining node has inconsistent configuration. +"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->nl()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ">>> + Ignore this message if you are sure that this is done on purpose. +"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->nl()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ">>> +-------------------------------------------------------------------+"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->nl()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ">>> Remote Node ID: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-interface/range {p2 .. p2}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->nl()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "msg":Ljava/lang/String;
    goto/16 :goto_3
.end method

.method private checkEnabled()Z
    .locals 2

    .prologue
    .line 372
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/apache/ignite/spi/IgniteSpiConsistencyChecked;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkOptional()Z
    .locals 3

    .prologue
    .line 363
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/apache/ignite/spi/IgniteSpiConsistencyChecked;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/spi/IgniteSpiConsistencyChecked;

    .line 365
    .local v0, "ann":Lorg/apache/ignite/spi/IgniteSpiConsistencyChecked;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/ignite/spi/IgniteSpiConsistencyChecked;->optional()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "locVal"    # Ljava/lang/Object;

    .prologue
    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->nl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">>> => Local node:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->nl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "locVal"    # Ljava/lang/Object;
    .param p2, "rmtVal"    # Ljava/lang/Object;

    .prologue
    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->nl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">>> => Local node:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->nl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">>> => Remote node: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->nl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final assertParameter(ZLjava/lang/String;)V
    .locals 3
    .param p1, "cond"    # Z
    .param p2, "condDesc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 250
    if-nez p1, :cond_0

    .line 251
    new-instance v0, Lorg/apache/ignite/spi/IgniteSpiException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SPI parameter failed condition check: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_0
    return-void
.end method

.method protected checkConfigurationConsistency0(Lorg/apache/ignite/spi/IgniteSpiContext;Lorg/apache/ignite/cluster/ClusterNode;Z)V
    .locals 0
    .param p1, "spiCtx"    # Lorg/apache/ignite/spi/IgniteSpiContext;
    .param p2, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p3, "starting"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 386
    return-void
.end method

.method protected final configInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/Object;

    .prologue
    .line 280
    sget-boolean v0, Lorg/apache/ignite/spi/IgniteSpiAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 282
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Using parameter ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected createSpiAttributeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "attrName"    # Ljava/lang/String;

    .prologue
    .line 516
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->spiAttribute(Lorg/apache/ignite/spi/IgniteSpi;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getConsistentAttributeNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 505
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExceptionRegistry()Lorg/apache/ignite/internal/util/IgniteExceptionRegistry;
    .locals 1

    .prologue
    .line 224
    invoke-static {}, Lorg/apache/ignite/internal/util/IgniteExceptionRegistry;->get()Lorg/apache/ignite/internal/util/IgniteExceptionRegistry;

    move-result-object v0

    return-object v0
.end method

.method public final getIgniteHome()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lorg/apache/ignite/spi/IgniteSpiAdapter;->ignite:Lorg/apache/ignite/Ignite;

    invoke-interface {v0}, Lorg/apache/ignite/Ignite;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getIgniteHome()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalNodeId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lorg/apache/ignite/spi/IgniteSpiAdapter;->ignite:Lorg/apache/ignite/Ignite;

    invoke-interface {v0}, Lorg/apache/ignite/Ignite;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNodeId()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lorg/apache/ignite/spi/IgniteSpiAdapter;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 229
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getSpiContext()Lorg/apache/ignite/spi/IgniteSpiContext;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lorg/apache/ignite/spi/IgniteSpiAdapter;->spiCtx:Lorg/apache/ignite/spi/IgniteSpiContext;

    return-object v0
.end method

.method public final getStartTimestamp()J
    .locals 2

    .prologue
    .line 98
    iget-wide v0, p0, Lorg/apache/ignite/spi/IgniteSpiAdapter;->startTstamp:J

    return-wide v0
.end method

.method public final getStartTimestampFormatted()Ljava/lang/String;
    .locals 4

    .prologue
    .line 88
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lorg/apache/ignite/spi/IgniteSpiAdapter;->startTstamp:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getUpTime()J
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    .line 103
    iget-wide v2, p0, Lorg/apache/ignite/spi/IgniteSpiAdapter;->startTstamp:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/ignite/spi/IgniteSpiAdapter;->startTstamp:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public final getUpTimeFormatted()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    invoke-virtual {p0}, Lorg/apache/ignite/spi/IgniteSpiAdapter;->getUpTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->timeSpan2HMSM(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public injectables()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final onContextDestroyed()V
    .locals 3

    .prologue
    .line 180
    invoke-virtual {p0}, Lorg/apache/ignite/spi/IgniteSpiAdapter;->onContextDestroyed0()V

    .line 182
    iget-object v1, p0, Lorg/apache/ignite/spi/IgniteSpiAdapter;->spiCtx:Lorg/apache/ignite/spi/IgniteSpiContext;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/spi/IgniteSpiAdapter;->paramsLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    if-eqz v1, :cond_0

    .line 183
    iget-object v1, p0, Lorg/apache/ignite/spi/IgniteSpiAdapter;->spiCtx:Lorg/apache/ignite/spi/IgniteSpiContext;

    iget-object v2, p0, Lorg/apache/ignite/spi/IgniteSpiAdapter;->paramsLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    invoke-interface {v1, v2}, Lorg/apache/ignite/spi/IgniteSpiContext;->removeLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;)Z

    .line 185
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/spi/IgniteSpiAdapter;->spiCtx:Lorg/apache/ignite/spi/IgniteSpiContext;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 188
    .local v0, "locNode":Lorg/apache/ignite/cluster/ClusterNode;
    :goto_0
    new-instance v1, Lorg/apache/ignite/spi/IgniteSpiAdapter$GridDummySpiContext;

    invoke-direct {v1, v0}, Lorg/apache/ignite/spi/IgniteSpiAdapter$GridDummySpiContext;-><init>(Lorg/apache/ignite/cluster/ClusterNode;)V

    iput-object v1, p0, Lorg/apache/ignite/spi/IgniteSpiAdapter;->spiCtx:Lorg/apache/ignite/spi/IgniteSpiContext;

    .line 189
    return-void

    .line 185
    .end local v0    # "locNode":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/spi/IgniteSpiAdapter;->spiCtx:Lorg/apache/ignite/spi/IgniteSpiContext;

    invoke-interface {v1}, Lorg/apache/ignite/spi/IgniteSpiContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v0

    goto :goto_0
.end method

.method protected onContextDestroyed0()V
    .locals 0

    .prologue
    .line 196
    return-void
.end method

.method public final onContextInitialized(Lorg/apache/ignite/spi/IgniteSpiContext;)V
    .locals 8
    .param p1, "spiCtx"    # Lorg/apache/ignite/spi/IgniteSpiContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 133
    sget-boolean v3, Lorg/apache/ignite/spi/IgniteSpiAdapter;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 135
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/spi/IgniteSpiAdapter;->spiCtx:Lorg/apache/ignite/spi/IgniteSpiContext;

    .line 137
    const-string v3, "IGNITE_SKIP_CONFIGURATION_CONSISTENCY_CHECK"

    invoke-static {v3}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 138
    new-instance v3, Lorg/apache/ignite/spi/IgniteSpiAdapter$1;

    invoke-direct {v3, p0, p1}, Lorg/apache/ignite/spi/IgniteSpiAdapter$1;-><init>(Lorg/apache/ignite/spi/IgniteSpiAdapter;Lorg/apache/ignite/spi/IgniteSpiContext;)V

    iput-object v3, p0, Lorg/apache/ignite/spi/IgniteSpiAdapter;->paramsLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    new-array v4, v6, [I

    const/16 v5, 0xa

    aput v5, v4, v7

    invoke-interface {p1, v3, v4}, Lorg/apache/ignite/spi/IgniteSpiContext;->addLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;[I)V

    .line 157
    invoke-interface {p1}, Lorg/apache/ignite/spi/IgniteSpiContext;->remoteNodes()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {p1}, Lorg/apache/ignite/spi/IgniteSpiContext;->remoteDaemonNodes()Ljava/util/Collection;

    move-result-object v4

    invoke-static {v7, v3, v4}, Lorg/apache/ignite/internal/util/typedef/F;->concat(ZLjava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    .line 159
    .local v2, "remotes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/cluster/ClusterNode;

    .line 160
    .local v1, "node":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-direct {p0, p1, v1, v6}, Lorg/apache/ignite/spi/IgniteSpiAdapter;->checkConfigurationConsistency(Lorg/apache/ignite/spi/IgniteSpiContext;Lorg/apache/ignite/cluster/ClusterNode;Z)V

    .line 161
    invoke-virtual {p0, p1, v1, v6}, Lorg/apache/ignite/spi/IgniteSpiAdapter;->checkConfigurationConsistency0(Lorg/apache/ignite/spi/IgniteSpiContext;Lorg/apache/ignite/cluster/ClusterNode;Z)V

    goto :goto_0

    .line 165
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v2    # "remotes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/ignite/spi/IgniteSpiAdapter;->onContextInitialized0(Lorg/apache/ignite/spi/IgniteSpiContext;)V

    .line 166
    return-void
.end method

.method protected onContextInitialized0(Lorg/apache/ignite/spi/IgniteSpiContext;)V
    .locals 0
    .param p1, "spiCtx"    # Lorg/apache/ignite/spi/IgniteSpiContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 176
    return-void
.end method

.method protected final registerMBean(Ljava/lang/String;Lorg/apache/ignite/spi/IgniteSpiManagementMBean;Ljava/lang/Class;)V
    .locals 7
    .param p1, "gridName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/ignite/spi/IgniteSpiManagementMBean;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 319
    .local p2, "impl":Lorg/apache/ignite/spi/IgniteSpiManagementMBean;, "TT;"
    .local p3, "mbeanItf":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v1, p0, Lorg/apache/ignite/spi/IgniteSpiAdapter;->ignite:Lorg/apache/ignite/Ignite;

    invoke-interface {v1}, Lorg/apache/ignite/Ignite;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMBeanServer()Ljavax/management/MBeanServer;

    move-result-object v0

    .line 321
    .local v0, "jmx":Ljavax/management/MBeanServer;
    sget-boolean v1, Lorg/apache/ignite/spi/IgniteSpiAdapter;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 322
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/spi/IgniteSpiAdapter;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 325
    :cond_1
    :try_start_0
    const-string v2, "SPIs"

    invoke-virtual {p0}, Lorg/apache/ignite/spi/IgniteSpiAdapter;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->registerMBean(Ljavax/management/MBeanServer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljavax/management/ObjectName;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/spi/IgniteSpiAdapter;->spiMBean:Ljavax/management/ObjectName;

    .line 327
    iget-object v1, p0, Lorg/apache/ignite/spi/IgniteSpiAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 328
    iget-object v1, p0, Lorg/apache/ignite/spi/IgniteSpiAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Registered SPI MBean: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/spi/IgniteSpiAdapter;->spiMBean:Ljavax/management/ObjectName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/management/JMException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    :cond_2
    return-void

    .line 330
    :catch_0
    move-exception v6

    .line 331
    .local v6, "e":Ljavax/management/JMException;
    new-instance v1, Lorg/apache/ignite/spi/IgniteSpiException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to register SPI MBean: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/spi/IgniteSpiAdapter;->spiMBean:Ljavax/management/ObjectName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v6}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 128
    iput-object p1, p0, Lorg/apache/ignite/spi/IgniteSpiAdapter;->name:Ljava/lang/String;

    .line 129
    return-void
.end method

.method protected final startInfo()Ljava/lang/String;
    .locals 4

    .prologue
    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SPI started ok [startMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/ignite/spi/IgniteSpiAdapter;->getUpTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", spiMBean="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/spi/IgniteSpiAdapter;->spiMBean:Ljavax/management/ObjectName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected startStopwatch()V
    .locals 2

    .prologue
    .line 83
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/spi/IgniteSpiAdapter;->startTstamp:J

    .line 84
    return-void
.end method

.method protected final stopInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    const-string v0, "SPI stopped ok."

    return-object v0
.end method

.method protected final unregisterMBean()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 342
    iget-object v2, p0, Lorg/apache/ignite/spi/IgniteSpiAdapter;->spiMBean:Ljavax/management/ObjectName;

    if-eqz v2, :cond_1

    .line 343
    iget-object v2, p0, Lorg/apache/ignite/spi/IgniteSpiAdapter;->ignite:Lorg/apache/ignite/Ignite;

    invoke-interface {v2}, Lorg/apache/ignite/Ignite;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMBeanServer()Ljavax/management/MBeanServer;

    move-result-object v1

    .line 345
    .local v1, "jmx":Ljavax/management/MBeanServer;
    sget-boolean v2, Lorg/apache/ignite/spi/IgniteSpiAdapter;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez v1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 348
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/spi/IgniteSpiAdapter;->spiMBean:Ljavax/management/ObjectName;

    invoke-interface {v1, v2}, Ljavax/management/MBeanServer;->unregisterMBean(Ljavax/management/ObjectName;)V

    .line 350
    iget-object v2, p0, Lorg/apache/ignite/spi/IgniteSpiAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 351
    iget-object v2, p0, Lorg/apache/ignite/spi/IgniteSpiAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unregistered SPI MBean: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/spi/IgniteSpiAdapter;->spiMBean:Ljavax/management/ObjectName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/management/JMException; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    .end local v1    # "jmx":Ljavax/management/MBeanServer;
    :cond_1
    return-void

    .line 353
    .restart local v1    # "jmx":Ljavax/management/MBeanServer;
    :catch_0
    move-exception v0

    .line 354
    .local v0, "e":Ljavax/management/JMException;
    new-instance v2, Lorg/apache/ignite/spi/IgniteSpiException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to unregister SPI MBean: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/spi/IgniteSpiAdapter;->spiMBean:Ljavax/management/ObjectName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
