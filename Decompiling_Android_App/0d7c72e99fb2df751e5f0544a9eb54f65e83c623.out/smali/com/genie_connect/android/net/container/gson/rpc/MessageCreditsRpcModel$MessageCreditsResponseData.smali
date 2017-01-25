.class public Lcom/genie_connect/android/net/container/gson/rpc/MessageCreditsRpcModel$MessageCreditsResponseData;
.super Ljava/lang/Object;
.source "MessageCreditsRpcModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genie_connect/android/net/container/gson/rpc/MessageCreditsRpcModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageCreditsResponseData"
.end annotation


# static fields
.field public static final UNLIMITED_CREDITS:I = 0x270f


# instance fields
.field private messageCreditsMax:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "messageCreditsMax"
    .end annotation
.end field

.field private totalCreditAvailable:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "totalCreditAvailable"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessageCreditsMax()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/rpc/MessageCreditsRpcModel$MessageCreditsResponseData;->messageCreditsMax:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNumberOfCreditsAvailableText(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 101
    invoke-virtual {p0}, Lcom/genie_connect/android/net/container/gson/rpc/MessageCreditsRpcModel$MessageCreditsResponseData;->getTotalCreditAvailable()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x270f

    if-ne v1, v2, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-object v0

    .line 105
    :cond_1
    invoke-virtual {p0}, Lcom/genie_connect/android/net/container/gson/rpc/MessageCreditsRpcModel$MessageCreditsResponseData;->getMessageCreditsMax()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 108
    sget v0, Lcom/eventgenie/android/R$string;->messages_you_have_x_out_of_y_credits:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/genie_connect/android/net/container/gson/rpc/MessageCreditsRpcModel$MessageCreditsResponseData;->getTotalCreditAvailable()Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/genie_connect/android/net/container/gson/rpc/MessageCreditsRpcModel$MessageCreditsResponseData;->getMessageCreditsMax()Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTotalCreditAvailable()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/rpc/MessageCreditsRpcModel$MessageCreditsResponseData;->totalCreditAvailable:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/rpc/MessageCreditsRpcModel$MessageCreditsResponseData;->totalCreditAvailable:Ljava/lang/Integer;

    .line 86
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MessageCreditsResponseData [totalCreditAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/net/container/gson/rpc/MessageCreditsRpcModel$MessageCreditsResponseData;->totalCreditAvailable:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", messageCredits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/net/container/gson/rpc/MessageCreditsRpcModel$MessageCreditsResponseData;->messageCreditsMax:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
