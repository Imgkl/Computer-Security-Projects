.class public final enum Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;
.super Ljava/lang/Enum;
.source "GridClientCacheRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GridCacheOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

.field public static final enum APPEND:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

.field public static final enum CAS:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

.field public static final enum GET:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

.field public static final enum GET_ALL:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

.field public static final enum METRICS:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

.field public static final enum PREPEND:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

.field public static final enum PUT:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

.field public static final enum PUT_ALL:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

.field public static final enum REPLACE:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

.field public static final enum RMV:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

.field public static final enum RMV_ALL:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

.field private static final VALS:[Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 39
    new-instance v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

    const-string v1, "PUT"

    invoke-direct {v0, v1, v3}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;->PUT:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

    .line 42
    new-instance v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

    const-string v1, "PUT_ALL"

    invoke-direct {v0, v1, v4}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;->PUT_ALL:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

    .line 45
    new-instance v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

    const-string v1, "GET"

    invoke-direct {v0, v1, v5}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;->GET:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

    .line 48
    new-instance v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

    const-string v1, "GET_ALL"

    invoke-direct {v0, v1, v6}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;->GET_ALL:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

    .line 51
    new-instance v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

    const-string v1, "RMV"

    invoke-direct {v0, v1, v7}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;->RMV:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

    .line 54
    new-instance v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

    const-string v1, "RMV_ALL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;->RMV_ALL:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

    .line 57
    new-instance v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

    const-string v1, "REPLACE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;->REPLACE:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

    .line 60
    new-instance v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

    const-string v1, "CAS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;->CAS:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

    .line 63
    new-instance v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

    const-string v1, "METRICS"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;->METRICS:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

    .line 66
    new-instance v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

    const-string v1, "APPEND"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;->APPEND:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

    .line 69
    new-instance v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

    const-string v1, "PREPEND"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;->PREPEND:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

    .line 36
    const/16 v0, 0xb

    new-array v0, v0, [Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

    sget-object v1, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;->PUT:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;->PUT_ALL:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;->GET:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;->GET_ALL:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

    aput-object v1, v0, v6

    sget-object v1, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;->RMV:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;->RMV_ALL:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;->REPLACE:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;->CAS:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;->METRICS:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;->APPEND:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;->PREPEND:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;->$VALUES:[Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

    .line 72
    invoke-static {}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;->values()[Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;->VALS:[Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

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

.method public static fromOrdinal(I)Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;
    .locals 1
    .param p0, "ord"    # I
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 81
    if-ltz p0, :cond_0

    sget-object v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;->VALS:[Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;->VALS:[Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

    aget-object v0, v0, p0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 36
    const-class v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

    return-object v0
.end method

.method public static values()[Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;->$VALUES:[Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

    invoke-virtual {v0}, [Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/internal/processors/rest/client/message/GridClientCacheRequest$GridCacheOperation;

    return-object v0
.end method
