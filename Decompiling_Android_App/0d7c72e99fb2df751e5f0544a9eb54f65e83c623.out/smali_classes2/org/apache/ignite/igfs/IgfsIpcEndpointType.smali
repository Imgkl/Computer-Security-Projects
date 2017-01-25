.class public final enum Lorg/apache/ignite/igfs/IgfsIpcEndpointType;
.super Ljava/lang/Enum;
.source "IgfsIpcEndpointType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/ignite/igfs/IgfsIpcEndpointType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/ignite/igfs/IgfsIpcEndpointType;

.field public static final enum SHMEM:Lorg/apache/ignite/igfs/IgfsIpcEndpointType;

.field public static final enum TCP:Lorg/apache/ignite/igfs/IgfsIpcEndpointType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lorg/apache/ignite/igfs/IgfsIpcEndpointType;

    const-string v1, "SHMEM"

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/igfs/IgfsIpcEndpointType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/igfs/IgfsIpcEndpointType;->SHMEM:Lorg/apache/ignite/igfs/IgfsIpcEndpointType;

    .line 28
    new-instance v0, Lorg/apache/ignite/igfs/IgfsIpcEndpointType;

    const-string v1, "TCP"

    invoke-direct {v0, v1, v3}, Lorg/apache/ignite/igfs/IgfsIpcEndpointType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/igfs/IgfsIpcEndpointType;->TCP:Lorg/apache/ignite/igfs/IgfsIpcEndpointType;

    .line 23
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/ignite/igfs/IgfsIpcEndpointType;

    sget-object v1, Lorg/apache/ignite/igfs/IgfsIpcEndpointType;->SHMEM:Lorg/apache/ignite/igfs/IgfsIpcEndpointType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/ignite/igfs/IgfsIpcEndpointType;->TCP:Lorg/apache/ignite/igfs/IgfsIpcEndpointType;

    aput-object v1, v0, v3

    sput-object v0, Lorg/apache/ignite/igfs/IgfsIpcEndpointType;->$VALUES:[Lorg/apache/ignite/igfs/IgfsIpcEndpointType;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/ignite/igfs/IgfsIpcEndpointType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lorg/apache/ignite/igfs/IgfsIpcEndpointType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/igfs/IgfsIpcEndpointType;

    return-object v0
.end method

.method public static values()[Lorg/apache/ignite/igfs/IgfsIpcEndpointType;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lorg/apache/ignite/igfs/IgfsIpcEndpointType;->$VALUES:[Lorg/apache/ignite/igfs/IgfsIpcEndpointType;

    invoke-virtual {v0}, [Lorg/apache/ignite/igfs/IgfsIpcEndpointType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/igfs/IgfsIpcEndpointType;

    return-object v0
.end method
