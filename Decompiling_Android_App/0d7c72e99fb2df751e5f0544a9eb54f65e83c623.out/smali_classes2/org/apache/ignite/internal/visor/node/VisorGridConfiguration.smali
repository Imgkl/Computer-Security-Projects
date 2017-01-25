.class public Lorg/apache/ignite/internal/visor/node/VisorGridConfiguration;
.super Ljava/lang/Object;
.source "VisorGridConfiguration.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private atomic:Lorg/apache/ignite/internal/visor/node/VisorAtomicConfiguration;

.field private basic:Lorg/apache/ignite/internal/visor/node/VisorBasicConfiguration;

.field private caches:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/ignite/internal/visor/cache/VisorCacheConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private env:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private execSvc:Lorg/apache/ignite/internal/visor/node/VisorExecutorServiceConfiguration;

.field private igfss:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/ignite/internal/visor/node/VisorIgfsConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private inclEvtTypes:[I

.field private inclProps:Ljava/lang/String;

.field private lifecycle:Lorg/apache/ignite/internal/visor/node/VisorLifecycleConfiguration;

.field private metrics:Lorg/apache/ignite/internal/visor/node/VisorMetricsConfiguration;

.field private p2p:Lorg/apache/ignite/internal/visor/node/VisorPeerToPeerConfiguration;

.field private rest:Lorg/apache/ignite/internal/visor/node/VisorRestConfiguration;

.field private seg:Lorg/apache/ignite/internal/visor/node/VisorSegmentationConfiguration;

.field private spis:Lorg/apache/ignite/internal/visor/node/VisorSpisConfiguration;

.field private sysProps:Ljava/util/Properties;

.field private txCfg:Lorg/apache/ignite/internal/visor/node/VisorTransactionConfiguration;

.field private userAttrs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lorg/apache/ignite/internal/visor/node/VisorGridConfiguration;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/visor/node/VisorGridConfiguration;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public atomic()Lorg/apache/ignite/internal/visor/node/VisorAtomicConfiguration;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorGridConfiguration;->atomic:Lorg/apache/ignite/internal/visor/node/VisorAtomicConfiguration;

    return-object v0
.end method

.method public basic()Lorg/apache/ignite/internal/visor/node/VisorBasicConfiguration;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorGridConfiguration;->basic:Lorg/apache/ignite/internal/visor/node/VisorBasicConfiguration;

    return-object v0
.end method

.method public caches()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/ignite/internal/visor/cache/VisorCacheConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorGridConfiguration;->caches:Ljava/lang/Iterable;

    return-object v0
.end method

.method public env()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 214
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorGridConfiguration;->env:Ljava/util/Map;

    return-object v0
.end method

.method public executeService()Lorg/apache/ignite/internal/visor/node/VisorExecutorServiceConfiguration;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorGridConfiguration;->execSvc:Lorg/apache/ignite/internal/visor/node/VisorExecutorServiceConfiguration;

    return-object v0
.end method

.method public from(Lorg/apache/ignite/internal/IgniteEx;)Lorg/apache/ignite/internal/visor/node/VisorGridConfiguration;
    .locals 3
    .param p1, "ignite"    # Lorg/apache/ignite/internal/IgniteEx;

    .prologue
    .line 94
    sget-boolean v1, Lorg/apache/ignite/internal/visor/node/VisorGridConfiguration;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 96
    :cond_0
    invoke-interface {p1}, Lorg/apache/ignite/internal/IgniteEx;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    .line 98
    .local v0, "c":Lorg/apache/ignite/configuration/IgniteConfiguration;
    invoke-static {p1, v0}, Lorg/apache/ignite/internal/visor/node/VisorBasicConfiguration;->from(Lorg/apache/ignite/internal/IgniteEx;Lorg/apache/ignite/configuration/IgniteConfiguration;)Lorg/apache/ignite/internal/visor/node/VisorBasicConfiguration;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/visor/node/VisorGridConfiguration;->basic:Lorg/apache/ignite/internal/visor/node/VisorBasicConfiguration;

    .line 99
    invoke-static {v0}, Lorg/apache/ignite/internal/visor/node/VisorMetricsConfiguration;->from(Lorg/apache/ignite/configuration/IgniteConfiguration;)Lorg/apache/ignite/internal/visor/node/VisorMetricsConfiguration;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/visor/node/VisorGridConfiguration;->metrics:Lorg/apache/ignite/internal/visor/node/VisorMetricsConfiguration;

    .line 100
    invoke-static {v0}, Lorg/apache/ignite/internal/visor/node/VisorSpisConfiguration;->from(Lorg/apache/ignite/configuration/IgniteConfiguration;)Lorg/apache/ignite/internal/visor/node/VisorSpisConfiguration;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/visor/node/VisorGridConfiguration;->spis:Lorg/apache/ignite/internal/visor/node/VisorSpisConfiguration;

    .line 101
    invoke-static {v0}, Lorg/apache/ignite/internal/visor/node/VisorPeerToPeerConfiguration;->from(Lorg/apache/ignite/configuration/IgniteConfiguration;)Lorg/apache/ignite/internal/visor/node/VisorPeerToPeerConfiguration;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/visor/node/VisorGridConfiguration;->p2p:Lorg/apache/ignite/internal/visor/node/VisorPeerToPeerConfiguration;

    .line 102
    invoke-static {v0}, Lorg/apache/ignite/internal/visor/node/VisorLifecycleConfiguration;->from(Lorg/apache/ignite/configuration/IgniteConfiguration;)Lorg/apache/ignite/internal/visor/node/VisorLifecycleConfiguration;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/visor/node/VisorGridConfiguration;->lifecycle:Lorg/apache/ignite/internal/visor/node/VisorLifecycleConfiguration;

    .line 103
    invoke-static {v0}, Lorg/apache/ignite/internal/visor/node/VisorExecutorServiceConfiguration;->from(Lorg/apache/ignite/configuration/IgniteConfiguration;)Lorg/apache/ignite/internal/visor/node/VisorExecutorServiceConfiguration;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/visor/node/VisorGridConfiguration;->execSvc:Lorg/apache/ignite/internal/visor/node/VisorExecutorServiceConfiguration;

    .line 104
    invoke-static {v0}, Lorg/apache/ignite/internal/visor/node/VisorSegmentationConfiguration;->from(Lorg/apache/ignite/configuration/IgniteConfiguration;)Lorg/apache/ignite/internal/visor/node/VisorSegmentationConfiguration;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/visor/node/VisorGridConfiguration;->seg:Lorg/apache/ignite/internal/visor/node/VisorSegmentationConfiguration;

    .line 105
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getIncludeProperties()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->compactArray([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/visor/node/VisorGridConfiguration;->inclProps:Ljava/lang/String;

    .line 106
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getIncludeEventTypes()[I

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/visor/node/VisorGridConfiguration;->inclEvtTypes:[I

    .line 107
    invoke-static {v0}, Lorg/apache/ignite/internal/visor/node/VisorRestConfiguration;->from(Lorg/apache/ignite/configuration/IgniteConfiguration;)Lorg/apache/ignite/internal/visor/node/VisorRestConfiguration;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/visor/node/VisorGridConfiguration;->rest:Lorg/apache/ignite/internal/visor/node/VisorRestConfiguration;

    .line 108
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getUserAttributes()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/visor/node/VisorGridConfiguration;->userAttrs:Ljava/util/Map;

    .line 109
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getCacheConfiguration()[Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/visor/cache/VisorCacheConfiguration;->list(Lorg/apache/ignite/Ignite;[Lorg/apache/ignite/configuration/CacheConfiguration;)Ljava/lang/Iterable;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/visor/node/VisorGridConfiguration;->caches:Ljava/lang/Iterable;

    .line 110
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getFileSystemConfiguration()[Lorg/apache/ignite/configuration/FileSystemConfiguration;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/visor/node/VisorIgfsConfiguration;->list([Lorg/apache/ignite/configuration/FileSystemConfiguration;)Ljava/lang/Iterable;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/visor/node/VisorGridConfiguration;->igfss:Ljava/lang/Iterable;

    .line 111
    new-instance v1, Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->getenv()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, p0, Lorg/apache/ignite/internal/visor/node/VisorGridConfiguration;->env:Ljava/util/Map;

    .line 112
    invoke-static {}, Lorg/apache/ignite/IgniteSystemProperties;->snapshot()Ljava/util/Properties;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/visor/node/VisorGridConfiguration;->sysProps:Ljava/util/Properties;

    .line 113
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getAtomicConfiguration()Lorg/apache/ignite/configuration/AtomicConfiguration;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/visor/node/VisorAtomicConfiguration;->from(Lorg/apache/ignite/configuration/AtomicConfiguration;)Lorg/apache/ignite/internal/visor/node/VisorAtomicConfiguration;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/visor/node/VisorGridConfiguration;->atomic:Lorg/apache/ignite/internal/visor/node/VisorAtomicConfiguration;

    .line 114
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getTransactionConfiguration()Lorg/apache/ignite/configuration/TransactionConfiguration;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/visor/node/VisorTransactionConfiguration;->from(Lorg/apache/ignite/configuration/TransactionConfiguration;)Lorg/apache/ignite/internal/visor/node/VisorTransactionConfiguration;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/visor/node/VisorGridConfiguration;->txCfg:Lorg/apache/ignite/internal/visor/node/VisorTransactionConfiguration;

    .line 116
    return-object p0
.end method

.method public igfss()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/ignite/internal/visor/node/VisorIgfsConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorGridConfiguration;->igfss:Ljava/lang/Iterable;

    return-object v0
.end method

.method public includeEventTypes()[I
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorGridConfiguration;->inclEvtTypes:[I

    return-object v0
.end method

.method public includeProperties()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorGridConfiguration;->inclProps:Ljava/lang/String;

    return-object v0
.end method

.method public lifecycle()Lorg/apache/ignite/internal/visor/node/VisorLifecycleConfiguration;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorGridConfiguration;->lifecycle:Lorg/apache/ignite/internal/visor/node/VisorLifecycleConfiguration;

    return-object v0
.end method

.method public metrics()Lorg/apache/ignite/internal/visor/node/VisorMetricsConfiguration;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorGridConfiguration;->metrics:Lorg/apache/ignite/internal/visor/node/VisorMetricsConfiguration;

    return-object v0
.end method

.method public p2p()Lorg/apache/ignite/internal/visor/node/VisorPeerToPeerConfiguration;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorGridConfiguration;->p2p:Lorg/apache/ignite/internal/visor/node/VisorPeerToPeerConfiguration;

    return-object v0
.end method

.method public rest()Lorg/apache/ignite/internal/visor/node/VisorRestConfiguration;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorGridConfiguration;->rest:Lorg/apache/ignite/internal/visor/node/VisorRestConfiguration;

    return-object v0
.end method

.method public segmentation()Lorg/apache/ignite/internal/visor/node/VisorSegmentationConfiguration;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorGridConfiguration;->seg:Lorg/apache/ignite/internal/visor/node/VisorSegmentationConfiguration;

    return-object v0
.end method

.method public spis()Lorg/apache/ignite/internal/visor/node/VisorSpisConfiguration;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorGridConfiguration;->spis:Lorg/apache/ignite/internal/visor/node/VisorSpisConfiguration;

    return-object v0
.end method

.method public systemProperties()Ljava/util/Properties;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorGridConfiguration;->sysProps:Ljava/util/Properties;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    const-class v0, Lorg/apache/ignite/internal/visor/node/VisorGridConfiguration;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transaction()Lorg/apache/ignite/internal/visor/node/VisorTransactionConfiguration;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorGridConfiguration;->txCfg:Lorg/apache/ignite/internal/visor/node/VisorTransactionConfiguration;

    return-object v0
.end method

.method public userAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorGridConfiguration;->userAttrs:Ljava/util/Map;

    return-object v0
.end method
