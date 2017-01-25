.class final enum Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;
.super Ljava/lang/Enum;
.source "GridClientConnectionCloseReason.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;

.field public static final enum CLIENT_CLOSED:Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;

.field public static final enum CONN_IDLE:Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;

.field public static final enum FAILED:Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;->FAILED:Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;

    .line 28
    new-instance v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;

    const-string v1, "CONN_IDLE"

    invoke-direct {v0, v1, v3}, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;->CONN_IDLE:Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;

    .line 31
    new-instance v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;

    const-string v1, "CLIENT_CLOSED"

    invoke-direct {v0, v1, v4}, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;->CLIENT_CLOSED:Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;

    .line 23
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;

    sget-object v1, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;->FAILED:Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;->CONN_IDLE:Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;->CLIENT_CLOSED:Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;

    aput-object v1, v0, v4

    sput-object v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;->$VALUES:[Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;

    return-object v0
.end method

.method public static values()[Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;->$VALUES:[Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;

    invoke-virtual {v0}, [Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionCloseReason;

    return-object v0
.end method
