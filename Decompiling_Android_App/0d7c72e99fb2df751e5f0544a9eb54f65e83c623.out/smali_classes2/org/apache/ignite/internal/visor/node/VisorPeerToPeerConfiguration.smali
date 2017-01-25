.class public Lorg/apache/ignite/internal/visor/node/VisorPeerToPeerConfiguration;
.super Ljava/lang/Object;
.source "VisorPeerToPeerConfiguration.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private p2pEnabled:Z

.field private p2pLocClsPathExcl:Ljava/lang/String;

.field private p2pMissedResCacheSize:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(Lorg/apache/ignite/configuration/IgniteConfiguration;)Lorg/apache/ignite/internal/visor/node/VisorPeerToPeerConfiguration;
    .locals 2
    .param p0, "c"    # Lorg/apache/ignite/configuration/IgniteConfiguration;

    .prologue
    .line 49
    new-instance v0, Lorg/apache/ignite/internal/visor/node/VisorPeerToPeerConfiguration;

    invoke-direct {v0}, Lorg/apache/ignite/internal/visor/node/VisorPeerToPeerConfiguration;-><init>()V

    .line 51
    .local v0, "cfg":Lorg/apache/ignite/internal/visor/node/VisorPeerToPeerConfiguration;
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isPeerClassLoadingEnabled()Z

    move-result v1

    iput-boolean v1, v0, Lorg/apache/ignite/internal/visor/node/VisorPeerToPeerConfiguration;->p2pEnabled:Z

    .line 52
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getPeerClassLoadingMissedResourcesCacheSize()I

    move-result v1

    iput v1, v0, Lorg/apache/ignite/internal/visor/node/VisorPeerToPeerConfiguration;->p2pMissedResCacheSize:I

    .line 53
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getPeerClassLoadingLocalClassPathExclude()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->compactArray([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/ignite/internal/visor/node/VisorPeerToPeerConfiguration;->p2pLocClsPathExcl:Ljava/lang/String;

    .line 55
    return-object v0
.end method


# virtual methods
.method public p2pEnabled()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lorg/apache/ignite/internal/visor/node/VisorPeerToPeerConfiguration;->p2pEnabled:Z

    return v0
.end method

.method public p2pLocalClassPathExclude()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorPeerToPeerConfiguration;->p2pLocClsPathExcl:Ljava/lang/String;

    return-object v0
.end method

.method public p2pMissedResponseCacheSize()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lorg/apache/ignite/internal/visor/node/VisorPeerToPeerConfiguration;->p2pMissedResCacheSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    const-class v0, Lorg/apache/ignite/internal/visor/node/VisorPeerToPeerConfiguration;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
