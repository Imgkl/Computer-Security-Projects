.class public Lorg/apache/ignite/internal/visor/event/VisorGridDiscoveryEvent;
.super Lorg/apache/ignite/internal/visor/event/VisorGridEvent;
.source "VisorGridDiscoveryEvent.java"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final addr:Ljava/lang/String;

.field private final evtNodeId:Ljava/util/UUID;

.field private final isDaemon:Z


# direct methods
.method public constructor <init>(ILorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Ljava/util/UUID;JLjava/lang/String;Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "typeId"    # I
    .param p2, "id"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "nid"    # Ljava/util/UUID;
    .param p5, "ts"    # J
    .param p7, "msg"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8, "shortDisplay"    # Ljava/lang/String;
    .param p9, "evtNodeId"    # Ljava/util/UUID;
    .param p10, "addr"    # Ljava/lang/String;
    .param p11, "isDaemon"    # Z

    .prologue
    .line 68
    invoke-direct/range {p0 .. p8}, Lorg/apache/ignite/internal/visor/event/VisorGridEvent;-><init>(ILorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Ljava/util/UUID;JLjava/lang/String;Ljava/lang/String;)V

    .line 70
    iput-object p9, p0, Lorg/apache/ignite/internal/visor/event/VisorGridDiscoveryEvent;->evtNodeId:Ljava/util/UUID;

    .line 71
    iput-object p10, p0, Lorg/apache/ignite/internal/visor/event/VisorGridDiscoveryEvent;->addr:Ljava/lang/String;

    .line 72
    iput-boolean p11, p0, Lorg/apache/ignite/internal/visor/event/VisorGridDiscoveryEvent;->isDaemon:Z

    .line 73
    return-void
.end method


# virtual methods
.method public address()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/event/VisorGridDiscoveryEvent;->addr:Ljava/lang/String;

    return-object v0
.end method

.method public evtNodeId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/event/VisorGridDiscoveryEvent;->evtNodeId:Ljava/util/UUID;

    return-object v0
.end method

.method public isDaemon()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lorg/apache/ignite/internal/visor/event/VisorGridDiscoveryEvent;->isDaemon:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    const-class v0, Lorg/apache/ignite/internal/visor/event/VisorGridDiscoveryEvent;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
