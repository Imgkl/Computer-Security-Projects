.class public final enum Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridClientPacketType;
.super Ljava/lang/Enum;
.source "GridClientPacketType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridClientPacketType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridClientPacketType;

.field public static final enum IGNITE:Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridClientPacketType;

.field public static final enum IGNITE_HANDSHAKE:Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridClientPacketType;

.field public static final enum IGNITE_HANDSHAKE_RES:Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridClientPacketType;

.field public static final enum MEMCACHE:Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridClientPacketType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridClientPacketType;

    const-string v1, "MEMCACHE"

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridClientPacketType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridClientPacketType;->MEMCACHE:Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridClientPacketType;

    .line 28
    new-instance v0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridClientPacketType;

    const-string v1, "IGNITE_HANDSHAKE"

    invoke-direct {v0, v1, v3}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridClientPacketType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridClientPacketType;->IGNITE_HANDSHAKE:Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridClientPacketType;

    .line 31
    new-instance v0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridClientPacketType;

    const-string v1, "IGNITE_HANDSHAKE_RES"

    invoke-direct {v0, v1, v4}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridClientPacketType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridClientPacketType;->IGNITE_HANDSHAKE_RES:Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridClientPacketType;

    .line 34
    new-instance v0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridClientPacketType;

    const-string v1, "IGNITE"

    invoke-direct {v0, v1, v5}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridClientPacketType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridClientPacketType;->IGNITE:Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridClientPacketType;

    .line 23
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridClientPacketType;

    sget-object v1, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridClientPacketType;->MEMCACHE:Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridClientPacketType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridClientPacketType;->IGNITE_HANDSHAKE:Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridClientPacketType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridClientPacketType;->IGNITE_HANDSHAKE_RES:Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridClientPacketType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridClientPacketType;->IGNITE:Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridClientPacketType;

    aput-object v1, v0, v5

    sput-object v0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridClientPacketType;->$VALUES:[Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridClientPacketType;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridClientPacketType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridClientPacketType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridClientPacketType;

    return-object v0
.end method

.method public static values()[Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridClientPacketType;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridClientPacketType;->$VALUES:[Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridClientPacketType;

    invoke-virtual {v0}, [Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridClientPacketType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridClientPacketType;

    return-object v0
.end method
