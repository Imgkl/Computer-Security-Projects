.class public Lorg/apache/ignite/internal/visor/event/VisorGridJobEvent;
.super Lorg/apache/ignite/internal/visor/event/VisorGridEvent;
.source "VisorGridJobEvent.java"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final jobId:Lorg/apache/ignite/lang/IgniteUuid;

.field private final taskClsName:Ljava/lang/String;

.field private final taskName:Ljava/lang/String;

.field private final taskSesId:Lorg/apache/ignite/lang/IgniteUuid;


# direct methods
.method public constructor <init>(ILorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Ljava/util/UUID;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;)V
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
    .param p9, "taskName"    # Ljava/lang/String;
    .param p10, "taskClsName"    # Ljava/lang/String;
    .param p11, "taskSesId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p12, "jobId"    # Lorg/apache/ignite/lang/IgniteUuid;

    .prologue
    .line 73
    invoke-direct/range {p0 .. p8}, Lorg/apache/ignite/internal/visor/event/VisorGridEvent;-><init>(ILorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Ljava/util/UUID;JLjava/lang/String;Ljava/lang/String;)V

    .line 75
    iput-object p9, p0, Lorg/apache/ignite/internal/visor/event/VisorGridJobEvent;->taskName:Ljava/lang/String;

    .line 76
    iput-object p10, p0, Lorg/apache/ignite/internal/visor/event/VisorGridJobEvent;->taskClsName:Ljava/lang/String;

    .line 77
    iput-object p11, p0, Lorg/apache/ignite/internal/visor/event/VisorGridJobEvent;->taskSesId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 78
    iput-object p12, p0, Lorg/apache/ignite/internal/visor/event/VisorGridJobEvent;->jobId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 79
    return-void
.end method


# virtual methods
.method public jobId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/event/VisorGridJobEvent;->jobId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public taskClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/event/VisorGridJobEvent;->taskClsName:Ljava/lang/String;

    return-object v0
.end method

.method public taskName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/event/VisorGridJobEvent;->taskName:Ljava/lang/String;

    return-object v0
.end method

.method public taskSessionId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/event/VisorGridJobEvent;->taskSesId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    const-class v0, Lorg/apache/ignite/internal/visor/event/VisorGridJobEvent;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
