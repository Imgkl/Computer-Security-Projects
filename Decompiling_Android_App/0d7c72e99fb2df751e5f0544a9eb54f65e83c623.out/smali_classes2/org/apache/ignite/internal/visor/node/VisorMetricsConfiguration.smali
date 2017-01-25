.class public Lorg/apache/ignite/internal/visor/node/VisorMetricsConfiguration;
.super Ljava/lang/Object;
.source "VisorMetricsConfiguration.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private expTime:J

.field private histSize:I

.field private logFreq:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(Lorg/apache/ignite/configuration/IgniteConfiguration;)Lorg/apache/ignite/internal/visor/node/VisorMetricsConfiguration;
    .locals 4
    .param p0, "c"    # Lorg/apache/ignite/configuration/IgniteConfiguration;

    .prologue
    .line 46
    new-instance v0, Lorg/apache/ignite/internal/visor/node/VisorMetricsConfiguration;

    invoke-direct {v0}, Lorg/apache/ignite/internal/visor/node/VisorMetricsConfiguration;-><init>()V

    .line 48
    .local v0, "cfg":Lorg/apache/ignite/internal/visor/node/VisorMetricsConfiguration;
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMetricsExpireTime()J

    move-result-wide v2

    iput-wide v2, v0, Lorg/apache/ignite/internal/visor/node/VisorMetricsConfiguration;->expTime:J

    .line 49
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMetricsHistorySize()I

    move-result v1

    iput v1, v0, Lorg/apache/ignite/internal/visor/node/VisorMetricsConfiguration;->histSize:I

    .line 50
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMetricsLogFrequency()J

    move-result-wide v2

    iput-wide v2, v0, Lorg/apache/ignite/internal/visor/node/VisorMetricsConfiguration;->logFreq:J

    .line 52
    return-object v0
.end method


# virtual methods
.method public expireTime()J
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/node/VisorMetricsConfiguration;->expTime:J

    return-wide v0
.end method

.method public historySize()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lorg/apache/ignite/internal/visor/node/VisorMetricsConfiguration;->histSize:I

    return v0
.end method

.method public loggerFrequency()J
    .locals 2

    .prologue
    .line 73
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/node/VisorMetricsConfiguration;->logFreq:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const-class v0, Lorg/apache/ignite/internal/visor/node/VisorMetricsConfiguration;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
