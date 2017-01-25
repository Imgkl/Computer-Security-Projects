.class public final enum Lorg/apache/ignite/cache/CacheAtomicityMode;
.super Ljava/lang/Enum;
.source "CacheAtomicityMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/ignite/cache/CacheAtomicityMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/ignite/cache/CacheAtomicityMode;

.field public static final enum ATOMIC:Lorg/apache/ignite/cache/CacheAtomicityMode;

.field public static final enum TRANSACTIONAL:Lorg/apache/ignite/cache/CacheAtomicityMode;

.field private static final VALS:[Lorg/apache/ignite/cache/CacheAtomicityMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-instance v0, Lorg/apache/ignite/cache/CacheAtomicityMode;

    const-string v1, "TRANSACTIONAL"

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/cache/CacheAtomicityMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/cache/CacheAtomicityMode;->TRANSACTIONAL:Lorg/apache/ignite/cache/CacheAtomicityMode;

    .line 65
    new-instance v0, Lorg/apache/ignite/cache/CacheAtomicityMode;

    const-string v1, "ATOMIC"

    invoke-direct {v0, v1, v3}, Lorg/apache/ignite/cache/CacheAtomicityMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/cache/CacheAtomicityMode;->ATOMIC:Lorg/apache/ignite/cache/CacheAtomicityMode;

    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/ignite/cache/CacheAtomicityMode;

    sget-object v1, Lorg/apache/ignite/cache/CacheAtomicityMode;->TRANSACTIONAL:Lorg/apache/ignite/cache/CacheAtomicityMode;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/ignite/cache/CacheAtomicityMode;->ATOMIC:Lorg/apache/ignite/cache/CacheAtomicityMode;

    aput-object v1, v0, v3

    sput-object v0, Lorg/apache/ignite/cache/CacheAtomicityMode;->$VALUES:[Lorg/apache/ignite/cache/CacheAtomicityMode;

    .line 68
    invoke-static {}, Lorg/apache/ignite/cache/CacheAtomicityMode;->values()[Lorg/apache/ignite/cache/CacheAtomicityMode;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/cache/CacheAtomicityMode;->VALS:[Lorg/apache/ignite/cache/CacheAtomicityMode;

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

.method public static fromOrdinal(I)Lorg/apache/ignite/cache/CacheAtomicityMode;
    .locals 1
    .param p0, "ord"    # I
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 77
    if-ltz p0, :cond_0

    sget-object v0, Lorg/apache/ignite/cache/CacheAtomicityMode;->VALS:[Lorg/apache/ignite/cache/CacheAtomicityMode;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lorg/apache/ignite/cache/CacheAtomicityMode;->VALS:[Lorg/apache/ignite/cache/CacheAtomicityMode;

    aget-object v0, v0, p0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/ignite/cache/CacheAtomicityMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    const-class v0, Lorg/apache/ignite/cache/CacheAtomicityMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/cache/CacheAtomicityMode;

    return-object v0
.end method

.method public static values()[Lorg/apache/ignite/cache/CacheAtomicityMode;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lorg/apache/ignite/cache/CacheAtomicityMode;->$VALUES:[Lorg/apache/ignite/cache/CacheAtomicityMode;

    invoke-virtual {v0}, [Lorg/apache/ignite/cache/CacheAtomicityMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/cache/CacheAtomicityMode;

    return-object v0
.end method
