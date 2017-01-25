.class public Lcom/genie_connect/android/net/container/gson/rpc/MeetingCreditsRpcModel$MeetingCreditsResponseData;
.super Ljava/lang/Object;
.source "MeetingCreditsRpcModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genie_connect/android/net/container/gson/rpc/MeetingCreditsRpcModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MeetingCreditsResponseData"
.end annotation


# static fields
.field public static final UNLIMITED_CREDITS:I = 0x270f


# instance fields
.field private meetingCreditsMax:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "meetingCreditsMax"
    .end annotation
.end field

.field private meetingQuotaMin:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "meetingQuotaMin"
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
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMeeetingCreditsMax()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/rpc/MeetingCreditsRpcModel$MeetingCreditsResponseData;->meetingCreditsMax:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMeetingDebits()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/rpc/MeetingCreditsRpcModel$MeetingCreditsResponseData;->totalCreditAvailable:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/rpc/MeetingCreditsRpcModel$MeetingCreditsResponseData;->meetingCreditsMax:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/rpc/MeetingCreditsRpcModel$MeetingCreditsResponseData;->meetingCreditsMax:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/genie_connect/android/net/container/gson/rpc/MeetingCreditsRpcModel$MeetingCreditsResponseData;->totalCreditAvailable:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 101
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMeetingQuotaMin()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/rpc/MeetingCreditsRpcModel$MeetingCreditsResponseData;->meetingQuotaMin:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNumberOfCreditsAvailableText(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 118
    invoke-virtual {p0}, Lcom/genie_connect/android/net/container/gson/rpc/MeetingCreditsRpcModel$MeetingCreditsResponseData;->getTotalCreditAvailable()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x270f

    if-ne v1, v2, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-object v0

    .line 122
    :cond_1
    invoke-virtual {p0}, Lcom/genie_connect/android/net/container/gson/rpc/MeetingCreditsRpcModel$MeetingCreditsResponseData;->getMeeetingCreditsMax()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 125
    sget v0, Lcom/eventgenie/android/R$string;->meeting_you_have_x_out_of_y_credits:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/genie_connect/android/net/container/gson/rpc/MeetingCreditsRpcModel$MeetingCreditsResponseData;->getTotalCreditAvailable()Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/genie_connect/android/net/container/gson/rpc/MeetingCreditsRpcModel$MeetingCreditsResponseData;->getMeeetingCreditsMax()Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTotalCreditAvailable()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/rpc/MeetingCreditsRpcModel$MeetingCreditsResponseData;->totalCreditAvailable:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/rpc/MeetingCreditsRpcModel$MeetingCreditsResponseData;->totalCreditAvailable:Ljava/lang/Integer;

    .line 88
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
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MeetingCreditsResponseData [totalCreditAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/net/container/gson/rpc/MeetingCreditsRpcModel$MeetingCreditsResponseData;->totalCreditAvailable:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", meetingCreditsMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/net/container/gson/rpc/MeetingCreditsRpcModel$MeetingCreditsResponseData;->meetingCreditsMax:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", meetingQuotaMin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/net/container/gson/rpc/MeetingCreditsRpcModel$MeetingCreditsResponseData;->meetingQuotaMin:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
