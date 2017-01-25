.class public Lcom/eventgenie/android/utils/managers/feedback/ProductFeedbackAvailabilityCalc;
.super Ljava/lang/Object;
.source "ProductFeedbackAvailabilityCalc.java"


# instance fields
.field private mExternalFeedbackUrl:Ljava/lang/String;

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
    .line 39
    iget-object v2, p0, Lcom/eventgenie/android/utils/managers/feedback/ProductFeedbackAvailabilityCalc;->mOverrideFeedbackUrl:Ljava/lang/String;

    invoke-static {v2}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    .line 43
    .local v0, "hasOverrideFeedbackUrl":Z
    if-eqz v0, :cond_0

    .line 44
    const-string v2, "^ ProductFeedbackAvailability: getIsAvailable() hasOverrideUrl: true"

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 45
    const/4 v1, 0x1

    .line 53
    .local v1, "res":Z
    :goto_0
    return v1

    .line 47
    .end local v1    # "res":Z
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ ProductFeedbackAvailability: isFeedbackAvailable() useExternalProductFeedback:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/eventgenie/android/utils/managers/feedback/ProductFeedbackAvailabilityCalc;->mUseExternalFeedback:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ ProductFeedbackAvailability: isFeedbackAvailable() ExternalProductFeedbackUrl:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/utils/managers/feedback/ProductFeedbackAvailabilityCalc;->mExternalFeedbackUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 50
    iget-boolean v2, p0, Lcom/eventgenie/android/utils/managers/feedback/ProductFeedbackAvailabilityCalc;->mUseExternalFeedback:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/eventgenie/android/utils/managers/feedback/ProductFeedbackAvailabilityCalc;->mExternalFeedbackUrl:Ljava/lang/String;

    invoke-static {v2}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .restart local v1    # "res":Z
    :goto_1
    goto :goto_0

    .end local v1    # "res":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setExternalFeedbackUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/eventgenie/android/utils/managers/feedback/ProductFeedbackAvailabilityCalc;->mExternalFeedbackUrl:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setOverrideFeedbackUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/eventgenie/android/utils/managers/feedback/ProductFeedbackAvailabilityCalc;->mOverrideFeedbackUrl:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setUseExternalFeedback(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/eventgenie/android/utils/managers/feedback/ProductFeedbackAvailabilityCalc;->mUseExternalFeedback:Z

    .line 33
    return-void
.end method
