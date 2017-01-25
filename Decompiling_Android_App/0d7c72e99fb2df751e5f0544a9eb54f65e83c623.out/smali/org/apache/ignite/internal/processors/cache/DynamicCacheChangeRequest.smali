.class public Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;
.super Ljava/lang/Object;
.source "DynamicCacheChangeRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private cacheName:Ljava/lang/String;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private clientStartOnly:Z

.field private deploymentId:Lorg/apache/ignite/lang/IgniteUuid;

.field private failIfExists:Z

.field private initiatingNodeId:Ljava/util/UUID;

.field private nearCacheCfg:Lorg/apache/ignite/configuration/NearCacheConfiguration;

.field private startCfg:Lorg/apache/ignite/configuration/CacheConfiguration;

.field private stop:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/UUID;)V
    .locals 1
    .param p1, "cacheName"    # Ljava/lang/String;
    .param p2, "initiatingNodeId"    # Ljava/util/UUID;

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;-><init>(Ljava/lang/String;Ljava/util/UUID;Z)V

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/UUID;Z)V
    .locals 0
    .param p1, "cacheName"    # Ljava/lang/String;
    .param p2, "initiatingNodeId"    # Ljava/util/UUID;
    .param p3, "stop"    # Z

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->cacheName:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->initiatingNodeId:Ljava/util/UUID;

    .line 71
    iput-boolean p3, p0, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->stop:Z

    .line 72
    return-void
.end method


# virtual methods
.method public cacheName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->cacheName:Ljava/lang/String;

    return-object v0
.end method

.method public cacheName(Ljava/lang/String;)V
    .locals 0
    .param p1, "cacheName"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->cacheName:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public clientStartOnly(Z)V
    .locals 0
    .param p1, "clientStartOnly"    # Z

    .prologue
    .line 172
    iput-boolean p1, p0, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->clientStartOnly:Z

    .line 173
    return-void
.end method

.method public clientStartOnly()Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->clientStartOnly:Z

    return v0
.end method

.method public deploymentId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->deploymentId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public deploymentId(Lorg/apache/ignite/lang/IgniteUuid;)V
    .locals 0
    .param p1, "deploymentId"    # Lorg/apache/ignite/lang/IgniteUuid;

    .prologue
    .line 95
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->deploymentId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 96
    return-void
.end method

.method public failIfExists(Z)V
    .locals 0
    .param p1, "failIfExists"    # Z

    .prologue
    .line 186
    iput-boolean p1, p0, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->failIfExists:Z

    .line 187
    return-void
.end method

.method public failIfExists()Z
    .locals 1

    .prologue
    .line 179
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->failIfExists:Z

    return v0
.end method

.method public initiatingNodeId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->initiatingNodeId:Ljava/util/UUID;

    return-object v0
.end method

.method public nearCacheConfiguration()Lorg/apache/ignite/configuration/NearCacheConfiguration;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->nearCacheCfg:Lorg/apache/ignite/configuration/NearCacheConfiguration;

    return-object v0
.end method

.method public nearCacheConfiguration(Lorg/apache/ignite/configuration/NearCacheConfiguration;)V
    .locals 0
    .param p1, "nearCacheCfg"    # Lorg/apache/ignite/configuration/NearCacheConfiguration;

    .prologue
    .line 144
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->nearCacheCfg:Lorg/apache/ignite/configuration/NearCacheConfiguration;

    .line 145
    return-void
.end method

.method public start()Z
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->startCfg:Lorg/apache/ignite/configuration/CacheConfiguration;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startCacheConfiguration()Lorg/apache/ignite/configuration/CacheConfiguration;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->startCfg:Lorg/apache/ignite/configuration/CacheConfiguration;

    return-object v0
.end method

.method public startCacheConfiguration(Lorg/apache/ignite/configuration/CacheConfiguration;)V
    .locals 0
    .param p1, "startCfg"    # Lorg/apache/ignite/configuration/CacheConfiguration;

    .prologue
    .line 158
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->startCfg:Lorg/apache/ignite/configuration/CacheConfiguration;

    .line 159
    return-void
.end method

.method public stop()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->stop:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 191
    const-class v0, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;

    const-string v1, "cacheName"

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;->cacheName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
