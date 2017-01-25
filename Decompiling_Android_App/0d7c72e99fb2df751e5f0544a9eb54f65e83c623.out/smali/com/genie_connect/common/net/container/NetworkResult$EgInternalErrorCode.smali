.class public final enum Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;
.super Ljava/lang/Enum;
.source "NetworkResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genie_connect/common/net/container/NetworkResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EgInternalErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

.field public static final enum CONNECTION_EXCEPTION:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

.field public static final enum ERROR_PERSISITNG_RESPONSE:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

.field public static final enum HTTP_NOT_2xx:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

.field public static final enum IO_EXCEPTION:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

.field public static final enum JSON_EXCEPTION:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

.field public static final enum MALFORMED_URL:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

.field public static final enum UNKNOWN:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 183
    new-instance v0, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->UNKNOWN:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    .line 186
    new-instance v0, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    const-string v1, "CONNECTION_EXCEPTION"

    invoke-direct {v0, v1, v4}, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->CONNECTION_EXCEPTION:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    .line 189
    new-instance v0, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    const-string v1, "JSON_EXCEPTION"

    invoke-direct {v0, v1, v5}, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->JSON_EXCEPTION:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    .line 192
    new-instance v0, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    const-string v1, "IO_EXCEPTION"

    invoke-direct {v0, v1, v6}, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->IO_EXCEPTION:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    .line 195
    new-instance v0, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    const-string v1, "MALFORMED_URL"

    invoke-direct {v0, v1, v7}, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->MALFORMED_URL:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    .line 198
    new-instance v0, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    const-string v1, "HTTP_NOT_2xx"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->HTTP_NOT_2xx:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    .line 201
    new-instance v0, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    const-string v1, "ERROR_PERSISITNG_RESPONSE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->ERROR_PERSISITNG_RESPONSE:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    .line 180
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    sget-object v1, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->UNKNOWN:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->CONNECTION_EXCEPTION:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->JSON_EXCEPTION:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->IO_EXCEPTION:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->MALFORMED_URL:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->HTTP_NOT_2xx:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->ERROR_PERSISITNG_RESPONSE:Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->$VALUES:[Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

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
    .line 180
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 180
    const-class v0, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;
    .locals 1

    .prologue
    .line 180
    sget-object v0, Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->$VALUES:[Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    invoke-virtual {v0}, [Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/genie_connect/common/net/container/NetworkResult$EgInternalErrorCode;

    return-object v0
.end method
