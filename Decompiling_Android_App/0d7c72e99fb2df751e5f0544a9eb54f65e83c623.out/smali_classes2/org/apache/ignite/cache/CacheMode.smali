.class public final enum Lorg/apache/ignite/cache/CacheMode;
.super Ljava/lang/Enum;
.source "CacheMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/ignite/cache/CacheMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/ignite/cache/CacheMode;

.field public static final enum LOCAL:Lorg/apache/ignite/cache/CacheMode;

.field public static final enum PARTITIONED:Lorg/apache/ignite/cache/CacheMode;

.field public static final enum REPLICATED:Lorg/apache/ignite/cache/CacheMode;

.field private static final VALS:[Lorg/apache/ignite/cache/CacheMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-instance v0, Lorg/apache/ignite/cache/CacheMode;

    const-string v1, "LOCAL"

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/cache/CacheMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/cache/CacheMode;->LOCAL:Lorg/apache/ignite/cache/CacheMode;

    .line 47
    new-instance v0, Lorg/apache/ignite/cache/CacheMode;

    const-string v1, "REPLICATED"

    invoke-direct {v0, v1, v3}, Lorg/apache/ignite/cache/CacheMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/cache/CacheMode;->REPLICATED:Lorg/apache/ignite/cache/CacheMode;

    .line 61
    new-instance v0, Lorg/apache/ignite/cache/CacheMode;

    const-string v1, "PARTITIONED"

    invoke-direct {v0, v1, v4}, Lorg/apache/ignite/cache/CacheMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/cache/CacheMode;->PARTITIONED:Lorg/apache/ignite/cache/CacheMode;

    .line 28
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/apache/ignite/cache/CacheMode;

    sget-object v1, Lorg/apache/ignite/cache/CacheMode;->LOCAL:Lorg/apache/ignite/cache/CacheMode;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/ignite/cache/CacheMode;->REPLICATED:Lorg/apache/ignite/cache/CacheMode;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/ignite/cache/CacheMode;->PARTITIONED:Lorg/apache/ignite/cache/CacheMode;

    aput-object v1, v0, v4

    sput-object v0, Lorg/apache/ignite/cache/CacheMode;->$VALUES:[Lorg/apache/ignite/cache/CacheMode;

    .line 64
    invoke-static {}, Lorg/apache/ignite/cache/CacheMode;->values()[Lorg/apache/ignite/cache/CacheMode;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/cache/CacheMode;->VALS:[Lorg/apache/ignite/cache/CacheMode;

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
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromOrdinal(I)Lorg/apache/ignite/cache/CacheMode;
    .locals 1
    .param p0, "ord"    # I
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 73
    if-ltz p0, :cond_0

    sget-object v0, Lorg/apache/ignite/cache/CacheMode;->VALS:[Lorg/apache/ignite/cache/CacheMode;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lorg/apache/ignite/cache/CacheMode;->VALS:[Lorg/apache/ignite/cache/CacheMode;

    aget-object v0, v0, p0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/ignite/cache/CacheMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    const-class v0, Lorg/apache/ignite/cache/CacheMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/cache/CacheMode;

    return-object v0
.end method

.method public static values()[Lorg/apache/ignite/cache/CacheMode;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lorg/apache/ignite/cache/CacheMode;->$VALUES:[Lorg/apache/ignite/cache/CacheMode;

    invoke-virtual {v0}, [Lorg/apache/ignite/cache/CacheMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/cache/CacheMode;

    return-object v0
.end method
