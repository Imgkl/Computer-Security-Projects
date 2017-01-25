.class public Lorg/apache/ignite/internal/IgnitionEx;
.super Ljava/lang/Object;
.source "IgnitionEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;,
        Lorg/apache/ignite/internal/IgnitionEx$GridStartContext;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final DFLT_CFG:Ljava/lang/String; = "config/default-config.xml"

.field private static clientMode:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static daemon:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile dfltGrid:Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;

.field private static final dfltGridMux:Ljava/lang/Object;

.field private static volatile dfltGridState:Lorg/apache/ignite/IgniteState;

.field private static final gridStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lorg/apache/ignite/IgniteState;",
            ">;"
        }
    .end annotation
.end field

.field private static final grids:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Object;",
            "Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;",
            ">;"
        }
    .end annotation
.end field

.field private static final lsnrs:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/IgnitionListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 94
    const-class v0, Lorg/apache/ignite/internal/IgnitionEx;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/IgnitionEx;->$assertionsDisabled:Z

    .line 99
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/IgnitionEx;->grids:Ljava/util/concurrent/ConcurrentMap;

    .line 102
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/IgnitionEx;->gridStates:Ljava/util/Map;

    .line 105
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/IgnitionEx;->dfltGridMux:Ljava/lang/Object;

    .line 114
    new-instance v0, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;-><init>(I)V

    sput-object v0, Lorg/apache/ignite/internal/IgnitionEx;->lsnrs:Ljava/util/Collection;

    .line 117
    new-instance v0, Lorg/apache/ignite/internal/IgnitionEx$1;

    invoke-direct {v0}, Lorg/apache/ignite/internal/IgnitionEx$1;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/IgnitionEx;->daemon:Ljava/lang/ThreadLocal;

    .line 124
    new-instance v0, Lorg/apache/ignite/internal/IgnitionEx$2;

    invoke-direct {v0}, Lorg/apache/ignite/internal/IgnitionEx$2;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/IgnitionEx;->clientMode:Ljava/lang/ThreadLocal;

    .line 136
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->jdkVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1.7"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->jdkVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1.8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 138
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignite requires Java 7 or above. Current Java version is not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->jdkVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 146
    :cond_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 147
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    return-void
.end method

.method static synthetic access$200()Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lorg/apache/ignite/internal/IgnitionEx;->daemon:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lorg/apache/ignite/internal/IgnitionEx;->clientMode:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method public static addListener(Lorg/apache/ignite/IgnitionListener;)V
    .locals 1
    .param p0, "lsnr"    # Lorg/apache/ignite/IgnitionListener;

    .prologue
    .line 1054
    const-string v0, "lsnr"

    invoke-static {p0, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1056
    sget-object v0, Lorg/apache/ignite/internal/IgnitionEx;->lsnrs:Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1057
    return-void
.end method

.method public static allGrids()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/Ignite;",
            ">;"
        }
    .end annotation

    .prologue
    .line 940
    new-instance v0, Ljava/util/ArrayList;

    sget-object v5, Lorg/apache/ignite/internal/IgnitionEx;->grids:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 942
    .local v0, "allIgnites":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/Ignite;>;"
    sget-object v5, Lorg/apache/ignite/internal/IgnitionEx;->grids:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;

    .line 943
    .local v3, "grid":Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;
    invoke-virtual {v3}, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->grid()Lorg/apache/ignite/internal/IgniteKernal;

    move-result-object v2

    .line 945
    .local v2, "g":Lorg/apache/ignite/Ignite;
    if-eqz v2, :cond_0

    .line 946
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 949
    .end local v2    # "g":Lorg/apache/ignite/Ignite;
    .end local v3    # "grid":Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;
    :cond_1
    sget-object v1, Lorg/apache/ignite/internal/IgnitionEx;->dfltGrid:Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;

    .line 951
    .local v1, "dfltGrid0":Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;
    if-eqz v1, :cond_2

    .line 952
    invoke-virtual {v1}, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->grid()Lorg/apache/ignite/internal/IgniteKernal;

    move-result-object v2

    .line 954
    .local v2, "g":Lorg/apache/ignite/internal/IgniteKernal;
    if-eqz v2, :cond_2

    .line 955
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 958
    .end local v2    # "g":Lorg/apache/ignite/internal/IgniteKernal;
    :cond_2
    return-object v0
.end method

.method public static grid()Lorg/apache/ignite/Ignite;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteIllegalStateException;
        }
    .end annotation

    .prologue
    .line 931
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/ignite/internal/IgnitionEx;->grid(Ljava/lang/String;)Lorg/apache/ignite/Ignite;

    move-result-object v0

    return-object v0
.end method

.method public static grid(Ljava/lang/String;)Lorg/apache/ignite/Ignite;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteIllegalStateException;
        }
    .end annotation

    .prologue
    .line 1013
    if-eqz p0, :cond_1

    sget-object v2, Lorg/apache/ignite/internal/IgnitionEx;->grids:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;

    move-object v0, v2

    .line 1017
    .local v0, "grid":Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->grid()Lorg/apache/ignite/internal/IgniteKernal;

    move-result-object v1

    .local v1, "res":Lorg/apache/ignite/Ignite;
    if-nez v1, :cond_2

    .line 1018
    .end local v1    # "res":Lorg/apache/ignite/Ignite;
    :cond_0
    new-instance v2, Lorg/apache/ignite/IgniteIllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Grid instance was not properly started or was already stopped: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ignite/IgniteIllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1013
    .end local v0    # "grid":Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;
    :cond_1
    sget-object v0, Lorg/apache/ignite/internal/IgnitionEx;->dfltGrid:Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;

    goto :goto_0

    .line 1021
    .restart local v0    # "grid":Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;
    .restart local v1    # "res":Lorg/apache/ignite/Ignite;
    :cond_2
    return-object v1
.end method

.method public static grid(Ljava/util/UUID;)Lorg/apache/ignite/Ignite;
    .locals 7
    .param p0, "locNodeId"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteIllegalStateException;
        }
    .end annotation

    .prologue
    .line 974
    const-string v4, "locNodeId"

    invoke-static {p0, v4}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 976
    sget-object v0, Lorg/apache/ignite/internal/IgnitionEx;->dfltGrid:Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;

    .line 978
    .local v0, "dfltGrid0":Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;
    if-eqz v0, :cond_0

    .line 979
    invoke-virtual {v0}, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->grid()Lorg/apache/ignite/internal/IgniteKernal;

    move-result-object v1

    .line 981
    .local v1, "g":Lorg/apache/ignite/internal/IgniteKernal;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/apache/ignite/internal/IgniteKernal;->getLocalNodeId()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 989
    :goto_0
    return-object v1

    .line 985
    .end local v1    # "g":Lorg/apache/ignite/internal/IgniteKernal;
    :cond_0
    sget-object v4, Lorg/apache/ignite/internal/IgnitionEx;->grids:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;

    .line 986
    .local v2, "grid":Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;
    invoke-virtual {v2}, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->grid()Lorg/apache/ignite/internal/IgniteKernal;

    move-result-object v1

    .line 988
    .restart local v1    # "g":Lorg/apache/ignite/internal/IgniteKernal;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/IgniteKernal;->getLocalNodeId()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 992
    .end local v1    # "g":Lorg/apache/ignite/internal/IgniteKernal;
    .end local v2    # "grid":Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;
    :cond_2
    new-instance v4, Lorg/apache/ignite/IgniteIllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Grid instance with given local node ID was not properly started or was stopped: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/ignite/IgniteIllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static gridx(Ljava/lang/String;)Lorg/apache/ignite/internal/IgniteKernal;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1031
    if-eqz p0, :cond_1

    sget-object v2, Lorg/apache/ignite/internal/IgnitionEx;->grids:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;

    move-object v0, v2

    .line 1035
    .local v0, "grid":Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->gridx()Lorg/apache/ignite/internal/IgniteKernal;

    move-result-object v1

    .local v1, "res":Lorg/apache/ignite/internal/IgniteKernal;
    if-nez v1, :cond_2

    .line 1036
    .end local v1    # "res":Lorg/apache/ignite/internal/IgniteKernal;
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Grid instance was not properly started or was already stopped: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1031
    .end local v0    # "grid":Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;
    :cond_1
    sget-object v0, Lorg/apache/ignite/internal/IgnitionEx;->dfltGrid:Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;

    goto :goto_0

    .line 1038
    .restart local v0    # "grid":Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;
    .restart local v1    # "res":Lorg/apache/ignite/internal/IgniteKernal;
    :cond_2
    return-object v1
.end method

.method public static isClientMode()Z
    .locals 1

    .prologue
    .line 199
    sget-object v0, Lorg/apache/ignite/internal/IgnitionEx;->clientMode:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isDaemon()Z
    .locals 1

    .prologue
    .line 181
    sget-object v0, Lorg/apache/ignite/internal/IgnitionEx;->daemon:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static kill(Z)V
    .locals 1
    .param p0, "cancel"    # Z

    .prologue
    .line 409
    invoke-static {p0}, Lorg/apache/ignite/internal/IgnitionEx;->stopAll(Z)V

    .line 412
    const/16 v0, 0x82

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 413
    return-void
.end method

.method public static loadConfiguration(Ljava/lang/String;)Lorg/apache/ignite/lang/IgniteBiTuple;
    .locals 3
    .param p0, "springCfgPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Lorg/apache/ignite/configuration/IgniteConfiguration;",
            "Lorg/apache/ignite/internal/processors/resource/GridSpringResourceContext;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 639
    invoke-static {p0}, Lorg/apache/ignite/internal/IgnitionEx;->loadConfigurations(Ljava/lang/String;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v0

    .line 642
    .local v0, "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/util/Collection<Lorg/apache/ignite/configuration/IgniteConfiguration;>;+Lorg/apache/ignite/internal/processors/resource/GridSpringResourceContext;>;"
    invoke-virtual {v0}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/F;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v1

    return-object v1
.end method

.method public static loadConfiguration(Ljava/net/URL;)Lorg/apache/ignite/lang/IgniteBiTuple;
    .locals 3
    .param p0, "springCfgUrl"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            ")",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Lorg/apache/ignite/configuration/IgniteConfiguration;",
            "Lorg/apache/ignite/internal/processors/resource/GridSpringResourceContext;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 619
    invoke-static {p0}, Lorg/apache/ignite/internal/IgnitionEx;->loadConfigurations(Ljava/net/URL;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v0

    .line 621
    .local v0, "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/util/Collection<Lorg/apache/ignite/configuration/IgniteConfiguration;>;+Lorg/apache/ignite/internal/processors/resource/GridSpringResourceContext;>;"
    invoke-virtual {v0}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/F;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v1

    return-object v1
.end method

.method public static loadConfigurations(Ljava/lang/String;)Lorg/apache/ignite/lang/IgniteBiTuple;
    .locals 5
    .param p0, "springCfgPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/configuration/IgniteConfiguration;",
            ">;+",
            "Lorg/apache/ignite/internal/processors/resource/GridSpringResourceContext;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 585
    const-string v2, "springCfgPath"

    invoke-static {p0, v2}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 590
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 601
    .local v1, "url":Ljava/net/URL;
    :cond_0
    invoke-static {v1}, Lorg/apache/ignite/internal/IgnitionEx;->loadConfigurations(Ljava/net/URL;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v2

    return-object v2

    .line 592
    .end local v1    # "url":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 593
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-static {p0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->resolveIgniteUrl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    .line 595
    .restart local v1    # "url":Ljava/net/URL;
    if-nez v1, :cond_0

    .line 596
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Spring XML configuration path is invalid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Note that this path should be either absolute or a relative local file system path, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "relative to META-INF in classpath or valid URL to IGNITE_HOME."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static loadConfigurations(Ljava/net/URL;)Lorg/apache/ignite/lang/IgniteBiTuple;
    .locals 3
    .param p0, "springCfgUrl"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            ")",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/configuration/IgniteConfiguration;",
            ">;+",
            "Lorg/apache/ignite/internal/processors/resource/GridSpringResourceContext;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 565
    sget-object v1, Lorg/apache/ignite/internal/IgniteComponentType;->SPRING:Lorg/apache/ignite/internal/IgniteComponentType;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/IgniteComponentType;->create(Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/spring/IgniteSpringHelper;

    .line 567
    .local v0, "spring":Lorg/apache/ignite/internal/util/spring/IgniteSpringHelper;
    new-array v1, v2, [Ljava/lang/String;

    invoke-interface {v0, p0, v1}, Lorg/apache/ignite/internal/util/spring/IgniteSpringHelper;->loadConfigurations(Ljava/net/URL;[Ljava/lang/String;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v1

    return-object v1
.end method

.method public static loadSpringBean(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p0, "springXmlPath"    # Ljava/lang/String;
    .param p1, "beanName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 891
    const-string v1, "springXmlPath"

    invoke-static {p0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 892
    const-string v1, "beanName"

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 894
    invoke-static {p0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->resolveSpringUrl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 896
    .local v0, "url":Ljava/net/URL;
    sget-boolean v1, Lorg/apache/ignite/internal/IgnitionEx;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 898
    :cond_0
    invoke-static {v0, p1}, Lorg/apache/ignite/internal/IgnitionEx;->loadSpringBean(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static loadSpringBean(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p0, "springXmlUrl"    # Ljava/net/URL;
    .param p1, "beanName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/URL;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 910
    const-string v1, "springXmlUrl"

    invoke-static {p0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 911
    const-string v1, "beanName"

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 913
    sget-object v1, Lorg/apache/ignite/internal/IgniteComponentType;->SPRING:Lorg/apache/ignite/internal/IgniteComponentType;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/IgniteComponentType;->create(Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/spring/IgniteSpringHelper;

    .line 915
    .local v0, "spring":Lorg/apache/ignite/internal/util/spring/IgniteSpringHelper;
    invoke-interface {v0, p0, p1}, Lorg/apache/ignite/internal/util/spring/IgniteSpringHelper;->loadBean(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private static notifyStateChange(Ljava/lang/String;Lorg/apache/ignite/IgniteState;)V
    .locals 3
    .param p0, "gridName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1, "state"    # Lorg/apache/ignite/IgniteState;

    .prologue
    .line 1076
    if-eqz p0, :cond_0

    .line 1077
    sget-object v2, Lorg/apache/ignite/internal/IgnitionEx;->gridStates:Ljava/util/Map;

    invoke-interface {v2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1081
    :goto_0
    sget-object v2, Lorg/apache/ignite/internal/IgnitionEx;->lsnrs:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/IgnitionListener;

    .line 1082
    .local v1, "lsnr":Lorg/apache/ignite/IgnitionListener;
    invoke-interface {v1, p0, p1}, Lorg/apache/ignite/IgnitionListener;->onStateChange(Ljava/lang/String;Lorg/apache/ignite/IgniteState;)V

    goto :goto_1

    .line 1079
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "lsnr":Lorg/apache/ignite/IgnitionListener;
    :cond_0
    sput-object p1, Lorg/apache/ignite/internal/IgnitionEx;->dfltGridState:Lorg/apache/ignite/IgniteState;

    goto :goto_0

    .line 1083
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public static removeListener(Lorg/apache/ignite/IgnitionListener;)Z
    .locals 1
    .param p0, "lsnr"    # Lorg/apache/ignite/IgnitionListener;

    .prologue
    .line 1066
    const-string v0, "lsnr"

    invoke-static {p0, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1068
    sget-object v0, Lorg/apache/ignite/internal/IgnitionEx;->lsnrs:Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static restart(Z)V
    .locals 6
    .param p0, "cancel"    # Z

    .prologue
    const/16 v5, 0xfa

    const/4 v4, 0x0

    .line 362
    const-string v2, "IGNITE_SUCCESS_FILE"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 364
    .local v1, "file":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 365
    const-string v2, "Cannot restart node when restart not enabled."

    invoke-static {v4, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 387
    :goto_0
    return-void

    .line 368
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    const-string v2, "Restarting node. Will exit (250)."

    invoke-static {v4, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->log(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 380
    const-string v2, "IGNITE_RESTART_CODE"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 382
    invoke-static {p0}, Lorg/apache/ignite/internal/IgnitionEx;->stopAll(Z)V

    .line 385
    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 370
    :catch_0
    move-exception v0

    .line 371
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create restart marker file (restart aborted): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setClientMode(Z)V
    .locals 2
    .param p0, "clientMode"    # Z

    .prologue
    .line 190
    sget-object v0, Lorg/apache/ignite/internal/IgnitionEx;->clientMode:Ljava/lang/ThreadLocal;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 191
    return-void
.end method

.method public static setDaemon(Z)V
    .locals 2
    .param p0, "daemon"    # Z

    .prologue
    .line 167
    sget-object v0, Lorg/apache/ignite/internal/IgnitionEx;->daemon:Ljava/lang/ThreadLocal;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 168
    return-void
.end method

.method public static start()Lorg/apache/ignite/Ignite;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 425
    const/4 v0, 0x0

    check-cast v0, Lorg/apache/ignite/internal/processors/resource/GridSpringResourceContext;

    invoke-static {v0}, Lorg/apache/ignite/internal/IgnitionEx;->start(Lorg/apache/ignite/internal/processors/resource/GridSpringResourceContext;)Lorg/apache/ignite/Ignite;

    move-result-object v0

    return-object v0
.end method

.method public static start(Ljava/lang/String;)Lorg/apache/ignite/Ignite;
    .locals 1
    .param p0, "springCfgPath"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 501
    if-nez p0, :cond_0

    invoke-static {}, Lorg/apache/ignite/internal/IgnitionEx;->start()Lorg/apache/ignite/Ignite;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/ignite/internal/IgnitionEx;->start(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/ignite/Ignite;

    move-result-object v0

    goto :goto_0
.end method

.method public static start(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/ignite/Ignite;
    .locals 2
    .param p0, "springCfgPath"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1, "gridName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 522
    if-nez p0, :cond_1

    .line 523
    new-instance v0, Lorg/apache/ignite/configuration/IgniteConfiguration;

    invoke-direct {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;-><init>()V

    .line 525
    .local v0, "cfg":Lorg/apache/ignite/configuration/IgniteConfiguration;
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getGridName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 526
    invoke-virtual {v0, p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->setGridName(Ljava/lang/String;)V

    .line 528
    :cond_0
    invoke-static {v0}, Lorg/apache/ignite/internal/IgnitionEx;->start(Lorg/apache/ignite/configuration/IgniteConfiguration;)Lorg/apache/ignite/Ignite;

    move-result-object v1

    .line 531
    .end local v0    # "cfg":Lorg/apache/ignite/configuration/IgniteConfiguration;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Lorg/apache/ignite/internal/IgnitionEx;->start(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/internal/processors/resource/GridSpringResourceContext;)Lorg/apache/ignite/Ignite;

    move-result-object v1

    goto :goto_0
.end method

.method public static start(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/internal/processors/resource/GridSpringResourceContext;)Lorg/apache/ignite/Ignite;
    .locals 2
    .param p0, "springCfgPath"    # Ljava/lang/String;
    .param p1, "gridName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "springCtx"    # Lorg/apache/ignite/internal/processors/resource/GridSpringResourceContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 668
    invoke-static {p0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->resolveSpringUrl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 670
    .local v0, "url":Ljava/net/URL;
    invoke-static {v0, p1, p2}, Lorg/apache/ignite/internal/IgnitionEx;->start(Ljava/net/URL;Ljava/lang/String;Lorg/apache/ignite/internal/processors/resource/GridSpringResourceContext;)Lorg/apache/ignite/Ignite;

    move-result-object v1

    return-object v1
.end method

.method public static start(Ljava/net/URL;)Lorg/apache/ignite/Ignite;
    .locals 1
    .param p0, "springCfgUrl"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 690
    invoke-static {p0, v0, v0}, Lorg/apache/ignite/internal/IgnitionEx;->start(Ljava/net/URL;Ljava/lang/String;Lorg/apache/ignite/internal/processors/resource/GridSpringResourceContext;)Lorg/apache/ignite/Ignite;

    move-result-object v0

    return-object v0
.end method

.method public static start(Ljava/net/URL;Ljava/lang/String;Lorg/apache/ignite/internal/processors/resource/GridSpringResourceContext;)Lorg/apache/ignite/Ignite;
    .locals 1
    .param p0, "springCfgUrl"    # Ljava/net/URL;
    .param p1, "gridName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "springCtx"    # Lorg/apache/ignite/internal/processors/resource/GridSpringResourceContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 716
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/ignite/internal/IgnitionEx;->start(Ljava/net/URL;Ljava/lang/String;Lorg/apache/ignite/internal/processors/resource/GridSpringResourceContext;Lorg/apache/ignite/lang/IgniteClosure;)Lorg/apache/ignite/Ignite;

    move-result-object v0

    return-object v0
.end method

.method private static start(Ljava/net/URL;Ljava/lang/String;Lorg/apache/ignite/internal/processors/resource/GridSpringResourceContext;Lorg/apache/ignite/lang/IgniteClosure;)Lorg/apache/ignite/Ignite;
    .locals 16
    .param p0, "springCfgUrl"    # Ljava/net/URL;
    .param p1, "gridName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "springCtx"    # Lorg/apache/ignite/internal/processors/resource/GridSpringResourceContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lorg/apache/ignite/lang/IgniteClosure;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/internal/processors/resource/GridSpringResourceContext;",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<",
            "Lorg/apache/ignite/configuration/IgniteConfiguration;",
            "Lorg/apache/ignite/configuration/IgniteConfiguration;",
            ">;)",
            "Lorg/apache/ignite/Ignite;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 733
    .local p3, "cfgClo":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<Lorg/apache/ignite/configuration/IgniteConfiguration;Lorg/apache/ignite/configuration/IgniteConfiguration;>;"
    const-string v13, "springCfgUrl"

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 735
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->gridClassLoader()Ljava/lang/ClassLoader;

    move-result-object v13

    const-string v14, "org/apache/log4j/Appender.class"

    invoke-virtual {v13, v14}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v13

    if-eqz v13, :cond_5

    const/4 v9, 0x1

    .line 737
    .local v9, "isLog4jUsed":Z
    :goto_0
    const/4 v12, 0x0

    .line 739
    .local v12, "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-eqz v9, :cond_0

    .line 741
    :try_start_0
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->addLog4jNoOpLogger()Lorg/apache/ignite/lang/IgniteBiTuple;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v12

    .line 748
    :cond_0
    :goto_1
    const/4 v11, 0x0

    .line 750
    .local v11, "savedHnds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/logging/Handler;>;"
    if-nez v9, :cond_1

    .line 751
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->addJavaNoOpLogger()Ljava/util/Collection;

    move-result-object v11

    .line 756
    :cond_1
    :try_start_1
    invoke-static/range {p0 .. p0}, Lorg/apache/ignite/internal/IgnitionEx;->loadConfigurations(Ljava/net/URL;)Lorg/apache/ignite/lang/IgniteBiTuple;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 759
    .local v2, "cfgMap":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/util/Collection<Lorg/apache/ignite/configuration/IgniteConfiguration;>;+Lorg/apache/ignite/internal/processors/resource/GridSpringResourceContext;>;"
    if-eqz v9, :cond_2

    if-eqz v12, :cond_2

    .line 760
    invoke-static {v12}, Lorg/apache/ignite/internal/util/typedef/internal/U;->removeLog4jNoOpLogger(Lorg/apache/ignite/lang/IgniteBiTuple;)V

    .line 762
    :cond_2
    if-nez v9, :cond_3

    .line 763
    invoke-static {v11}, Lorg/apache/ignite/internal/util/typedef/internal/U;->removeJavaNoOpLogger(Ljava/util/Collection;)V

    .line 766
    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {v2}, Lorg/apache/ignite/lang/IgniteBiTuple;->size()I

    move-result v13

    invoke-direct {v6, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 769
    .local v6, "grids":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;>;"
    :try_start_2
    invoke-virtual {v2}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Collection;

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/configuration/IgniteConfiguration;

    .line 770
    .local v1, "cfg":Lorg/apache/ignite/configuration/IgniteConfiguration;
    sget-boolean v13, Lorg/apache/ignite/internal/IgnitionEx;->$assertionsDisabled:Z

    if-nez v13, :cond_8

    if-nez v1, :cond_8

    new-instance v13, Ljava/lang/AssertionError;

    invoke-direct {v13}, Ljava/lang/AssertionError;-><init>()V

    throw v13
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 790
    .end local v1    # "cfg":Lorg/apache/ignite/configuration/IgniteConfiguration;
    .end local v7    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v3

    .line 792
    .local v3, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;

    .line 794
    .local v5, "grid":Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;
    const/4 v13, 0x1

    :try_start_3
    invoke-virtual {v5, v13}, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->stop(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 796
    :catch_1
    move-exception v4

    .line 797
    .local v4, "e1":Ljava/lang/Exception;
    # getter for: Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v5}, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->access$000(Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error when stopping grid: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 735
    .end local v2    # "cfgMap":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/util/Collection<Lorg/apache/ignite/configuration/IgniteConfiguration;>;+Lorg/apache/ignite/internal/processors/resource/GridSpringResourceContext;>;"
    .end local v3    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v4    # "e1":Ljava/lang/Exception;
    .end local v5    # "grid":Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;
    .end local v6    # "grids":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;>;"
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v9    # "isLog4jUsed":Z
    .end local v11    # "savedHnds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/logging/Handler;>;"
    .end local v12    # "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_5
    const/4 v9, 0x0

    goto :goto_0

    .line 743
    .restart local v9    # "isLog4jUsed":Z
    .restart local v12    # "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Object;Ljava/lang/Object;>;"
    :catch_2
    move-exception v8

    .line 744
    .local v8, "ignore":Lorg/apache/ignite/IgniteCheckedException;
    const/4 v9, 0x0

    goto :goto_1

    .line 759
    .end local v8    # "ignore":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v11    # "savedHnds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/logging/Handler;>;"
    :catchall_0
    move-exception v13

    if-eqz v9, :cond_6

    if-eqz v12, :cond_6

    .line 760
    invoke-static {v12}, Lorg/apache/ignite/internal/util/typedef/internal/U;->removeLog4jNoOpLogger(Lorg/apache/ignite/lang/IgniteBiTuple;)V

    .line 762
    :cond_6
    if-nez v9, :cond_7

    .line 763
    invoke-static {v11}, Lorg/apache/ignite/internal/util/typedef/internal/U;->removeJavaNoOpLogger(Ljava/util/Collection;)V

    :cond_7
    throw v13

    .line 772
    .restart local v1    # "cfg":Lorg/apache/ignite/configuration/IgniteConfiguration;
    .restart local v2    # "cfgMap":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/util/Collection<Lorg/apache/ignite/configuration/IgniteConfiguration;>;+Lorg/apache/ignite/internal/processors/resource/GridSpringResourceContext;>;"
    .restart local v6    # "grids":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;>;"
    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_8
    :try_start_4
    invoke-virtual {v1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getGridName()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_9

    invoke-static/range {p1 .. p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_9

    .line 773
    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->setGridName(Ljava/lang/String;)V

    .line 775
    :cond_9
    if-eqz p3, :cond_a

    .line 776
    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Lorg/apache/ignite/lang/IgniteClosure;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "cfg":Lorg/apache/ignite/configuration/IgniteConfiguration;
    check-cast v1, Lorg/apache/ignite/configuration/IgniteConfiguration;

    .line 778
    .restart local v1    # "cfg":Lorg/apache/ignite/configuration/IgniteConfiguration;
    sget-boolean v13, Lorg/apache/ignite/internal/IgnitionEx;->$assertionsDisabled:Z

    if-nez v13, :cond_a

    if-nez v1, :cond_a

    new-instance v13, Ljava/lang/AssertionError;

    invoke-direct {v13}, Ljava/lang/AssertionError;-><init>()V

    throw v13

    .line 782
    :cond_a
    new-instance v14, Lorg/apache/ignite/internal/IgnitionEx$GridStartContext;

    if-nez p2, :cond_b

    invoke-virtual {v2}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/ignite/internal/processors/resource/GridSpringResourceContext;

    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v14, v1, v0, v13}, Lorg/apache/ignite/internal/IgnitionEx$GridStartContext;-><init>(Lorg/apache/ignite/configuration/IgniteConfiguration;Ljava/net/URL;Lorg/apache/ignite/internal/processors/resource/GridSpringResourceContext;)V

    invoke-static {v14}, Lorg/apache/ignite/internal/IgnitionEx;->start0(Lorg/apache/ignite/internal/IgnitionEx$GridStartContext;)Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;

    move-result-object v5

    .line 786
    .restart local v5    # "grid":Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;
    if-eqz v5, :cond_4

    .line 787
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_2

    .end local v5    # "grid":Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;
    :cond_b
    move-object/from16 v13, p2

    .line 782
    goto :goto_4

    .line 801
    .end local v1    # "cfg":Lorg/apache/ignite/configuration/IgniteConfiguration;
    .restart local v3    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_c
    throw v3

    .line 805
    .end local v3    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_d
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_e

    const/4 v13, 0x0

    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;

    move-object v10, v13

    .line 807
    .local v10, "res":Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;
    :goto_5
    if-eqz v10, :cond_f

    invoke-virtual {v10}, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->grid()Lorg/apache/ignite/internal/IgniteKernal;

    move-result-object v13

    :goto_6
    return-object v13

    .line 805
    .end local v10    # "res":Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;
    :cond_e
    const/4 v10, 0x0

    goto :goto_5

    .line 807
    .restart local v10    # "res":Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;
    :cond_f
    const/4 v13, 0x0

    goto :goto_6
.end method

.method public static start(Lorg/apache/ignite/configuration/IgniteConfiguration;)Lorg/apache/ignite/Ignite;
    .locals 1
    .param p0, "cfg"    # Lorg/apache/ignite/configuration/IgniteConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 462
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/ignite/internal/IgnitionEx;->start(Lorg/apache/ignite/configuration/IgniteConfiguration;Lorg/apache/ignite/internal/processors/resource/GridSpringResourceContext;)Lorg/apache/ignite/Ignite;

    move-result-object v0

    return-object v0
.end method

.method public static start(Lorg/apache/ignite/configuration/IgniteConfiguration;Lorg/apache/ignite/internal/processors/resource/GridSpringResourceContext;)Lorg/apache/ignite/Ignite;
    .locals 2
    .param p0, "cfg"    # Lorg/apache/ignite/configuration/IgniteConfiguration;
    .param p1, "springCtx"    # Lorg/apache/ignite/internal/processors/resource/GridSpringResourceContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 479
    const-string v0, "cfg"

    invoke-static {p0, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 481
    new-instance v0, Lorg/apache/ignite/internal/IgnitionEx$GridStartContext;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lorg/apache/ignite/internal/IgnitionEx$GridStartContext;-><init>(Lorg/apache/ignite/configuration/IgniteConfiguration;Ljava/net/URL;Lorg/apache/ignite/internal/processors/resource/GridSpringResourceContext;)V

    invoke-static {v0}, Lorg/apache/ignite/internal/IgnitionEx;->start0(Lorg/apache/ignite/internal/IgnitionEx$GridStartContext;)Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->grid()Lorg/apache/ignite/internal/IgniteKernal;

    move-result-object v0

    return-object v0
.end method

.method public static start(Lorg/apache/ignite/internal/processors/resource/GridSpringResourceContext;)Lorg/apache/ignite/Ignite;
    .locals 4
    .param p0, "springCtx"    # Lorg/apache/ignite/internal/processors/resource/GridSpringResourceContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 442
    const-string v1, "config/default-config.xml"

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->resolveIgniteUrl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 444
    .local v0, "url":Ljava/net/URL;
    if-eqz v0, :cond_0

    .line 445
    const-string v1, "config/default-config.xml"

    invoke-static {v1, v3, p0}, Lorg/apache/ignite/internal/IgnitionEx;->start(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/internal/processors/resource/GridSpringResourceContext;)Lorg/apache/ignite/Ignite;

    move-result-object v1

    .line 449
    :goto_0
    return-object v1

    .line 447
    :cond_0
    const-string v1, "Default Spring XML file not found (is IGNITE_HOME set?): config/default-config.xml"

    invoke-static {v3, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 449
    new-instance v1, Lorg/apache/ignite/internal/IgnitionEx$GridStartContext;

    new-instance v2, Lorg/apache/ignite/configuration/IgniteConfiguration;

    invoke-direct {v2}, Lorg/apache/ignite/configuration/IgniteConfiguration;-><init>()V

    invoke-direct {v1, v2, v3, p0}, Lorg/apache/ignite/internal/IgnitionEx$GridStartContext;-><init>(Lorg/apache/ignite/configuration/IgniteConfiguration;Ljava/net/URL;Lorg/apache/ignite/internal/processors/resource/GridSpringResourceContext;)V

    invoke-static {v1}, Lorg/apache/ignite/internal/IgnitionEx;->start0(Lorg/apache/ignite/internal/IgnitionEx$GridStartContext;)Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->grid()Lorg/apache/ignite/internal/IgniteKernal;

    move-result-object v1

    goto :goto_0
.end method

.method private static start0(Lorg/apache/ignite/internal/IgnitionEx$GridStartContext;)Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;
    .locals 7
    .param p0, "startCtx"    # Lorg/apache/ignite/internal/IgnitionEx$GridStartContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 818
    sget-boolean v5, Lorg/apache/ignite/internal/IgnitionEx;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    if-nez p0, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 820
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/IgnitionEx$GridStartContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getGridName()Ljava/lang/String;

    move-result-object v1

    .line 822
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 823
    new-instance v4, Lorg/apache/ignite/IgniteCheckedException;

    const-string v5, "Non default grid instances cannot have empty string name."

    invoke-direct {v4, v5}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 825
    :cond_1
    new-instance v0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;-><init>(Ljava/lang/String;)V

    .line 829
    .local v0, "grid":Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;
    if-eqz v1, :cond_2

    .line 830
    sget-object v5, Lorg/apache/ignite/internal/IgnitionEx;->grids:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, v1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;

    .line 840
    .local v2, "old":Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;
    :goto_0
    if-eqz v2, :cond_5

    .line 841
    if-nez v1, :cond_4

    .line 842
    new-instance v4, Lorg/apache/ignite/IgniteCheckedException;

    const-string v5, "Default grid instance has already been started."

    invoke-direct {v4, v5}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 832
    .end local v2    # "old":Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;
    :cond_2
    sget-object v5, Lorg/apache/ignite/internal/IgnitionEx;->dfltGridMux:Ljava/lang/Object;

    monitor-enter v5

    .line 833
    :try_start_0
    sget-object v2, Lorg/apache/ignite/internal/IgnitionEx;->dfltGrid:Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;

    .line 835
    .restart local v2    # "old":Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;
    if-nez v2, :cond_3

    .line 836
    sput-object v0, Lorg/apache/ignite/internal/IgnitionEx;->dfltGrid:Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;

    .line 837
    :cond_3
    monitor-exit v5

    goto :goto_0

    .end local v2    # "old":Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 844
    .restart local v2    # "old":Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;
    :cond_4
    new-instance v4, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignite instance with this name has already been started: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 847
    :cond_5
    invoke-virtual {p0}, Lorg/apache/ignite/internal/IgnitionEx$GridStartContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getWarmupClosure()Lorg/apache/ignite/lang/IgniteInClosure;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 848
    invoke-virtual {p0}, Lorg/apache/ignite/internal/IgnitionEx$GridStartContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getWarmupClosure()Lorg/apache/ignite/lang/IgniteInClosure;

    move-result-object v5

    invoke-virtual {p0}, Lorg/apache/ignite/internal/IgnitionEx$GridStartContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/lang/IgniteInClosure;->apply(Ljava/lang/Object;)V

    .line 850
    :cond_6
    sget-object v5, Lorg/apache/ignite/internal/IgnitionEx;->grids:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v5

    if-ne v5, v4, :cond_8

    :goto_1
    invoke-virtual {p0, v4}, Lorg/apache/ignite/internal/IgnitionEx$GridStartContext;->single(Z)V

    .line 852
    const/4 v3, 0x0

    .line 855
    .local v3, "success":Z
    :try_start_1
    invoke-virtual {v0, p0}, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->start(Lorg/apache/ignite/internal/IgnitionEx$GridStartContext;)V

    .line 857
    sget-object v4, Lorg/apache/ignite/IgniteState;->STARTED:Lorg/apache/ignite/IgniteState;

    invoke-static {v1, v4}, Lorg/apache/ignite/internal/IgnitionEx;->notifyStateChange(Ljava/lang/String;Lorg/apache/ignite/IgniteState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 859
    const/4 v3, 0x1

    .line 862
    if-nez v3, :cond_7

    .line 863
    if-eqz v1, :cond_9

    .line 864
    sget-object v4, Lorg/apache/ignite/internal/IgnitionEx;->grids:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 872
    :goto_2
    const/4 v0, 0x0

    .line 876
    :cond_7
    if-nez v0, :cond_e

    .line 877
    new-instance v4, Lorg/apache/ignite/IgniteCheckedException;

    const-string v5, "Failed to start grid with provided configuration."

    invoke-direct {v4, v5}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 850
    .end local v3    # "success":Z
    :cond_8
    const/4 v4, 0x0

    goto :goto_1

    .line 866
    .restart local v3    # "success":Z
    :cond_9
    sget-object v5, Lorg/apache/ignite/internal/IgnitionEx;->dfltGridMux:Ljava/lang/Object;

    monitor-enter v5

    .line 867
    :try_start_2
    sget-object v4, Lorg/apache/ignite/internal/IgnitionEx;->dfltGrid:Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;

    if-ne v4, v0, :cond_a

    .line 868
    const/4 v4, 0x0

    sput-object v4, Lorg/apache/ignite/internal/IgnitionEx;->dfltGrid:Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;

    .line 869
    :cond_a
    monitor-exit v5

    goto :goto_2

    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .line 862
    :catchall_2
    move-exception v4

    if-nez v3, :cond_b

    .line 863
    if-eqz v1, :cond_c

    .line 864
    sget-object v5, Lorg/apache/ignite/internal/IgnitionEx;->grids:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, v1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 872
    :goto_3
    const/4 v0, 0x0

    :cond_b
    throw v4

    .line 866
    :cond_c
    sget-object v5, Lorg/apache/ignite/internal/IgnitionEx;->dfltGridMux:Ljava/lang/Object;

    monitor-enter v5

    .line 867
    :try_start_3
    sget-object v6, Lorg/apache/ignite/internal/IgnitionEx;->dfltGrid:Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;

    if-ne v6, v0, :cond_d

    .line 868
    const/4 v6, 0x0

    sput-object v6, Lorg/apache/ignite/internal/IgnitionEx;->dfltGrid:Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;

    .line 869
    :cond_d
    monitor-exit v5

    goto :goto_3

    :catchall_3
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v4

    .line 879
    :cond_e
    return-object v0
.end method

.method public static startWithClosure(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteClosure;)Lorg/apache/ignite/Ignite;
    .locals 2
    .param p0, "springCfgPath"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1, "gridName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<",
            "Lorg/apache/ignite/configuration/IgniteConfiguration;",
            "Lorg/apache/ignite/configuration/IgniteConfiguration;",
            ">;)",
            "Lorg/apache/ignite/Ignite;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 545
    .local p2, "cfgClo":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<Lorg/apache/ignite/configuration/IgniteConfiguration;Lorg/apache/ignite/configuration/IgniteConfiguration;>;"
    invoke-static {p0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->resolveSpringUrl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 547
    .local v0, "url":Ljava/net/URL;
    const/4 v1, 0x0

    invoke-static {v0, p1, v1, p2}, Lorg/apache/ignite/internal/IgnitionEx;->start(Ljava/net/URL;Ljava/lang/String;Lorg/apache/ignite/internal/processors/resource/GridSpringResourceContext;Lorg/apache/ignite/lang/IgniteClosure;)Lorg/apache/ignite/Ignite;

    move-result-object v1

    return-object v1
.end method

.method public static state()Lorg/apache/ignite/IgniteState;
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/apache/ignite/internal/IgnitionEx;->state(Ljava/lang/String;)Lorg/apache/ignite/IgniteState;

    move-result-object v0

    return-object v0
.end method

.method public static state(Ljava/lang/String;)Lorg/apache/ignite/IgniteState;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 220
    if-eqz p0, :cond_0

    sget-object v2, Lorg/apache/ignite/internal/IgnitionEx;->grids:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;

    move-object v0, v2

    .line 222
    .local v0, "grid":Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;
    :goto_0
    if-nez v0, :cond_3

    .line 223
    if-eqz p0, :cond_1

    sget-object v2, Lorg/apache/ignite/internal/IgnitionEx;->gridStates:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/IgniteState;

    move-object v1, v2

    .line 225
    .local v1, "state":Lorg/apache/ignite/IgniteState;
    :goto_1
    if-eqz v1, :cond_2

    .line 228
    .end local v1    # "state":Lorg/apache/ignite/IgniteState;
    :goto_2
    return-object v1

    .line 220
    .end local v0    # "grid":Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;
    :cond_0
    sget-object v0, Lorg/apache/ignite/internal/IgnitionEx;->dfltGrid:Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;

    goto :goto_0

    .line 223
    .restart local v0    # "grid":Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;
    :cond_1
    sget-object v1, Lorg/apache/ignite/internal/IgnitionEx;->dfltGridState:Lorg/apache/ignite/IgniteState;

    goto :goto_1

    .line 225
    .restart local v1    # "state":Lorg/apache/ignite/IgniteState;
    :cond_2
    sget-object v1, Lorg/apache/ignite/IgniteState;->STOPPED:Lorg/apache/ignite/IgniteState;

    goto :goto_2

    .line 228
    .end local v1    # "state":Lorg/apache/ignite/IgniteState;
    :cond_3
    invoke-virtual {v0}, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->state()Lorg/apache/ignite/IgniteState;

    move-result-object v1

    goto :goto_2
.end method

.method public static stop(Ljava/lang/String;Z)Z
    .locals 7
    .param p0, "name"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1, "cancel"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 266
    if-eqz p0, :cond_1

    sget-object v2, Lorg/apache/ignite/internal/IgnitionEx;->grids:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;

    move-object v1, v2

    .line 268
    .local v1, "grid":Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;
    :goto_0
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->state()Lorg/apache/ignite/IgniteState;

    move-result-object v2

    sget-object v5, Lorg/apache/ignite/IgniteState;->STARTED:Lorg/apache/ignite/IgniteState;

    if-ne v2, v5, :cond_5

    .line 269
    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->stop(Z)V

    .line 273
    if-eqz p0, :cond_2

    .line 274
    sget-object v2, Lorg/apache/ignite/internal/IgnitionEx;->grids:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 284
    .local v0, "fireEvt":Z
    :goto_1
    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {v1}, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->state()Lorg/apache/ignite/IgniteState;

    move-result-object v4

    invoke-static {v2, v4}, Lorg/apache/ignite/internal/IgnitionEx;->notifyStateChange(Ljava/lang/String;Lorg/apache/ignite/IgniteState;)V

    :cond_0
    move v2, v3

    .line 293
    .end local v0    # "fireEvt":Z
    :goto_2
    return v2

    .line 266
    .end local v1    # "grid":Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;
    :cond_1
    sget-object v1, Lorg/apache/ignite/internal/IgnitionEx;->dfltGrid:Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;

    goto :goto_0

    .line 276
    .restart local v1    # "grid":Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;
    :cond_2
    sget-object v5, Lorg/apache/ignite/internal/IgnitionEx;->dfltGridMux:Ljava/lang/Object;

    monitor-enter v5

    .line 277
    :try_start_0
    sget-object v2, Lorg/apache/ignite/internal/IgnitionEx;->dfltGrid:Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;

    if-ne v2, v1, :cond_4

    move v0, v3

    .line 279
    .restart local v0    # "fireEvt":Z
    :goto_3
    if-eqz v0, :cond_3

    .line 280
    const/4 v2, 0x0

    sput-object v2, Lorg/apache/ignite/internal/IgnitionEx;->dfltGrid:Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;

    .line 281
    :cond_3
    monitor-exit v5

    goto :goto_1

    .end local v0    # "fireEvt":Z
    :catchall_0
    move-exception v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_4
    move v0, v4

    .line 277
    goto :goto_3

    .line 291
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring stopping grid instance that was already stopped or never started: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    move v2, v4

    .line 293
    goto :goto_2
.end method

.method public static stop(Z)Z
    .locals 1
    .param p0, "cancel"    # Z

    .prologue
    .line 243
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/IgnitionEx;->stop(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static stopAll(Z)V
    .locals 6
    .param p0, "cancel"    # Z

    .prologue
    .line 312
    sget-object v0, Lorg/apache/ignite/internal/IgnitionEx;->dfltGrid:Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;

    .line 314
    .local v0, "dfltGrid0":Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;
    if-eqz v0, :cond_1

    .line 315
    invoke-virtual {v0, p0}, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->stop(Z)V

    .line 319
    sget-object v5, Lorg/apache/ignite/internal/IgnitionEx;->dfltGridMux:Ljava/lang/Object;

    monitor-enter v5

    .line 320
    :try_start_0
    sget-object v4, Lorg/apache/ignite/internal/IgnitionEx;->dfltGrid:Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;

    if-ne v4, v0, :cond_3

    const/4 v1, 0x1

    .line 322
    .local v1, "fireEvt":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 323
    const/4 v4, 0x0

    sput-object v4, Lorg/apache/ignite/internal/IgnitionEx;->dfltGrid:Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;

    .line 324
    :cond_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    if-eqz v1, :cond_1

    .line 327
    invoke-virtual {v0}, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->state()Lorg/apache/ignite/IgniteState;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/ignite/internal/IgnitionEx;->notifyStateChange(Ljava/lang/String;Lorg/apache/ignite/IgniteState;)V

    .line 331
    .end local v1    # "fireEvt":Z
    :cond_1
    sget-object v4, Lorg/apache/ignite/internal/IgnitionEx;->grids:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;

    .line 332
    .local v2, "grid":Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;
    invoke-virtual {v2, p0}, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->stop(Z)V

    .line 334
    sget-object v4, Lorg/apache/ignite/internal/IgnitionEx;->grids:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 336
    .restart local v1    # "fireEvt":Z
    if-eqz v1, :cond_2

    .line 337
    invoke-virtual {v2}, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->state()Lorg/apache/ignite/IgniteState;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/ignite/internal/IgnitionEx;->notifyStateChange(Ljava/lang/String;Lorg/apache/ignite/IgniteState;)V

    goto :goto_1

    .line 320
    .end local v1    # "fireEvt":Z
    .end local v2    # "grid":Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 324
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 339
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_4
    return-void
.end method
