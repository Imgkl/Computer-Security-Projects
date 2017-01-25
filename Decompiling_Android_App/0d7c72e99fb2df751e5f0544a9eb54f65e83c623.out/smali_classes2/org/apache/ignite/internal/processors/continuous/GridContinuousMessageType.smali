.class final enum Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;
.super Ljava/lang/Enum;
.source "GridContinuousMessageType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;

.field public static final enum MSG_EVT_ACK:Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;

.field public static final enum MSG_EVT_NOTIFICATION:Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;

.field public static final enum MSG_START_ACK:Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;

.field public static final enum MSG_START_REQ:Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;

.field public static final enum MSG_STOP_ACK:Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;

.field public static final enum MSG_STOP_REQ:Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;

.field private static final VALS:[Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 27
    new-instance v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;

    const-string v1, "MSG_START_REQ"

    invoke-direct {v0, v1, v3}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;->MSG_START_REQ:Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;

    .line 30
    new-instance v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;

    const-string v1, "MSG_START_ACK"

    invoke-direct {v0, v1, v4}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;->MSG_START_ACK:Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;

    .line 33
    new-instance v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;

    const-string v1, "MSG_STOP_REQ"

    invoke-direct {v0, v1, v5}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;->MSG_STOP_REQ:Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;

    .line 36
    new-instance v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;

    const-string v1, "MSG_STOP_ACK"

    invoke-direct {v0, v1, v6}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;->MSG_STOP_ACK:Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;

    .line 39
    new-instance v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;

    const-string v1, "MSG_EVT_NOTIFICATION"

    invoke-direct {v0, v1, v7}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;->MSG_EVT_NOTIFICATION:Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;

    .line 42
    new-instance v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;

    const-string v1, "MSG_EVT_ACK"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;->MSG_EVT_ACK:Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;

    .line 25
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;

    sget-object v1, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;->MSG_START_REQ:Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;->MSG_START_ACK:Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;->MSG_STOP_REQ:Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;->MSG_STOP_ACK:Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;->MSG_EVT_NOTIFICATION:Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;->MSG_EVT_ACK:Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;->$VALUES:[Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;

    .line 45
    invoke-static {}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;->values()[Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;->VALS:[Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromOrdinal(B)Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;
    .locals 1
    .param p0, "ord"    # B
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 54
    if-ltz p0, :cond_0

    sget-object v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;->VALS:[Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;->VALS:[Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;

    aget-object v0, v0, p0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;

    return-object v0
.end method

.method public static values()[Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;->$VALUES:[Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;

    invoke-virtual {v0}, [Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;

    return-object v0
.end method
