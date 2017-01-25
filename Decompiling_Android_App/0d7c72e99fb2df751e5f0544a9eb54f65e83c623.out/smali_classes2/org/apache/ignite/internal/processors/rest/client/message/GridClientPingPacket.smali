.class public Lorg/apache/ignite/internal/processors/rest/client/message/GridClientPingPacket;
.super Lorg/apache/ignite/internal/processors/rest/client/message/GridClientAbstractMessage;
.source "GridClientPingPacket.java"


# static fields
.field public static final PING_MESSAGE:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;

.field public static final PING_PACKET:[B

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientPingPacket;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientPingPacket;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientPingPacket;->PING_MESSAGE:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;

    .line 33
    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientPingPacket;->PING_PACKET:[B

    return-void

    :array_0
    .array-data 1
        -0x70t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientAbstractMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
