.class public final Lcom/genie_connect/android/db/config/features/MyEventFeatures;
.super Lcom/genie_connect/android/db/config/features/BaseFeatures;
.source "MyEventFeatures.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;
    }
.end annotation


# instance fields
.field private final mActionsAllowed:Lcom/genie_connect/android/db/config/features/ActionsAllowed;

.field private final mAllowClashingSessions:Z

.field private final mEmailMyEventMode:Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;

.field private final mEnableScheduleConflictNotice:Z

.field private final mEnableSessionReminder:Z

.field private final mSessionReminderTime:I


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/AppConfig;)V
    .locals 4
    .param p1, "object"    # Lorg/json/JSONObject;
    .param p2, "config"    # Lcom/genie_connect/android/db/config/AppConfig;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    const-string v0, "features_myevent"

    invoke-direct {p0, v0, p1}, Lcom/genie_connect/android/db/config/features/BaseFeatures;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 54
    if-nez p1, :cond_1

    .line 55
    new-instance v0, Lcom/genie_connect/android/db/config/features/ActionsAllowed;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2}, Lcom/genie_connect/android/db/config/features/ActionsAllowed;-><init>(Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/AppConfig;)V

    iput-object v0, p0, Lcom/genie_connect/android/db/config/features/MyEventFeatures;->mActionsAllowed:Lcom/genie_connect/android/db/config/features/ActionsAllowed;

    .line 56
    invoke-virtual {p2}, Lcom/genie_connect/android/db/config/AppConfig;->getWidgets()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMyEvent()Lcom/genie_connect/android/db/config/widgets/MyEventConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/widgets/MyEventConfig;->isEmailMeMyEventEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;->FULLY_ON:Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;

    :goto_0
    iput-object v0, p0, Lcom/genie_connect/android/db/config/features/MyEventFeatures;->mEmailMyEventMode:Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;

    .line 59
    iput-boolean v3, p0, Lcom/genie_connect/android/db/config/features/MyEventFeatures;->mEnableScheduleConflictNotice:Z

    .line 60
    iput-boolean v2, p0, Lcom/genie_connect/android/db/config/features/MyEventFeatures;->mAllowClashingSessions:Z

    .line 61
    iput-boolean v2, p0, Lcom/genie_connect/android/db/config/features/MyEventFeatures;->mEnableSessionReminder:Z

    .line 62
    iput v2, p0, Lcom/genie_connect/android/db/config/features/MyEventFeatures;->mSessionReminderTime:I

    .line 76
    :goto_1
    return-void

    .line 56
    :cond_0
    sget-object v0, Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;->DISABLED:Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;

    goto :goto_0

    .line 64
    :cond_1
    const-string v0, "emailMeMyEventMode"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;->fromInt(I)Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/db/config/features/MyEventFeatures;->mEmailMyEventMode:Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;

    .line 67
    new-instance v0, Lcom/genie_connect/android/db/config/features/ActionsAllowed;

    const-string v1, "actionsAllowed"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/genie_connect/android/db/config/features/ActionsAllowed;-><init>(Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/AppConfig;)V

    iput-object v0, p0, Lcom/genie_connect/android/db/config/features/MyEventFeatures;->mActionsAllowed:Lcom/genie_connect/android/db/config/features/ActionsAllowed;

    .line 71
    const-string v0, "enableScheduleConflictNotice"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/genie_connect/android/db/config/features/MyEventFeatures;->mEnableScheduleConflictNotice:Z

    .line 72
    const-string v0, "allowClashingSessions"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/genie_connect/android/db/config/features/MyEventFeatures;->mAllowClashingSessions:Z

    .line 73
    const-string v0, "enableSessionReminder"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/genie_connect/android/db/config/features/MyEventFeatures;->mEnableSessionReminder:Z

    .line 74
    const-string v0, "sessionReminderTime"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/genie_connect/android/db/config/features/MyEventFeatures;->mSessionReminderTime:I

    goto :goto_1
.end method


# virtual methods
.method public getAllowedActions()Lcom/genie_connect/android/db/config/features/ActionsAllowed;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/genie_connect/android/db/config/features/MyEventFeatures;->mActionsAllowed:Lcom/genie_connect/android/db/config/features/ActionsAllowed;

    return-object v0
.end method

.method public getEmailMyEventMode()Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/genie_connect/android/db/config/features/MyEventFeatures;->mEmailMyEventMode:Lcom/genie_connect/android/db/config/features/MyEventFeatures$EmailMyEventMode;

    return-object v0
.end method

.method public getPlaceholderAssetId()I
    .locals 1

    .prologue
    .line 125
    sget v0, Lcom/eventgenie/android/R$drawable;->image_placeholder:I

    return v0
.end method

.method public getSessionReminderTime()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/genie_connect/android/db/config/features/MyEventFeatures;->mSessionReminderTime:I

    return v0
.end method

.method public isAllowClashingSessions()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/features/MyEventFeatures;->mAllowClashingSessions:Z

    return v0
.end method

.method public isEnableScheduleConflictNotice()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/features/MyEventFeatures;->mEnableScheduleConflictNotice:Z

    return v0
.end method

.method public isEnableSessionReminder()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/features/MyEventFeatures;->mEnableSessionReminder:Z

    return v0
.end method

.method public showThumbnail()Z
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/features/MyEventFeatures;->getVersion()I

    move-result v0

    if-nez v0, :cond_0

    .line 131
    const/4 v0, 0x0

    .line 133
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/genie_connect/android/db/config/features/BaseFeatures;->showThumbnail()Z

    move-result v0

    goto :goto_0
.end method
