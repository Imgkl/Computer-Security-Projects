.class public final enum Lorg/apache/ignite/internal/processors/dr/GridDrType;
.super Ljava/lang/Enum;
.source "GridDrType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/ignite/internal/processors/dr/GridDrType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/ignite/internal/processors/dr/GridDrType;

.field public static final enum DR_BACKUP:Lorg/apache/ignite/internal/processors/dr/GridDrType;

.field public static final enum DR_LOAD:Lorg/apache/ignite/internal/processors/dr/GridDrType;

.field public static final enum DR_NONE:Lorg/apache/ignite/internal/processors/dr/GridDrType;

.field public static final enum DR_PRELOAD:Lorg/apache/ignite/internal/processors/dr/GridDrType;

.field public static final enum DR_PRIMARY:Lorg/apache/ignite/internal/processors/dr/GridDrType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lorg/apache/ignite/internal/processors/dr/GridDrType;

    const-string v1, "DR_NONE"

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/dr/GridDrType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/dr/GridDrType;->DR_NONE:Lorg/apache/ignite/internal/processors/dr/GridDrType;

    .line 28
    new-instance v0, Lorg/apache/ignite/internal/processors/dr/GridDrType;

    const-string v1, "DR_PRIMARY"

    invoke-direct {v0, v1, v3}, Lorg/apache/ignite/internal/processors/dr/GridDrType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/dr/GridDrType;->DR_PRIMARY:Lorg/apache/ignite/internal/processors/dr/GridDrType;

    .line 31
    new-instance v0, Lorg/apache/ignite/internal/processors/dr/GridDrType;

    const-string v1, "DR_BACKUP"

    invoke-direct {v0, v1, v4}, Lorg/apache/ignite/internal/processors/dr/GridDrType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/dr/GridDrType;->DR_BACKUP:Lorg/apache/ignite/internal/processors/dr/GridDrType;

    .line 34
    new-instance v0, Lorg/apache/ignite/internal/processors/dr/GridDrType;

    const-string v1, "DR_LOAD"

    invoke-direct {v0, v1, v5}, Lorg/apache/ignite/internal/processors/dr/GridDrType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/dr/GridDrType;->DR_LOAD:Lorg/apache/ignite/internal/processors/dr/GridDrType;

    .line 37
    new-instance v0, Lorg/apache/ignite/internal/processors/dr/GridDrType;

    const-string v1, "DR_PRELOAD"

    invoke-direct {v0, v1, v6}, Lorg/apache/ignite/internal/processors/dr/GridDrType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/dr/GridDrType;->DR_PRELOAD:Lorg/apache/ignite/internal/processors/dr/GridDrType;

    .line 23
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/apache/ignite/internal/processors/dr/GridDrType;

    sget-object v1, Lorg/apache/ignite/internal/processors/dr/GridDrType;->DR_NONE:Lorg/apache/ignite/internal/processors/dr/GridDrType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/ignite/internal/processors/dr/GridDrType;->DR_PRIMARY:Lorg/apache/ignite/internal/processors/dr/GridDrType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/ignite/internal/processors/dr/GridDrType;->DR_BACKUP:Lorg/apache/ignite/internal/processors/dr/GridDrType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/ignite/internal/processors/dr/GridDrType;->DR_LOAD:Lorg/apache/ignite/internal/processors/dr/GridDrType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/ignite/internal/processors/dr/GridDrType;->DR_PRELOAD:Lorg/apache/ignite/internal/processors/dr/GridDrType;

    aput-object v1, v0, v6

    sput-object v0, Lorg/apache/ignite/internal/processors/dr/GridDrType;->$VALUES:[Lorg/apache/ignite/internal/processors/dr/GridDrType;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/dr/GridDrType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lorg/apache/ignite/internal/processors/dr/GridDrType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/dr/GridDrType;

    return-object v0
.end method

.method public static values()[Lorg/apache/ignite/internal/processors/dr/GridDrType;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lorg/apache/ignite/internal/processors/dr/GridDrType;->$VALUES:[Lorg/apache/ignite/internal/processors/dr/GridDrType;

    invoke-virtual {v0}, [Lorg/apache/ignite/internal/processors/dr/GridDrType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/internal/processors/dr/GridDrType;

    return-object v0
.end method
