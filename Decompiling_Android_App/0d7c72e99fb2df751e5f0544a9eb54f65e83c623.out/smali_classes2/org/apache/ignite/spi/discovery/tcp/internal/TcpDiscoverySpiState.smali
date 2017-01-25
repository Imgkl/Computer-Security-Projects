.class public final enum Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;
.super Ljava/lang/Enum;
.source "TcpDiscoverySpiState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

.field public static final enum AUTH_FAILED:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

.field public static final enum CHECK_FAILED:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

.field public static final enum CONNECTED:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

.field public static final enum CONNECTING:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

.field public static final enum DISCONNECTED:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

.field public static final enum DISCONNECTING:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

.field public static final enum DUPLICATE_ID:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

.field public static final enum LEFT:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

.field public static final enum LOOPBACK_PROBLEM:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

.field public static final enum STOPPING:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 25
    new-instance v0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    const-string v1, "DISCONNECTED"

    invoke-direct {v0, v1, v3}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;->DISCONNECTED:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    .line 28
    new-instance v0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    const-string v1, "CONNECTING"

    invoke-direct {v0, v1, v4}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;->CONNECTING:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    .line 31
    new-instance v0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v5}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;->CONNECTED:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    .line 34
    new-instance v0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    const-string v1, "DISCONNECTING"

    invoke-direct {v0, v1, v6}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;->DISCONNECTING:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    .line 37
    new-instance v0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    const-string v1, "STOPPING"

    invoke-direct {v0, v1, v7}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;->STOPPING:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    .line 40
    new-instance v0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    const-string v1, "LEFT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;->LEFT:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    .line 43
    new-instance v0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    const-string v1, "DUPLICATE_ID"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;->DUPLICATE_ID:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    .line 46
    new-instance v0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    const-string v1, "AUTH_FAILED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;->AUTH_FAILED:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    .line 49
    new-instance v0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    const-string v1, "CHECK_FAILED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;->CHECK_FAILED:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    .line 52
    new-instance v0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    const-string v1, "LOOPBACK_PROBLEM"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;->LOOPBACK_PROBLEM:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    .line 23
    const/16 v0, 0xa

    new-array v0, v0, [Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    sget-object v1, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;->DISCONNECTED:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;->CONNECTING:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;->CONNECTED:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;->DISCONNECTING:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    aput-object v1, v0, v6

    sget-object v1, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;->STOPPING:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;->LEFT:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;->DUPLICATE_ID:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;->AUTH_FAILED:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;->CHECK_FAILED:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;->LOOPBACK_PROBLEM:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;->$VALUES:[Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    return-object v0
.end method

.method public static values()[Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;->$VALUES:[Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    invoke-virtual {v0}, [Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    return-object v0
.end method
