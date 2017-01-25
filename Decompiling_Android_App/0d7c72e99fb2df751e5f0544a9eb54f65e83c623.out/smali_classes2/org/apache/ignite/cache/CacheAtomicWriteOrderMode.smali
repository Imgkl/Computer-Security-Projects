.class public final enum Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;
.super Ljava/lang/Enum;
.source "CacheAtomicWriteOrderMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;

.field public static final enum CLOCK:Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;

.field public static final enum PRIMARY:Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;

.field private static final VALS:[Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-instance v0, Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;

    const-string v1, "CLOCK"

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;->CLOCK:Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;

    .line 50
    new-instance v0, Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;

    const-string v1, "PRIMARY"

    invoke-direct {v0, v1, v3}, Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;->PRIMARY:Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;

    .line 35
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;

    sget-object v1, Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;->CLOCK:Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;->PRIMARY:Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;

    aput-object v1, v0, v3

    sput-object v0, Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;->$VALUES:[Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;

    .line 53
    invoke-static {}, Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;->values()[Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;->VALS:[Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;

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

.method public static fromOrdinal(B)Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;
    .locals 1
    .param p0, "ord"    # B
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 62
    if-ltz p0, :cond_0

    sget-object v0, Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;->VALS:[Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;->VALS:[Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;

    aget-object v0, v0, p0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    const-class v0, Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;

    return-object v0
.end method

.method public static values()[Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;->$VALUES:[Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;

    invoke-virtual {v0}, [Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;

    return-object v0
.end method
