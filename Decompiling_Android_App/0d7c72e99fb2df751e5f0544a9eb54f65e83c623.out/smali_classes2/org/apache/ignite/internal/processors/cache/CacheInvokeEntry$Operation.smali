.class final enum Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry$Operation;
.super Ljava/lang/Enum;
.source "CacheInvokeEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Operation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry$Operation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry$Operation;

.field public static final enum CREATE:Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry$Operation;

.field public static final enum NONE:Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry$Operation;

.field public static final enum REMOVE:Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry$Operation;

.field public static final enum UPDATE:Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry$Operation;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 120
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry$Operation;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry$Operation;->NONE:Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry$Operation;

    .line 123
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry$Operation;

    const-string v1, "CREATE"

    invoke-direct {v0, v1, v3}, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry$Operation;->CREATE:Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry$Operation;

    .line 126
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry$Operation;

    const-string v1, "UPDATE"

    invoke-direct {v0, v1, v4}, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry$Operation;->UPDATE:Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry$Operation;

    .line 129
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry$Operation;

    const-string v1, "REMOVE"

    invoke-direct {v0, v1, v5}, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry$Operation;->REMOVE:Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry$Operation;

    .line 118
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry$Operation;

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry$Operation;->NONE:Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry$Operation;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry$Operation;->CREATE:Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry$Operation;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry$Operation;->UPDATE:Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry$Operation;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry$Operation;->REMOVE:Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry$Operation;

    aput-object v1, v0, v5

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry$Operation;->$VALUES:[Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry$Operation;

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
    .line 118
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry$Operation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 118
    const-class v0, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry$Operation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry$Operation;

    return-object v0
.end method

.method public static values()[Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry$Operation;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry$Operation;->$VALUES:[Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry$Operation;

    invoke-virtual {v0}, [Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry$Operation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry$Operation;

    return-object v0
.end method
