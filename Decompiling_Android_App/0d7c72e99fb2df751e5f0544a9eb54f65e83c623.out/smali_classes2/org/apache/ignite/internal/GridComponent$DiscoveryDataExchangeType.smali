.class public final enum Lorg/apache/ignite/internal/GridComponent$DiscoveryDataExchangeType;
.super Ljava/lang/Enum;
.source "GridComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/GridComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DiscoveryDataExchangeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/ignite/internal/GridComponent$DiscoveryDataExchangeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/ignite/internal/GridComponent$DiscoveryDataExchangeType;

.field public static final enum CACHE_PROC:Lorg/apache/ignite/internal/GridComponent$DiscoveryDataExchangeType;

.field public static final enum CONTINUOUS_PROC:Lorg/apache/ignite/internal/GridComponent$DiscoveryDataExchangeType;

.field public static final enum PLUGIN:Lorg/apache/ignite/internal/GridComponent$DiscoveryDataExchangeType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    new-instance v0, Lorg/apache/ignite/internal/GridComponent$DiscoveryDataExchangeType;

    const-string v1, "CONTINUOUS_PROC"

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/GridComponent$DiscoveryDataExchangeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/GridComponent$DiscoveryDataExchangeType;->CONTINUOUS_PROC:Lorg/apache/ignite/internal/GridComponent$DiscoveryDataExchangeType;

    .line 39
    new-instance v0, Lorg/apache/ignite/internal/GridComponent$DiscoveryDataExchangeType;

    const-string v1, "CACHE_PROC"

    invoke-direct {v0, v1, v3}, Lorg/apache/ignite/internal/GridComponent$DiscoveryDataExchangeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/GridComponent$DiscoveryDataExchangeType;->CACHE_PROC:Lorg/apache/ignite/internal/GridComponent$DiscoveryDataExchangeType;

    .line 42
    new-instance v0, Lorg/apache/ignite/internal/GridComponent$DiscoveryDataExchangeType;

    const-string v1, "PLUGIN"

    invoke-direct {v0, v1, v4}, Lorg/apache/ignite/internal/GridComponent$DiscoveryDataExchangeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/GridComponent$DiscoveryDataExchangeType;->PLUGIN:Lorg/apache/ignite/internal/GridComponent$DiscoveryDataExchangeType;

    .line 34
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/apache/ignite/internal/GridComponent$DiscoveryDataExchangeType;

    sget-object v1, Lorg/apache/ignite/internal/GridComponent$DiscoveryDataExchangeType;->CONTINUOUS_PROC:Lorg/apache/ignite/internal/GridComponent$DiscoveryDataExchangeType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/ignite/internal/GridComponent$DiscoveryDataExchangeType;->CACHE_PROC:Lorg/apache/ignite/internal/GridComponent$DiscoveryDataExchangeType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/ignite/internal/GridComponent$DiscoveryDataExchangeType;->PLUGIN:Lorg/apache/ignite/internal/GridComponent$DiscoveryDataExchangeType;

    aput-object v1, v0, v4

    sput-object v0, Lorg/apache/ignite/internal/GridComponent$DiscoveryDataExchangeType;->$VALUES:[Lorg/apache/ignite/internal/GridComponent$DiscoveryDataExchangeType;

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
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/ignite/internal/GridComponent$DiscoveryDataExchangeType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 34
    const-class v0, Lorg/apache/ignite/internal/GridComponent$DiscoveryDataExchangeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/GridComponent$DiscoveryDataExchangeType;

    return-object v0
.end method

.method public static values()[Lorg/apache/ignite/internal/GridComponent$DiscoveryDataExchangeType;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lorg/apache/ignite/internal/GridComponent$DiscoveryDataExchangeType;->$VALUES:[Lorg/apache/ignite/internal/GridComponent$DiscoveryDataExchangeType;

    invoke-virtual {v0}, [Lorg/apache/ignite/internal/GridComponent$DiscoveryDataExchangeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/internal/GridComponent$DiscoveryDataExchangeType;

    return-object v0
.end method
