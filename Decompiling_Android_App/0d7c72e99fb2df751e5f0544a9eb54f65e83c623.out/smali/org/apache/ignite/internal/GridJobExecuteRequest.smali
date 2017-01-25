.class public Lorg/apache/ignite/internal/GridJobExecuteRequest;
.super Ljava/lang/Object;
.source "GridJobExecuteRequest.java"

# interfaces
.implements Lorg/apache/ignite/plugin/extensions/communication/Message;
.implements Lorg/apache/ignite/internal/GridTaskMessage;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private clsLdrId:Lorg/apache/ignite/lang/IgniteUuid;

.field private cpSpi:Ljava/lang/String;

.field private createTime:J
    .annotation runtime Lorg/apache/ignite/internal/GridDirectTransient;
    .end annotation
.end field

.field private depMode:Lorg/apache/ignite/configuration/DeploymentMode;

.field private dynamicSiblings:Z

.field private forceLocDep:Z

.field private internal:Z

.field private job:Lorg/apache/ignite/compute/ComputeJob;
    .annotation runtime Lorg/apache/ignite/internal/GridDirectTransient;
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private jobAttrs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<+",
            "Ljava/io/Serializable;",
            "+",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/GridDirectTransient;
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private jobAttrsBytes:[B
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private jobBytes:[B
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private jobId:Lorg/apache/ignite/lang/IgniteUuid;

.field private ldrParticipants:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/GridDirectMap;
        keyType = Ljava/util/UUID;
        valueType = Lorg/apache/ignite/lang/IgniteUuid;
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private sesAttrs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/GridDirectTransient;
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private sesAttrsBytes:[B
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private sesFullSup:Z

.field private sesId:Lorg/apache/ignite/lang/IgniteUuid;

.field private siblings:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/compute/ComputeJobSibling;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/GridDirectTransient;
    .end annotation
.end field

.field private siblingsBytes:[B

.field private startTaskTime:J

.field private subjId:Ljava/util/UUID;

.field private taskClsName:Ljava/lang/String;

.field private taskName:Ljava/lang/String;

.field private timeout:J

.field private top:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/GridDirectCollection;
        value = Ljava/util/UUID;
    .end annotation
.end field

.field private userVer:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lorg/apache/ignite/internal/GridJobExecuteRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->createTime:J

    .line 136
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLorg/apache/ignite/compute/ComputeJob;JJLjava/util/Collection;[BLjava/util/Collection;[BLjava/util/Map;[BLjava/util/Map;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/configuration/DeploymentMode;ZLjava/util/Map;ZZZLjava/util/UUID;)V
    .locals 4
    .param p1, "sesId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p2, "jobId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p3, "taskName"    # Ljava/lang/String;
    .param p4, "userVer"    # Ljava/lang/String;
    .param p5, "taskClsName"    # Ljava/lang/String;
    .param p6, "jobBytes"    # [B
    .param p7, "job"    # Lorg/apache/ignite/compute/ComputeJob;
    .param p8, "startTaskTime"    # J
    .param p10, "timeout"    # J
    .param p12    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13, "siblingsBytes"    # [B
    .param p15, "sesAttrsBytes"    # [B
    .param p17, "jobAttrsBytes"    # [B
    .param p19, "cpSpi"    # Ljava/lang/String;
    .param p20, "clsLdrId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p21, "depMode"    # Lorg/apache/ignite/configuration/DeploymentMode;
    .param p22, "dynamicSiblings"    # Z
    .param p24, "forceLocDep"    # Z
    .param p25, "sesFullSup"    # Z
    .param p26, "internal"    # Z
    .param p27, "subjId"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B",
            "Lorg/apache/ignite/compute/ComputeJob;",
            "JJ",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;[B",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/compute/ComputeJobSibling;",
            ">;[B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;[B",
            "Ljava/util/Map",
            "<+",
            "Ljava/io/Serializable;",
            "+",
            "Ljava/io/Serializable;",
            ">;",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "Lorg/apache/ignite/configuration/DeploymentMode;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            ">;ZZZ",
            "Ljava/util/UUID;",
            ")V"
        }
    .end annotation

    .prologue
    .line 190
    .local p12, "top":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    .local p14, "siblings":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/compute/ComputeJobSibling;>;"
    .local p16, "sesAttrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .local p18, "jobAttrs":Ljava/util/Map;, "Ljava/util/Map<+Ljava/io/Serializable;+Ljava/io/Serializable;>;"
    .local p23, "ldrParticipants":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->createTime:J

    .line 191
    move-object/from16 v0, p12

    iput-object v0, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->top:Ljava/util/Collection;

    .line 192
    sget-boolean v2, Lorg/apache/ignite/internal/GridJobExecuteRequest;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 193
    :cond_0
    sget-boolean v2, Lorg/apache/ignite/internal/GridJobExecuteRequest;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez p2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 194
    :cond_1
    sget-boolean v2, Lorg/apache/ignite/internal/GridJobExecuteRequest;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    if-nez p3, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 195
    :cond_2
    sget-boolean v2, Lorg/apache/ignite/internal/GridJobExecuteRequest;->$assertionsDisabled:Z

    if-nez v2, :cond_3

    if-nez p5, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 196
    :cond_3
    sget-boolean v2, Lorg/apache/ignite/internal/GridJobExecuteRequest;->$assertionsDisabled:Z

    if-nez v2, :cond_4

    if-nez p7, :cond_4

    if-nez p6, :cond_4

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 197
    :cond_4
    sget-boolean v2, Lorg/apache/ignite/internal/GridJobExecuteRequest;->$assertionsDisabled:Z

    if-nez v2, :cond_5

    if-nez p16, :cond_5

    if-nez p15, :cond_5

    if-eqz p25, :cond_5

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 198
    :cond_5
    sget-boolean v2, Lorg/apache/ignite/internal/GridJobExecuteRequest;->$assertionsDisabled:Z

    if-nez v2, :cond_6

    if-nez p18, :cond_6

    if-nez p17, :cond_6

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 199
    :cond_6
    sget-boolean v2, Lorg/apache/ignite/internal/GridJobExecuteRequest;->$assertionsDisabled:Z

    if-nez v2, :cond_7

    if-nez p20, :cond_7

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 200
    :cond_7
    sget-boolean v2, Lorg/apache/ignite/internal/GridJobExecuteRequest;->$assertionsDisabled:Z

    if-nez v2, :cond_8

    if-nez p4, :cond_8

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 201
    :cond_8
    sget-boolean v2, Lorg/apache/ignite/internal/GridJobExecuteRequest;->$assertionsDisabled:Z

    if-nez v2, :cond_9

    if-nez p21, :cond_9

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 203
    :cond_9
    iput-object p1, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->sesId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 204
    iput-object p2, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->jobId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 205
    iput-object p3, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->taskName:Ljava/lang/String;

    .line 206
    iput-object p4, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->userVer:Ljava/lang/String;

    .line 207
    iput-object p5, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->taskClsName:Ljava/lang/String;

    .line 208
    iput-object p6, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->jobBytes:[B

    .line 209
    iput-object p7, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->job:Lorg/apache/ignite/compute/ComputeJob;

    .line 210
    iput-wide p8, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->startTaskTime:J

    .line 211
    iput-wide p10, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->timeout:J

    .line 212
    move-object/from16 v0, p12

    iput-object v0, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->top:Ljava/util/Collection;

    .line 213
    move-object/from16 v0, p13

    iput-object v0, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->siblingsBytes:[B

    .line 214
    move-object/from16 v0, p14

    iput-object v0, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->siblings:Ljava/util/Collection;

    .line 215
    move-object/from16 v0, p15

    iput-object v0, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->sesAttrsBytes:[B

    .line 216
    move-object/from16 v0, p16

    iput-object v0, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->sesAttrs:Ljava/util/Map;

    .line 217
    move-object/from16 v0, p17

    iput-object v0, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->jobAttrsBytes:[B

    .line 218
    move-object/from16 v0, p18

    iput-object v0, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->jobAttrs:Ljava/util/Map;

    .line 219
    move-object/from16 v0, p20

    iput-object v0, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->clsLdrId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 220
    move-object/from16 v0, p21

    iput-object v0, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->depMode:Lorg/apache/ignite/configuration/DeploymentMode;

    .line 221
    move/from16 v0, p22

    iput-boolean v0, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->dynamicSiblings:Z

    .line 222
    move-object/from16 v0, p23

    iput-object v0, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->ldrParticipants:Ljava/util/Map;

    .line 223
    move/from16 v0, p24

    iput-boolean v0, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->forceLocDep:Z

    .line 224
    move/from16 v0, p25

    iput-boolean v0, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->sesFullSup:Z

    .line 225
    move/from16 v0, p26

    iput-boolean v0, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->internal:Z

    .line 226
    move-object/from16 v0, p27

    iput-object v0, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->subjId:Ljava/util/UUID;

    .line 228
    if-eqz p19, :cond_a

    invoke-virtual/range {p19 .. p19}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_a
    const/16 p19, 0x0

    .end local p19    # "cpSpi":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p19

    iput-object v0, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->cpSpi:Ljava/lang/String;

    .line 229
    return-void
.end method


# virtual methods
.method public directType()B
    .locals 1

    .prologue
    .line 744
    const/4 v0, 0x1

    return v0
.end method

.method public fieldsCount()B
    .locals 1

    .prologue
    .line 749
    const/16 v0, 0x15

    return v0
.end method

.method public getCheckpointSpi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->cpSpi:Ljava/lang/String;

    return-object v0
.end method

.method public getClassLoaderId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->clsLdrId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public getCreateTime()J
    .locals 2

    .prologue
    .line 298
    iget-wide v0, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->createTime:J

    return-wide v0
.end method

.method public getDeploymentMode()Lorg/apache/ignite/configuration/DeploymentMode;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->depMode:Lorg/apache/ignite/configuration/DeploymentMode;

    return-object v0
.end method

.method public getJob()Lorg/apache/ignite/compute/ComputeJob;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->job:Lorg/apache/ignite/compute/ComputeJob;

    return-object v0
.end method

.method public getJobAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<+",
            "Ljava/io/Serializable;",
            "+",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 340
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->jobAttrs:Ljava/util/Map;

    return-object v0
.end method

.method public getJobAttributesBytes()[B
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->jobAttrsBytes:[B

    return-object v0
.end method

.method public getJobBytes()[B
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->jobBytes:[B

    return-object v0
.end method

.method public getJobId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->jobId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public getLoaderParticipants()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            ">;"
        }
    .end annotation

    .prologue
    .line 377
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->ldrParticipants:Ljava/util/Map;

    return-object v0
.end method

.method public getSessionAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 326
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->sesAttrs:Ljava/util/Map;

    return-object v0
.end method

.method public getSessionAttributesBytes()[B
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->sesAttrsBytes:[B

    return-object v0
.end method

.method public getSessionId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->sesId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public getSiblings()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/compute/ComputeJobSibling;",
            ">;"
        }
    .end annotation

    .prologue
    .line 312
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->siblings:Ljava/util/Collection;

    return-object v0
.end method

.method public getSiblingsBytes()[B
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->siblingsBytes:[B

    return-object v0
.end method

.method public getStartTaskTime()J
    .locals 2

    .prologue
    .line 282
    iget-wide v0, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->startTaskTime:J

    return-wide v0
.end method

.method public getSubjectId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->subjId:Ljava/util/UUID;

    return-object v0
.end method

.method public getTaskClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->taskClsName:Ljava/lang/String;

    return-object v0
.end method

.method public getTaskName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->taskName:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeout()J
    .locals 2

    .prologue
    .line 289
    iget-wide v0, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->timeout:J

    return-wide v0
.end method

.method public getUserVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->userVer:Ljava/lang/String;

    return-object v0
.end method

.method public isDynamicSiblings()Z
    .locals 1

    .prologue
    .line 370
    iget-boolean v0, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->dynamicSiblings:Z

    return v0
.end method

.method public isForceLocalDeployment()Z
    .locals 1

    .prologue
    .line 384
    iget-boolean v0, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->forceLocDep:Z

    return v0
.end method

.method public isInternal()Z
    .locals 1

    .prologue
    .line 404
    iget-boolean v0, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->internal:Z

    return v0
.end method

.method public isSessionFullSupport()Z
    .locals 1

    .prologue
    .line 397
    iget-boolean v0, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->sesFullSup:Z

    return v0
.end method

.method public readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z
    .locals 5
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "reader"    # Lorg/apache/ignite/plugin/extensions/communication/MessageReader;

    .prologue
    const/4 v1, 0x0

    .line 559
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 561
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->beforeMessageRead()Z

    move-result v2

    if-nez v2, :cond_1

    .line 739
    :cond_0
    :goto_0
    return v1

    .line 564
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->state()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 739
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 566
    :pswitch_0
    const-string v2, "clsLdrId"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readIgniteUuid(Ljava/lang/String;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->clsLdrId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 568
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 571
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 574
    :pswitch_1
    const-string v2, "cpSpi"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->cpSpi:Ljava/lang/String;

    .line 576
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 579
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 584
    :pswitch_2
    const-string v2, "depMode"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readByte(Ljava/lang/String;)B

    move-result v0

    .line 586
    .local v0, "depModeOrd":B
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 589
    invoke-static {v0}, Lorg/apache/ignite/configuration/DeploymentMode;->fromOrdinal(I)Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->depMode:Lorg/apache/ignite/configuration/DeploymentMode;

    .line 591
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 594
    .end local v0    # "depModeOrd":B
    :pswitch_3
    const-string v2, "dynamicSiblings"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->dynamicSiblings:Z

    .line 596
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 599
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 602
    :pswitch_4
    const-string v2, "forceLocDep"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->forceLocDep:Z

    .line 604
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 607
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 610
    :pswitch_5
    const-string v2, "internal"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->internal:Z

    .line 612
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 615
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 618
    :pswitch_6
    const-string v2, "jobAttrsBytes"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readByteArray(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->jobAttrsBytes:[B

    .line 620
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 623
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 626
    :pswitch_7
    const-string v2, "jobBytes"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readByteArray(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->jobBytes:[B

    .line 628
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 631
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 634
    :pswitch_8
    const-string v2, "jobId"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readIgniteUuid(Ljava/lang/String;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->jobId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 636
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 639
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 642
    :pswitch_9
    const-string v2, "ldrParticipants"

    sget-object v3, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->UUID:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    sget-object v4, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->IGNITE_UUID:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v2, v3, v4, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readMap(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;Z)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->ldrParticipants:Ljava/util/Map;

    .line 644
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 647
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 650
    :pswitch_a
    const-string v2, "sesAttrsBytes"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readByteArray(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->sesAttrsBytes:[B

    .line 652
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 655
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 658
    :pswitch_b
    const-string v2, "sesFullSup"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->sesFullSup:Z

    .line 660
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 663
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 666
    :pswitch_c
    const-string v2, "sesId"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readIgniteUuid(Ljava/lang/String;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->sesId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 668
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 671
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 674
    :pswitch_d
    const-string v2, "siblingsBytes"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readByteArray(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->siblingsBytes:[B

    .line 676
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 679
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 682
    :pswitch_e
    const-string v2, "startTaskTime"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->startTaskTime:J

    .line 684
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 687
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 690
    :pswitch_f
    const-string v2, "subjId"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readUuid(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->subjId:Ljava/util/UUID;

    .line 692
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 695
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 698
    :pswitch_10
    const-string/jumbo v2, "taskClsName"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->taskClsName:Ljava/lang/String;

    .line 700
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 703
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 706
    :pswitch_11
    const-string/jumbo v2, "taskName"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->taskName:Ljava/lang/String;

    .line 708
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 711
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 714
    :pswitch_12
    const-string/jumbo v2, "timeout"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->timeout:J

    .line 716
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 719
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 722
    :pswitch_13
    const-string/jumbo v2, "top"

    sget-object v3, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->UUID:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readCollection(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Ljava/util/Collection;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->top:Ljava/util/Collection;

    .line 724
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 727
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 730
    :pswitch_14
    const-string/jumbo v2, "userVer"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->userVer:Ljava/lang/String;

    .line 732
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 735
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    goto/16 :goto_1

    .line 564
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 754
    const-class v0, Lorg/apache/ignite/internal/GridJobExecuteRequest;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public topology()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 391
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->top:Ljava/util/Collection;

    return-object v0
.end method

.method public writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z
    .locals 5
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "writer"    # Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;

    .prologue
    const/4 v1, 0x0

    .line 416
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 418
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->isHeaderWritten()Z

    move-result v0

    if-nez v0, :cond_1

    .line 419
    invoke-virtual {p0}, Lorg/apache/ignite/internal/GridJobExecuteRequest;->directType()B

    move-result v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/GridJobExecuteRequest;->fieldsCount()B

    move-result v2

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeHeader(BB)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 554
    :goto_0
    return v0

    .line 422
    :cond_0
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->onHeaderWritten()V

    .line 425
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->state()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 554
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 427
    :pswitch_0
    const-string v0, "clsLdrId"

    iget-object v2, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->clsLdrId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeIgniteUuid(Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 428
    goto :goto_0

    .line 430
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 433
    :pswitch_1
    const-string v0, "cpSpi"

    iget-object v2, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->cpSpi:Ljava/lang/String;

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 434
    goto :goto_0

    .line 436
    :cond_3
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 439
    :pswitch_2
    const-string v2, "depMode"

    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->depMode:Lorg/apache/ignite/configuration/DeploymentMode;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->depMode:Lorg/apache/ignite/configuration/DeploymentMode;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/DeploymentMode;->ordinal()I

    move-result v0

    int-to-byte v0, v0

    :goto_2
    invoke-interface {p2, v2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeByte(Ljava/lang/String;B)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 440
    goto :goto_0

    .line 439
    :cond_4
    const/4 v0, -0x1

    goto :goto_2

    .line 442
    :cond_5
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 445
    :pswitch_3
    const-string v0, "dynamicSiblings"

    iget-boolean v2, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->dynamicSiblings:Z

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    .line 446
    goto :goto_0

    .line 448
    :cond_6
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 451
    :pswitch_4
    const-string v0, "forceLocDep"

    iget-boolean v2, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->forceLocDep:Z

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    .line 452
    goto :goto_0

    .line 454
    :cond_7
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 457
    :pswitch_5
    const-string v0, "internal"

    iget-boolean v2, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->internal:Z

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    .line 458
    goto :goto_0

    .line 460
    :cond_8
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 463
    :pswitch_6
    const-string v0, "jobAttrsBytes"

    iget-object v2, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->jobAttrsBytes:[B

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeByteArray(Ljava/lang/String;[B)Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    .line 464
    goto :goto_0

    .line 466
    :cond_9
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 469
    :pswitch_7
    const-string v0, "jobBytes"

    iget-object v2, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->jobBytes:[B

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeByteArray(Ljava/lang/String;[B)Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v1

    .line 470
    goto/16 :goto_0

    .line 472
    :cond_a
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 475
    :pswitch_8
    const-string v0, "jobId"

    iget-object v2, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->jobId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeIgniteUuid(Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;)Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v1

    .line 476
    goto/16 :goto_0

    .line 478
    :cond_b
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 481
    :pswitch_9
    const-string v0, "ldrParticipants"

    iget-object v2, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->ldrParticipants:Ljava/util/Map;

    sget-object v3, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->UUID:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    sget-object v4, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->IGNITE_UUID:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v0, v2, v3, v4}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeMap(Ljava/lang/String;Ljava/util/Map;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Z

    move-result v0

    if-nez v0, :cond_c

    move v0, v1

    .line 482
    goto/16 :goto_0

    .line 484
    :cond_c
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 487
    :pswitch_a
    const-string v0, "sesAttrsBytes"

    iget-object v2, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->sesAttrsBytes:[B

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeByteArray(Ljava/lang/String;[B)Z

    move-result v0

    if-nez v0, :cond_d

    move v0, v1

    .line 488
    goto/16 :goto_0

    .line 490
    :cond_d
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 493
    :pswitch_b
    const-string v0, "sesFullSup"

    iget-boolean v2, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->sesFullSup:Z

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_e

    move v0, v1

    .line 494
    goto/16 :goto_0

    .line 496
    :cond_e
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 499
    :pswitch_c
    const-string v0, "sesId"

    iget-object v2, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->sesId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeIgniteUuid(Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;)Z

    move-result v0

    if-nez v0, :cond_f

    move v0, v1

    .line 500
    goto/16 :goto_0

    .line 502
    :cond_f
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 505
    :pswitch_d
    const-string v0, "siblingsBytes"

    iget-object v2, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->siblingsBytes:[B

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeByteArray(Ljava/lang/String;[B)Z

    move-result v0

    if-nez v0, :cond_10

    move v0, v1

    .line 506
    goto/16 :goto_0

    .line 508
    :cond_10
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 511
    :pswitch_e
    const-string v0, "startTaskTime"

    iget-wide v2, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->startTaskTime:J

    invoke-interface {p2, v0, v2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeLong(Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_11

    move v0, v1

    .line 512
    goto/16 :goto_0

    .line 514
    :cond_11
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 517
    :pswitch_f
    const-string v0, "subjId"

    iget-object v2, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->subjId:Ljava/util/UUID;

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeUuid(Ljava/lang/String;Ljava/util/UUID;)Z

    move-result v0

    if-nez v0, :cond_12

    move v0, v1

    .line 518
    goto/16 :goto_0

    .line 520
    :cond_12
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 523
    :pswitch_10
    const-string/jumbo v0, "taskClsName"

    iget-object v2, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->taskClsName:Ljava/lang/String;

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    move v0, v1

    .line 524
    goto/16 :goto_0

    .line 526
    :cond_13
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 529
    :pswitch_11
    const-string/jumbo v0, "taskName"

    iget-object v2, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->taskName:Ljava/lang/String;

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    move v0, v1

    .line 530
    goto/16 :goto_0

    .line 532
    :cond_14
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 535
    :pswitch_12
    const-string/jumbo v0, "timeout"

    iget-wide v2, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->timeout:J

    invoke-interface {p2, v0, v2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeLong(Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_15

    move v0, v1

    .line 536
    goto/16 :goto_0

    .line 538
    :cond_15
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 541
    :pswitch_13
    const-string/jumbo v0, "top"

    iget-object v2, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->top:Ljava/util/Collection;

    sget-object v3, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->UUID:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v0, v2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeCollection(Ljava/lang/String;Ljava/util/Collection;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Z

    move-result v0

    if-nez v0, :cond_16

    move v0, v1

    .line 542
    goto/16 :goto_0

    .line 544
    :cond_16
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 547
    :pswitch_14
    const-string/jumbo v0, "userVer"

    iget-object v2, p0, Lorg/apache/ignite/internal/GridJobExecuteRequest;->userVer:Ljava/lang/String;

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    move v0, v1

    .line 548
    goto/16 :goto_0

    .line 550
    :cond_17
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    goto/16 :goto_1

    .line 425
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method
