.class public final enum Lorg/apache/ignite/internal/GridClosureCallMode;
.super Ljava/lang/Enum;
.source "GridClosureCallMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/ignite/internal/GridClosureCallMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/ignite/internal/GridClosureCallMode;

.field public static final enum BALANCE:Lorg/apache/ignite/internal/GridClosureCallMode;

.field public static final enum BROADCAST:Lorg/apache/ignite/internal/GridClosureCallMode;

.field private static final VALS:[Lorg/apache/ignite/internal/GridClosureCallMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    new-instance v0, Lorg/apache/ignite/internal/GridClosureCallMode;

    const-string v1, "BROADCAST"

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/GridClosureCallMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/GridClosureCallMode;->BROADCAST:Lorg/apache/ignite/internal/GridClosureCallMode;

    .line 47
    new-instance v0, Lorg/apache/ignite/internal/GridClosureCallMode;

    const-string v1, "BALANCE"

    invoke-direct {v0, v1, v3}, Lorg/apache/ignite/internal/GridClosureCallMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/GridClosureCallMode;->BALANCE:Lorg/apache/ignite/internal/GridClosureCallMode;

    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/ignite/internal/GridClosureCallMode;

    sget-object v1, Lorg/apache/ignite/internal/GridClosureCallMode;->BROADCAST:Lorg/apache/ignite/internal/GridClosureCallMode;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/ignite/internal/GridClosureCallMode;->BALANCE:Lorg/apache/ignite/internal/GridClosureCallMode;

    aput-object v1, v0, v3

    sput-object v0, Lorg/apache/ignite/internal/GridClosureCallMode;->$VALUES:[Lorg/apache/ignite/internal/GridClosureCallMode;

    .line 50
    invoke-static {}, Lorg/apache/ignite/internal/GridClosureCallMode;->values()[Lorg/apache/ignite/internal/GridClosureCallMode;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/GridClosureCallMode;->VALS:[Lorg/apache/ignite/internal/GridClosureCallMode;

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
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromOrdinal(B)Lorg/apache/ignite/internal/GridClosureCallMode;
    .locals 1
    .param p0, "ord"    # B
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 59
    if-ltz p0, :cond_0

    sget-object v0, Lorg/apache/ignite/internal/GridClosureCallMode;->VALS:[Lorg/apache/ignite/internal/GridClosureCallMode;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lorg/apache/ignite/internal/GridClosureCallMode;->VALS:[Lorg/apache/ignite/internal/GridClosureCallMode;

    aget-object v0, v0, p0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/ignite/internal/GridClosureCallMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    const-class v0, Lorg/apache/ignite/internal/GridClosureCallMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/GridClosureCallMode;

    return-object v0
.end method

.method public static values()[Lorg/apache/ignite/internal/GridClosureCallMode;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lorg/apache/ignite/internal/GridClosureCallMode;->$VALUES:[Lorg/apache/ignite/internal/GridClosureCallMode;

    invoke-virtual {v0}, [Lorg/apache/ignite/internal/GridClosureCallMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/internal/GridClosureCallMode;

    return-object v0
.end method
