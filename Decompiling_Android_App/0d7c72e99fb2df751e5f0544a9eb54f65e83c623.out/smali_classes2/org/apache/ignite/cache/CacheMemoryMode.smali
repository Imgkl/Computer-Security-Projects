.class public final enum Lorg/apache/ignite/cache/CacheMemoryMode;
.super Ljava/lang/Enum;
.source "CacheMemoryMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/ignite/cache/CacheMemoryMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/ignite/cache/CacheMemoryMode;

.field public static final enum OFFHEAP_TIERED:Lorg/apache/ignite/cache/CacheMemoryMode;

.field public static final enum OFFHEAP_VALUES:Lorg/apache/ignite/cache/CacheMemoryMode;

.field public static final enum ONHEAP_TIERED:Lorg/apache/ignite/cache/CacheMemoryMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    new-instance v0, Lorg/apache/ignite/cache/CacheMemoryMode;

    const-string v1, "ONHEAP_TIERED"

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/cache/CacheMemoryMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/cache/CacheMemoryMode;->ONHEAP_TIERED:Lorg/apache/ignite/cache/CacheMemoryMode;

    .line 53
    new-instance v0, Lorg/apache/ignite/cache/CacheMemoryMode;

    const-string v1, "OFFHEAP_TIERED"

    invoke-direct {v0, v1, v3}, Lorg/apache/ignite/cache/CacheMemoryMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/cache/CacheMemoryMode;->OFFHEAP_TIERED:Lorg/apache/ignite/cache/CacheMemoryMode;

    .line 60
    new-instance v0, Lorg/apache/ignite/cache/CacheMemoryMode;

    const-string v1, "OFFHEAP_VALUES"

    invoke-direct {v0, v1, v4}, Lorg/apache/ignite/cache/CacheMemoryMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/cache/CacheMemoryMode;->OFFHEAP_VALUES:Lorg/apache/ignite/cache/CacheMemoryMode;

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/apache/ignite/cache/CacheMemoryMode;

    sget-object v1, Lorg/apache/ignite/cache/CacheMemoryMode;->ONHEAP_TIERED:Lorg/apache/ignite/cache/CacheMemoryMode;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/ignite/cache/CacheMemoryMode;->OFFHEAP_TIERED:Lorg/apache/ignite/cache/CacheMemoryMode;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/ignite/cache/CacheMemoryMode;->OFFHEAP_VALUES:Lorg/apache/ignite/cache/CacheMemoryMode;

    aput-object v1, v0, v4

    sput-object v0, Lorg/apache/ignite/cache/CacheMemoryMode;->$VALUES:[Lorg/apache/ignite/cache/CacheMemoryMode;

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
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/ignite/cache/CacheMemoryMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-class v0, Lorg/apache/ignite/cache/CacheMemoryMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/cache/CacheMemoryMode;

    return-object v0
.end method

.method public static values()[Lorg/apache/ignite/cache/CacheMemoryMode;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lorg/apache/ignite/cache/CacheMemoryMode;->$VALUES:[Lorg/apache/ignite/cache/CacheMemoryMode;

    invoke-virtual {v0}, [Lorg/apache/ignite/cache/CacheMemoryMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/cache/CacheMemoryMode;

    return-object v0
.end method
