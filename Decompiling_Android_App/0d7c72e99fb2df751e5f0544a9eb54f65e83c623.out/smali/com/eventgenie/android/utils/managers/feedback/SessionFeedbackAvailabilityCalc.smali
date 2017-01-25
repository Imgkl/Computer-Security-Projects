.class public Lcom/eventgenie/android/utils/managers/feedback/SessionFeedbackAvailabilityCalc;
.super Ljava/lang/Object;
.source "SessionFeedbackAvailabilityCalc.java"


# instance fields
.field private mFeedbackEmail:Ljava/lang/String;

.field private mFeedbackFileUrl:Ljava/lang/String;

.field private mOfflineFeedback:Ljava/lang/String;

.field private mOverrideFeedbackUrl:Ljava/lang/String;

.field private mUseExternalFeedback:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isAvailable()Z
    .locals 4

    .prologue
    .line 61
    iget-object v2, p0, Lcom/eventgenie/android/utils/managers/feedback/SessionFeedbackAvailabilityCalc;->mOverrideFeedbackUrl:Ljava/lang/String;

    invoke-static {v2}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    .line 65
    .local v0, "hasOverrideFeedbackUrl":Z
    if-eqz v0, :cond_0

    .line 66
    const-string v2, "^ SessionFeedbackAvailability: getIsAvailable() hasOverrideUrl: true"

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 67
    const/4 v1, 0x1

    .line 92
    .local v1, "res":Z
    :goto_0
    return v1

    .line 69
    .end local v1    # "res":Z
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ SessionFeedbackAvailability: getIsAvailable() useExternalFeedback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/eventgenie/android/utils/managers/feedback/SessionFeedbackAvailabilityCalc;->mUseExternalFeedback:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ SessionFeedbackAvailability: getIsAvailable() FeedbackEmail:    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/utils/managers/feedback/SessionFeedbackAvailabilityCalc;->mFeedbackEmail:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ SessionFeedbackAvailability: getIsAvailable() FeedbackFileUrl:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/utils/managers/feedback/SessionFeedbackAvailabilityCalc;->mFeedbackFileUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ SessionFeedbackAvailability: getIsAvailable() OfflineFeedback:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/utils/managers/feedback/SessionFeedbackAvailabilityCalc;->mOfflineFeedback:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 74
    iget-boolean v2, p0, Lcom/eventgenie/android/utils/managers/feedback/SessionFeedbackAvailabilityCalc;->mUseExternalFeedback:Z

    if-eqz v2, :cond_3

    .line 75
    iget-object v2, p0, Lcom/eventgenie/android/utils/managers/feedback/SessionFeedbackAvailabilityCalc;->mOfflineFeedback:Ljava/lang/String;

    invoke-static {v2}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 76
    const/4 v1, 0x1

    .restart local v1    # "res":Z
    goto :goto_0

    .line 77
    .end local v1    # "res":Z
    :cond_1
    iget-object v2, p0, Lcom/eventgenie/android/utils/managers/feedback/SessionFeedbackAvailabilityCalc;->mFeedbackFileUrl:Ljava/lang/String;

    invoke-static {v2}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 78
    const/4 v1, 0x1

    .restart local v1    # "res":Z
    goto :goto_0

    .line 80
    .end local v1    # "res":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "res":Z
    goto :goto_0

    .line 84
    .end local v1    # "res":Z
    :cond_3
    iget-object v2, p0, Lcom/eventgenie/android/utils/managers/feedback/SessionFeedbackAvailabilityCalc;->mFeedbackEmail:Ljava/lang/String;

    invoke-static {v2}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 85
    const/4 v1, 0x1

    .restart local v1    # "res":Z
    goto/16 :goto_0

    .line 87
    .end local v1    # "res":Z
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "res":Z
    goto/16 :goto_0
.end method

.method public setFeedbackEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/eventgenie/android/utils/managers/feedback/SessionFeedbackAvailabilityCalc;->mFeedbackEmail:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setFeedbackFileUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/eventgenie/android/utils/managers/feedback/SessionFeedbackAvailabilityCalc;->mFeedbackFileUrl:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setOfflineFeedback(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/eventgenie/android/utils/managers/feedback/SessionFeedbackAvailabilityCalc;->mOfflineFeedback:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setOverrideFeedbackUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/eventgenie/android/utils/managers/feedback/SessionFeedbackAvailabilityCalc;->mOverrideFeedbackUrl:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setUseExternalFeedback(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/eventgenie/android/utils/managers/feedback/SessionFeedbackAvailabilityCalc;->mUseExternalFeedback:Z

    .line 30
    return-void
.end method
