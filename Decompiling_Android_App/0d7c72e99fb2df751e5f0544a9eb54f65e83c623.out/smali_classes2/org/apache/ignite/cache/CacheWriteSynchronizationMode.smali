.class public final enum Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;
.super Ljava/lang/Enum;
.source "CacheWriteSynchronizationMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

.field public static final enum FULL_ASYNC:Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

.field public static final enum FULL_SYNC:Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

.field public static final enum PRIMARY_SYNC:Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

.field private static final VALS:[Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    new-instance v0, Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    const-string v1, "FULL_SYNC"

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;->FULL_SYNC:Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    .line 48
    new-instance v0, Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    const-string v1, "FULL_ASYNC"

    invoke-direct {v0, v1, v3}, Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;->FULL_ASYNC:Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    .line 55
    new-instance v0, Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    const-string v1, "PRIMARY_SYNC"

    invoke-direct {v0, v1, v4}, Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;->PRIMARY_SYNC:Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    .line 35
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    sget-object v1, Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;->FULL_SYNC:Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;->FULL_ASYNC:Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;->PRIMARY_SYNC:Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    aput-object v1, v0, v4

    sput-object v0, Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;->$VALUES:[Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    .line 58
    invoke-static {}, Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;->values()[Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;->VALS:[Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

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
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromOrdinal(I)Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;
    .locals 1
    .param p0, "ord"    # I
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 67
    if-ltz p0, :cond_0

    sget-object v0, Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;->VALS:[Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;->VALS:[Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    aget-object v0, v0, p0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    const-class v0, Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    return-object v0
.end method

.method public static values()[Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;->$VALUES:[Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    invoke-virtual {v0}, [Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    return-object v0
.end method
