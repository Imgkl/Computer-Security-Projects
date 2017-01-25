.class public final enum Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryType;
.super Ljava/lang/Enum;
.source "GridClientCacheQueryRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GridQueryType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryType;

.field public static final enum FULL_TEXT:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryType;

.field public static final enum SCAN:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryType;

.field public static final enum SQL:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryType;

.field public static final enum SQL_FIELDS:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryType;

.field private static final VALS:[Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 66
    new-instance v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryType;

    const-string v1, "SQL"

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryType;->SQL:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryType;

    .line 69
    new-instance v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryType;

    const-string v1, "SQL_FIELDS"

    invoke-direct {v0, v1, v3}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryType;->SQL_FIELDS:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryType;

    .line 72
    new-instance v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryType;

    const-string v1, "FULL_TEXT"

    invoke-direct {v0, v1, v4}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryType;->FULL_TEXT:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryType;

    .line 75
    new-instance v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryType;

    const-string v1, "SCAN"

    invoke-direct {v0, v1, v5}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryType;->SCAN:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryType;

    .line 63
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryType;

    sget-object v1, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryType;->SQL:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryType;->SQL_FIELDS:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryType;->FULL_TEXT:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryType;->SCAN:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryType;

    aput-object v1, v0, v5

    sput-object v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryType;->$VALUES:[Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryType;

    .line 78
    invoke-static {}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryType;->values()[Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryType;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryType;->VALS:[Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryType;

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
    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromOrdinal(I)Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryType;
    .locals 1
    .param p0, "ord"    # I
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 87
    if-ltz p0, :cond_0

    sget-object v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryType;->VALS:[Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryType;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryType;->VALS:[Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryType;

    aget-object v0, v0, p0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 63
    const-class v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryType;

    return-object v0
.end method

.method public static values()[Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryType;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryType;->$VALUES:[Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryType;

    invoke-virtual {v0}, [Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheQueryRequest$GridQueryType;

    return-object v0
.end method
