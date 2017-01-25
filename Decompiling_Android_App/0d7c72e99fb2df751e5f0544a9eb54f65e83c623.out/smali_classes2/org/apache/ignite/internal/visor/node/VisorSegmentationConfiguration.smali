.class public Lorg/apache/ignite/internal/visor/node/VisorSegmentationConfiguration;
.super Ljava/lang/Object;
.source "VisorSegmentationConfiguration.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private checkFreq:J

.field private passRequired:Z

.field private plc:Lorg/apache/ignite/plugin/segmentation/GridSegmentationPolicy;

.field private resolvers:Ljava/lang/String;

.field private waitOnStart:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(Lorg/apache/ignite/configuration/IgniteConfiguration;)Lorg/apache/ignite/internal/visor/node/VisorSegmentationConfiguration;
    .locals 4
    .param p0, "c"    # Lorg/apache/ignite/configuration/IgniteConfiguration;

    .prologue
    .line 56
    new-instance v0, Lorg/apache/ignite/internal/visor/node/VisorSegmentationConfiguration;

    invoke-direct {v0}, Lorg/apache/ignite/internal/visor/node/VisorSegmentationConfiguration;-><init>()V

    .line 58
    .local v0, "cfg":Lorg/apache/ignite/internal/visor/node/VisorSegmentationConfiguration;
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getSegmentationPolicy()Lorg/apache/ignite/plugin/segmentation/GridSegmentationPolicy;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/ignite/internal/visor/node/VisorSegmentationConfiguration;->plc:Lorg/apache/ignite/plugin/segmentation/GridSegmentationPolicy;

    .line 59
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getSegmentationResolvers()[Lorg/apache/ignite/plugin/segmentation/GridSegmentationResolver;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->compactArray([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/ignite/internal/visor/node/VisorSegmentationConfiguration;->resolvers:Ljava/lang/String;

    .line 60
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getSegmentCheckFrequency()J

    move-result-wide v2

    iput-wide v2, v0, Lorg/apache/ignite/internal/visor/node/VisorSegmentationConfiguration;->checkFreq:J

    .line 61
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isWaitForSegmentOnStart()Z

    move-result v1

    iput-boolean v1, v0, Lorg/apache/ignite/internal/visor/node/VisorSegmentationConfiguration;->waitOnStart:Z

    .line 62
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isAllSegmentationResolversPassRequired()Z

    move-result v1

    iput-boolean v1, v0, Lorg/apache/ignite/internal/visor/node/VisorSegmentationConfiguration;->passRequired:Z

    .line 64
    return-object v0
.end method


# virtual methods
.method public checkFrequency()J
    .locals 2

    .prologue
    .line 85
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/node/VisorSegmentationConfiguration;->checkFreq:J

    return-wide v0
.end method

.method public passRequired()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lorg/apache/ignite/internal/visor/node/VisorSegmentationConfiguration;->passRequired:Z

    return v0
.end method

.method public policy()Lorg/apache/ignite/plugin/segmentation/GridSegmentationPolicy;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorSegmentationConfiguration;->plc:Lorg/apache/ignite/plugin/segmentation/GridSegmentationPolicy;

    return-object v0
.end method

.method public resolvers()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorSegmentationConfiguration;->resolvers:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    const-class v0, Lorg/apache/ignite/internal/visor/node/VisorSegmentationConfiguration;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public waitOnStart()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lorg/apache/ignite/internal/visor/node/VisorSegmentationConfiguration;->waitOnStart:Z

    return v0
.end method
