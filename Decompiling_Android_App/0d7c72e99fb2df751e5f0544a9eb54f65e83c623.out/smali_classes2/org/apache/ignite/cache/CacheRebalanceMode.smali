.class public final enum Lorg/apache/ignite/cache/CacheRebalanceMode;
.super Ljava/lang/Enum;
.source "CacheRebalanceMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/ignite/cache/CacheRebalanceMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/ignite/cache/CacheRebalanceMode;

.field public static final enum ASYNC:Lorg/apache/ignite/cache/CacheRebalanceMode;

.field public static final enum NONE:Lorg/apache/ignite/cache/CacheRebalanceMode;

.field public static final enum SYNC:Lorg/apache/ignite/cache/CacheRebalanceMode;

.field private static final VALS:[Lorg/apache/ignite/cache/CacheRebalanceMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-instance v0, Lorg/apache/ignite/cache/CacheRebalanceMode;

    const-string v1, "SYNC"

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/cache/CacheRebalanceMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/cache/CacheRebalanceMode;->SYNC:Lorg/apache/ignite/cache/CacheRebalanceMode;

    .line 48
    new-instance v0, Lorg/apache/ignite/cache/CacheRebalanceMode;

    const-string v1, "ASYNC"

    invoke-direct {v0, v1, v3}, Lorg/apache/ignite/cache/CacheRebalanceMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/cache/CacheRebalanceMode;->ASYNC:Lorg/apache/ignite/cache/CacheRebalanceMode;

    .line 54
    new-instance v0, Lorg/apache/ignite/cache/CacheRebalanceMode;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4}, Lorg/apache/ignite/cache/CacheRebalanceMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/cache/CacheRebalanceMode;->NONE:Lorg/apache/ignite/cache/CacheRebalanceMode;

    .line 37
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/apache/ignite/cache/CacheRebalanceMode;

    sget-object v1, Lorg/apache/ignite/cache/CacheRebalanceMode;->SYNC:Lorg/apache/ignite/cache/CacheRebalanceMode;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/ignite/cache/CacheRebalanceMode;->ASYNC:Lorg/apache/ignite/cache/CacheRebalanceMode;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/ignite/cache/CacheRebalanceMode;->NONE:Lorg/apache/ignite/cache/CacheRebalanceMode;

    aput-object v1, v0, v4

    sput-object v0, Lorg/apache/ignite/cache/CacheRebalanceMode;->$VALUES:[Lorg/apache/ignite/cache/CacheRebalanceMode;

    .line 57
    invoke-static {}, Lorg/apache/ignite/cache/CacheRebalanceMode;->values()[Lorg/apache/ignite/cache/CacheRebalanceMode;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/cache/CacheRebalanceMode;->VALS:[Lorg/apache/ignite/cache/CacheRebalanceMode;

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
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromOrdinal(I)Lorg/apache/ignite/cache/CacheRebalanceMode;
    .locals 1
    .param p0, "ord"    # I
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 66
    if-ltz p0, :cond_0

    sget-object v0, Lorg/apache/ignite/cache/CacheRebalanceMode;->VALS:[Lorg/apache/ignite/cache/CacheRebalanceMode;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lorg/apache/ignite/cache/CacheRebalanceMode;->VALS:[Lorg/apache/ignite/cache/CacheRebalanceMode;

    aget-object v0, v0, p0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/ignite/cache/CacheRebalanceMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 37
    const-class v0, Lorg/apache/ignite/cache/CacheRebalanceMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/cache/CacheRebalanceMode;

    return-object v0
.end method

.method public static values()[Lorg/apache/ignite/cache/CacheRebalanceMode;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lorg/apache/ignite/cache/CacheRebalanceMode;->$VALUES:[Lorg/apache/ignite/cache/CacheRebalanceMode;

    invoke-virtual {v0}, [Lorg/apache/ignite/cache/CacheRebalanceMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/cache/CacheRebalanceMode;

    return-object v0
.end method
