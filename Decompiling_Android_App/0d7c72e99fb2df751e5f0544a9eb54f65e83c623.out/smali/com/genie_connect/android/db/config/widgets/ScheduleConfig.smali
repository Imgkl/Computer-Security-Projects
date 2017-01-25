.class public Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;
.super Lcom/genie_connect/android/db/config/BaseConfig;
.source "ScheduleConfig.java"


# instance fields
.field private final mAllowToggle:Z

.field private final mCalendarStartEnd:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mDefaultToList:Z

.field private final mEnableFilters:Z

.field private final mEnableSharing:Z

.field private final mExternalFeedbackURL:Ljava/lang/String;

.field private final mFeedbackOkMessage:Ljava/lang/String;

.field private final mFeedbackZipFileId:Ljava/lang/String;

.field private final mFeedbackZipFileMd5:Ljava/lang/String;

.field private mGlobalDayMax:I

.field private mGlobalDayMin:I

.field private final mShowActivityStream:Z

.field private final mUseExternalFeedback:Z


# direct methods
.method protected constructor <init>(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 61
    sget-object v1, Lcom/genie_connect/android/db/config/GenieWidget;->SCHEDULE:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-direct {p0, v1, p1}, Lcom/genie_connect/android/db/config/BaseConfig;-><init>(Lcom/genie_connect/android/db/config/GenieWidget;Lorg/json/JSONObject;)V

    .line 57
    iput v3, p0, Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;->mGlobalDayMin:I

    .line 58
    const/16 v1, 0x17

    iput v1, p0, Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;->mGlobalDayMax:I

    .line 63
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;->mCalendarStartEnd:Ljava/util/Map;

    .line 64
    const-string v1, "enableFilters"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;->mEnableFilters:Z

    .line 65
    const-string v1, "enableSharing"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;->mEnableSharing:Z

    .line 66
    const-string v1, "defaultToList"

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;->mDefaultToList:Z

    .line 67
    const-string v1, "allowToggle"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;->mAllowToggle:Z

    .line 68
    const-string/jumbo v1, "useExternalFeedback"

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;->mUseExternalFeedback:Z

    .line 69
    const-string v1, "feedbackOkMessage"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "null"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;->mFeedbackOkMessage:Ljava/lang/String;

    .line 71
    const-string v1, "feedbackZip"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 72
    .local v0, "feedbackZip":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 73
    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;->mFeedbackZipFileId:Ljava/lang/String;

    .line 74
    const-string v1, "md5Hash"

    invoke-static {v0, v1}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;->mFeedbackZipFileMd5:Ljava/lang/String;

    .line 80
    :goto_0
    iget-boolean v1, p0, Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;->mUseExternalFeedback:Z

    if-eqz v1, :cond_1

    .line 81
    const-string v1, "externalFeedbackURL"

    invoke-static {p1, v1}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;->mExternalFeedbackURL:Ljava/lang/String;

    .line 86
    :goto_1
    const-string v1, "showActivityStream"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;->mShowActivityStream:Z

    .line 87
    return-void

    .line 76
    :cond_0
    iput-object v4, p0, Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;->mFeedbackZipFileId:Ljava/lang/String;

    .line 77
    iput-object v4, p0, Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;->mFeedbackZipFileMd5:Ljava/lang/String;

    goto :goto_0

    .line 83
    :cond_1
    iput-object v4, p0, Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;->mExternalFeedbackURL:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public addEventDayBoundary(Ljava/lang/String;II)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 90
    if-nez p1, :cond_0

    .line 92
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;->mCalendarStartEnd:Ljava/util/Map;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public allowToggle()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;->mAllowToggle:Z

    return v0
.end method

.method public defaultToList()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;->mDefaultToList:Z

    return v0
.end method

.method public enableSharing()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;->mEnableSharing:Z

    return v0
.end method

.method public getDayBoundary(Ljava/lang/String;)Landroid/util/Pair;
    .locals 3
    .param p1, "eventDay"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v1, p0, Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;->mCalendarStartEnd:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 108
    .local v0, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    .line 109
    new-instance v0, Landroid/util/Pair;

    .end local v0    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget v1, p0, Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;->mGlobalDayMin:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;->mGlobalDayMax:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 111
    .restart local v0    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_0
    return-object v0
.end method

.method public getEnableFilters()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;->mEnableFilters:Z

    return v0
.end method

.method public getExternalFeedbackURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;->mExternalFeedbackURL:Ljava/lang/String;

    return-object v0
.end method

.method public getFeedbackOkMessege()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;->mFeedbackOkMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getFeedbackZipFileId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;->mFeedbackZipFileId:Ljava/lang/String;

    return-object v0
.end method

.method public getFeedbackZipFileMd5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;->mFeedbackZipFileMd5:Ljava/lang/String;

    return-object v0
.end method

.method public setGlobalDayBoundary(II)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "finish"    # I

    .prologue
    .line 135
    iput p1, p0, Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;->mGlobalDayMin:I

    .line 136
    iput p2, p0, Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;->mGlobalDayMax:I

    .line 137
    return-void
.end method

.method public showActivityStream()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;->mShowActivityStream:Z

    return v0
.end method

.method public useExternalFeedback()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;->mUseExternalFeedback:Z

    return v0
.end method
