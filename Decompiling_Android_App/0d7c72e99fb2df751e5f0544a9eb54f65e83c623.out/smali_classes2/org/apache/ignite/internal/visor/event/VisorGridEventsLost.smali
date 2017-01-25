.class public Lorg/apache/ignite/internal/visor/event/VisorGridEventsLost;
.super Lorg/apache/ignite/internal/visor/event/VisorGridEvent;
.source "VisorGridEventsLost.java"


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>(Ljava/util/UUID;)V
    .locals 10
    .param p1, "nid"    # Ljava/util/UUID;

    .prologue
    .line 38
    const/4 v2, 0x0

    invoke-static {}, Lorg/apache/ignite/lang/IgniteUuid;->randomUuid()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    const-string v4, "EVT_VISOR_EVENTS_LOST"

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v6

    const-string v8, "Some Visor events were lost and Visor may show inconsistent results. Configure your grid to disable not important events."

    const-string v9, ""

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v1 .. v9}, Lorg/apache/ignite/internal/visor/event/VisorGridEvent;-><init>(ILorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Ljava/util/UUID;JLjava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method
