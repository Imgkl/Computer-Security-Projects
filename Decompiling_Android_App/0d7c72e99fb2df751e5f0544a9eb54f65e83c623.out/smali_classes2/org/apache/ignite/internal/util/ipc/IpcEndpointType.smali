.class public final enum Lorg/apache/ignite/internal/util/ipc/IpcEndpointType;
.super Ljava/lang/Enum;
.source "IpcEndpointType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/ignite/internal/util/ipc/IpcEndpointType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/ignite/internal/util/ipc/IpcEndpointType;

.field public static final enum SHARED_MEMORY:Lorg/apache/ignite/internal/util/ipc/IpcEndpointType;

.field public static final enum TCP_LOOPBACK:Lorg/apache/ignite/internal/util/ipc/IpcEndpointType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lorg/apache/ignite/internal/util/ipc/IpcEndpointType;

    const-string v1, "TCP_LOOPBACK"

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/util/ipc/IpcEndpointType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/util/ipc/IpcEndpointType;->TCP_LOOPBACK:Lorg/apache/ignite/internal/util/ipc/IpcEndpointType;

    .line 28
    new-instance v0, Lorg/apache/ignite/internal/util/ipc/IpcEndpointType;

    const-string v1, "SHARED_MEMORY"

    invoke-direct {v0, v1, v3}, Lorg/apache/ignite/internal/util/ipc/IpcEndpointType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/util/ipc/IpcEndpointType;->SHARED_MEMORY:Lorg/apache/ignite/internal/util/ipc/IpcEndpointType;

    .line 23
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/ignite/internal/util/ipc/IpcEndpointType;

    sget-object v1, Lorg/apache/ignite/internal/util/ipc/IpcEndpointType;->TCP_LOOPBACK:Lorg/apache/ignite/internal/util/ipc/IpcEndpointType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/ignite/internal/util/ipc/IpcEndpointType;->SHARED_MEMORY:Lorg/apache/ignite/internal/util/ipc/IpcEndpointType;

    aput-object v1, v0, v3

    sput-object v0, Lorg/apache/ignite/internal/util/ipc/IpcEndpointType;->$VALUES:[Lorg/apache/ignite/internal/util/ipc/IpcEndpointType;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/ignite/internal/util/ipc/IpcEndpointType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lorg/apache/ignite/internal/util/ipc/IpcEndpointType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/ipc/IpcEndpointType;

    return-object v0
.end method

.method public static values()[Lorg/apache/ignite/internal/util/ipc/IpcEndpointType;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lorg/apache/ignite/internal/util/ipc/IpcEndpointType;->$VALUES:[Lorg/apache/ignite/internal/util/ipc/IpcEndpointType;

    invoke-virtual {v0}, [Lorg/apache/ignite/internal/util/ipc/IpcEndpointType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/internal/util/ipc/IpcEndpointType;

    return-object v0
.end method
