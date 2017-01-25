.class public Lcom/genie_connect/android/db/config/features/ScheduleFeatures;
.super Lcom/genie_connect/android/db/config/features/BaseFeatures;
.source "ScheduleFeatures.java"


# instance fields
.field private final mWaitlistEnabled:Z

.field private surveyId:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    const/4 v4, 0x0

    .line 16
    const-string v1, "features_schedule"

    invoke-direct {p0, v1, p1}, Lcom/genie_connect/android/db/config/features/BaseFeatures;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 17
    if-nez p1, :cond_0

    .line 18
    iput-boolean v4, p0, Lcom/genie_connect/android/db/config/features/ScheduleFeatures;->mWaitlistEnabled:Z

    .line 25
    :goto_0
    return-void

    .line 21
    :cond_0
    const-string v1, "survey"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 22
    .local v0, "surveyObject":Lorg/json/JSONObject;
    if-nez v0, :cond_1

    const/4 v1, 0x0

    :goto_1
    iput-object v1, p0, Lcom/genie_connect/android/db/config/features/ScheduleFeatures;->surveyId:Ljava/lang/Long;

    .line 24
    const-string/jumbo v1, "waitlistEnabled"

    invoke-virtual {p1, v1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/genie_connect/android/db/config/features/ScheduleFeatures;->mWaitlistEnabled:Z

    goto :goto_0

    .line 22
    :cond_1
    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_1
.end method


# virtual methods
.method public getPlaceholderAssetId()I
    .locals 1

    .prologue
    .line 29
    sget v0, Lcom/eventgenie/android/R$drawable;->image_placeholder:I

    return v0
.end method

.method public getSurveyId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/genie_connect/android/db/config/features/ScheduleFeatures;->surveyId:Ljava/lang/Long;

    return-object v0
.end method

.method public isWaitlistEnabled()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/features/ScheduleFeatures;->mWaitlistEnabled:Z

    return v0
.end method
