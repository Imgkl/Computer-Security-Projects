.class public Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorTaskArg;
.super Ljava/lang/Object;
.source "VisorNodeEventsCollectorTask.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VisorNodeEventsCollectorTaskArg"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final keyOrder:Ljava/lang/String;

.field private final taskName:Ljava/lang/String;

.field private final taskSesId:Lorg/apache/ignite/lang/IgniteUuid;

.field private final timeArg:Ljava/lang/Long;

.field private final typeArg:[I


# direct methods
.method public constructor <init>(Ljava/lang/String;[ILjava/lang/Long;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;)V
    .locals 0
    .param p1, "keyOrder"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "typeArg"    # [I
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "timeArg"    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "taskName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5, "taskSesId"    # Lorg/apache/ignite/lang/IgniteUuid;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorTaskArg;->keyOrder:Ljava/lang/String;

    .line 98
    iput-object p2, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorTaskArg;->typeArg:[I

    .line 99
    iput-object p3, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorTaskArg;->timeArg:Ljava/lang/Long;

    .line 100
    iput-object p4, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorTaskArg;->taskName:Ljava/lang/String;

    .line 101
    iput-object p5, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorTaskArg;->taskSesId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 102
    return-void
.end method

.method public static createEventsArg([ILjava/lang/Long;)Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorTaskArg;
    .locals 6
    .param p0, "typeArg"    # [I
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1, "timeArg"    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 109
    new-instance v0, Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorTaskArg;

    move-object v2, p0

    move-object v3, p1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorTaskArg;-><init>(Ljava/lang/String;[ILjava/lang/Long;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;)V

    return-object v0
.end method

.method public static createLogArg(Ljava/lang/String;[I)Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorTaskArg;
    .locals 6
    .param p0, "keyOrder"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1, "typeArg"    # [I
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 128
    new-instance v0, Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorTaskArg;

    move-object v1, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorTaskArg;-><init>(Ljava/lang/String;[ILjava/lang/Long;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;)V

    return-object v0
.end method

.method public static createTasksArg(Ljava/lang/Long;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorTaskArg;
    .locals 6
    .param p0, "timeArg"    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1, "taskName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "taskSesId"    # Lorg/apache/ignite/lang/IgniteUuid;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 119
    new-instance v0, Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorTaskArg;

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [[I

    const/4 v3, 0x0

    sget-object v4, Lorg/apache/ignite/events/EventType;->EVTS_JOB_EXECUTION:[I

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lorg/apache/ignite/events/EventType;->EVTS_TASK_EXECUTION:[I

    aput-object v4, v2, v3

    invoke-static {v2}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->concat([[I)[I

    move-result-object v2

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorTaskArg;-><init>(Ljava/lang/String;[ILjava/lang/Long;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;)V

    return-object v0
.end method


# virtual methods
.method public keyOrder()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorTaskArg;->keyOrder:Ljava/lang/String;

    return-object v0
.end method

.method public taskName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorTaskArg;->taskName:Ljava/lang/String;

    return-object v0
.end method

.method public taskSessionId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorTaskArg;->taskSesId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public timeArgument()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorTaskArg;->timeArg:Ljava/lang/Long;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    const-class v0, Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorTaskArg;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public typeArgument()[I
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorTaskArg;->typeArg:[I

    return-object v0
.end method
