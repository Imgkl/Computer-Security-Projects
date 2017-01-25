.class public final enum Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryOperation;
.super Ljava/lang/Enum;
.source "GridClientCacheQueryRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GridQueryOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryOperation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryOperation;

.field public static final enum EXECUTE:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryOperation;

.field public static final enum FETCH:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryOperation;

.field public static final enum REBUILD_INDEXES:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryOperation;

.field private static final VALS:[Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryOperation;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-instance v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryOperation;

    const-string v1, "EXECUTE"

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryOperation;->EXECUTE:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryOperation;

    .line 41
    new-instance v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryOperation;

    const-string v1, "FETCH"

    invoke-direct {v0, v1, v3}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryOperation;->FETCH:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryOperation;

    .line 44
    new-instance v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryOperation;

    const-string v1, "REBUILD_INDEXES"

    invoke-direct {v0, v1, v4}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryOperation;->REBUILD_INDEXES:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryOperation;

    .line 35
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryOperation;

    sget-object v1, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryOperation;->EXECUTE:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryOperation;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryOperation;->FETCH:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryOperation;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryOperation;->REBUILD_INDEXES:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryOperation;

    aput-object v1, v0, v4

    sput-object v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryOperation;->$VALUES:[Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryOperation;

    .line 47
    invoke-static {}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryOperation;->values()[Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryOperation;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryOperation;->VALS:[Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryOperation;

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
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromOrdinal(I)Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryOperation;
    .locals 1
    .param p0, "ord"    # I
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 56
    if-ltz p0, :cond_0

    sget-object v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryOperation;->VALS:[Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryOperation;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryOperation;->VALS:[Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryOperation;

    aget-object v0, v0, p0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryOperation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    const-class v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryOperation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryOperation;

    return-object v0
.end method

.method public static values()[Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryOperation;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryOperation;->$VALUES:[Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryOperation;

    invoke-virtual {v0}, [Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryOperation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryOperation;

    return-object v0
.end method
